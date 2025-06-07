# GCC infrastructure

Get the GCC infrastructure:
* `ftp://gcc.gnu.org/pub/gcc/infrastructure/`

Put downloads in a temp directory (you can use whatever directory you want).
* `/opt/downloads`

Build the infrastructure in a temp directory that is different than the downloads directory or its 
subdirectories:
* `/tmp/gcc`

Configure the infrastructure using static libraries like this:
* ``./configure --disable-shared --enable-static --prefix=/tmp/gcc`

The --disable-shared flag may be worth a closer look depending on your needs. I use --disable-shared
because I am building static code only, and I want to make sure that I don't build any shared code. 
My need is to move the resulting GCC around my drives easily, so I want all static code, and I do 
not want any shared code. If you prefer shared code, omit the --disable-shared flag.

# Versions

When you run any of the commands in this answer, be sure to update the commands to use the current 
GCC version number that matches your needs. The commands in this answer are for GCC 4.6.2.

Note that the GCC documentation says: "While any sufficiently new version of required tools usually 
work, library requirements are generally stricter. Newer versions may work in some cases, but it's 
safer to use the exact versions documented."

# GMP

GMP is the GNU Multiple Precision Arithmetic Library.
```
wget ftp://gcc.gnu.org/pub/gcc/infrastructure/gmp-4.3.2.tar.bz2
bunzip2 gmp-4.3.2.tar.bz2
tar xvf gmp-4.3.2.tar
cd gmp-4.3.2
./configure --disable-shared --enable-static --prefix=/tmp/gcc
make && make check && make install
```

# MPFR

MPFR is the GNU Multiple-precision floating-point rounding library. It depends on GMP.
```
wget ftp://gcc.gnu.org/pub/gcc/infrastructure/mpfr-2.4.2.tar.bz2
bunzip2 mpfr-2.4.2.tar.bz2
tar xvf mpfr-2.4.2.tar
cd mpfr-2.4.2
./configure --disable-shared --enable-static --prefix=/tmp/gcc --with-gmp=/tmp/gcc
make && make check && make install
```

# MPC

MPC is the GNU Multiple-precision C library. It depends on GMP and MPFR.
```
wget ftp://gcc.gnu.org/pub/gcc/infrastructure/mpc-0.8.1.tar.gz
tar zxvf mpc-0.8.1.tar.gz
cd mpc-0.8.1
./configure --disable-shared --enable-static --prefix=/tmp/gcc --with-gmp=/tmp/gcc --with-mpfr=/tmp/gcc
make && make check && make install
```

# ELF

ELF stands for Executable and Linkable Format. This library provides architecture-independent size 
and endian support.
```
wget http://www.mr511.de/software/libelf-0.8.13.tar.gz
tar zxvf libelf-0.8.13.tar.gz
cd libelf-0.8.13
./configure --disable-shared --enable-static --prefix=/tmp/gcc
make && make check && make install
```

# GCC

GCC is the GNU Compiler Collection. It depends on GMP, MPFR, MPC, and ELF.
```
wget http://www.netgull.com/gcc/releases/gcc-4.6.2/gcc-4.6.2.tar.gz
tar zxvf gcc-4.6.2.tar.gz
```

Build gcc in a scratch directory on the same mount point. (Building it within /tmp would trigger 
cross compile host issues)
```
mkdir -p /opt/downloads/gcc-4.6.2-scratch
cd /opt/downloads/gcc-4.6.2-scratch
```

The configure command and its flags must be all on one command line (this post shows them on 
separate lines just because of web page width).

Note: We use the full path to configure and do not set library path environment variables. We choose
to disable bootstrap and disable shared libraries because we don't want them (typical users may want
both), and to use posix threads and to flags that are defaults because we want them (typical users 
may want to use other threads or skip default flags). YMMV and read about the flags here
```
/opt/downloads/gcc-4.6.2/configure
  --disable-shared
  --disable-bootstrap
  --disable-libstdcxx-pch
  --enable-languages=all
  --enable-libgomp
  --enable-lto
  --enable-threads=posix
  --enable-tls
  --with-gmp=/tmp/gcc
  --with-mpfr=/tmp/gcc
  --with-mpc=/tmp/gcc
  --with-libelf=/tmp/gcc
  --with-fpmath=sse
make && make install
```

This page is great for GCC installation info, how to build it, various flags, and more:

http://www.acsu.buffalo.edu/~charngda/cc_build.html

# Updates

The ppl libraries can be used for memory optimizations: see bugseng.com/products/ppl/Download

You could run ./contrib/download_prerequisites from the gcc source directory.

