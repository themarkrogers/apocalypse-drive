#!/bin/bash

set -eu

# CHANGE THIS to the directory where you used `` & ``
SOURCE_DIR="/hoard/media/Local Hoard/documents/Code"
BACKUP_SRC_DIR="/hoard/media"

# ============================== Step 0: Preparation ==============================
# Save original directory, since this script will use `cd`
ORIG_DIR=`pwd`

# Init vars
SHOULD_DOWNLOAD_SOURCE=false

# Parse arguments passed into this script
for arg in "$@"
do
    case $arg in
        --download-source=true)
        SHOULD_DOWNLOAD_SOURCE=true
        shift # Remove the argument from the list
        ;;
        --download-source=false)
        SHOULD_DOWNLOAD_SOURCE=false
        shift # Remove the argument from the list
        ;;
    esac
done

# Download source code if found argument: --download-source=true
if [ "$SHOULD_DOWNLOAD_SOURCE" = true ]; then
	cd "$SOURCE_DIR"
	git clone https://github.com/gcc-mirror/gcc.git
	git clone https://github.com/LINUX_KERNAL
	cd "$ORIG_DIR"
fi

if [[ "$SOURCE_DIR" == *" "* ]]; then
    DOES_SRC_DIR_HAVE_SPACE=true
else
    DOES_SRC_DIR_HAVE_SPACE=false
fi

if [[ "$DOES_SRC_DIR_HAVE_SPACE" == true && "$BACKUP_SRC_DIR" == *" "* ]]; then
    echo "BACKUP_SRC_DIR cannot contain spaces. Please modify and rerun."
    exit 1
fi

# ============================== Step 1: Make GCC ==============================
# Prerequisites: https://gcc.gnu.org/install/prerequisites.html
#     sudo apt-get install -y gcc build-essential




# SEE OTHER DOC: Make GCC.md





GCC_SOURCE_DIR="$SOURCE_DIR/gcc"
GCC_OBJECT_DIR="$SOURCE_DIR/gcc_build_artifacts"

mkdir -p "$GCC_OBJECT_DIR"
cd "$GCC_OBJECT_DIR"

if [ "$DOES_SRC_DIR_HAVE_SPACE" = false ]; then
	"$GCC_SOURCE_DIR"/configure --host=x86_64-pc-linux-gnu
else
	mkdir "$BACKUP_SRC_DIR/tmp_code"
	ln -s "$SOURCE_DIR/gcc" "$BACKUP_SRC_DIR/tmp_code"
	$BACKUP_SRC_DIR/configure --host=x86_64-pc-linux-gnu
	rm -rf "$BACKUP_SRC_DIR/tmp_code"
fi

cd "$GCC_SOURCE_DIR"
bash compile



# ============================== Step N: Clean Up ==============================
cd "$ORIG_DIR"
