# Apocalypse Drive Plan

The Apocalypse Drive is a curated knowledge archive and retrieval system designed to support human 
survival, recovery, and flourishing in the aftermath of disaster, collapse, or prolonged crisis. Its
goal is not only to ensure physical survival but to preserve wisdom, dignity, and meaning. It 
gathers a trove of resources optimized for use with large language models (LLMs) in retrieval-
augmented generation (RAG) systems, enabling expert-level guidance in rebuilding infrastructure, 
restoring communication, and reviving society—including efforts to reconstruct the internet and 
other foundational systems.

Additionally, the goals are to preserve the source code, schematics, manuals, guides, and hardware needed to do the following:
* Read a document from a flash drive and print it onto paper.
* Recreate a small home network (i.e. the linux kernel, a debian OS, a web server, a ubuntu OS, a client computer, a web browser, a router, a small network, and any requisite compilers or programs).
* Create a radio tower and communicate with it via a handheld radio.
* Create a Ubuntu ISO file that can be used to install Ubuntu onto fresh hardware via a thumbdrive.

## Notes

Collections of knowledge trove:
* Basic education in a very broad array of topics
* Resources that give advice on problems
* Resources that teach specific skills

Use an LLM to augment the initial drafts to my lists:
* Ask an LLM: What *additional* information would be most useful in these scenarios
* Tag documents and topics using LLM-assisted metadata enrichment
* What additional resources, data types, or scenario-specific knowledge would be most useful for an LLM to provide expert advice during/after disasters and societal collapse?

Packaging Each major version of the list of materials
* Uploading it as a torrent?
* Create a microfilm reel


# Other data to hoard

* All of the English wikipedia?
* Movies & TV?


# Organizing the Content

## Finding & Indexing Documents

Lookup / Discovery
* Library classification systems
  * Dewey Decimal System (simple, fast adoption)
  * Library of Congress (more granular & precise)
* HTML index page for easy browsing (like a digital card catalog)

Tagging
* Tag enrichment prompts:
  * "Generate tags including scenario, skill level, required tools, prerequisites, and potential substitutes."
* Chunking strategy:
  * Prefer hierarchical semantic chunking by skill or decision phase (e.g., recognize → assess → act)
* Linked document sets:
  * Cross-reference multiple formats per topic (e.g., Markdown summary + PDF how-to + SVG schematic)

Search & Retrieval
* Topic-based search
  * Top-level categories: Survival, Medicine, Engineering, Law, etc
  * Subcategories by skill / technology / scenario
* Scenario-based search
  * Decision trees and troubleshooting flowcharts (e.g., "I'm cold, what should I do?")
* LLM-driven tagging
  * Use the LLM to suggest additional tags and refine them


# Storing the data

### File Formats & Presentation for RAG

* OCR'ed PDFs (high-quality, tables readable)
* Video & audio: resources → transcripts (YouTube, field recordings, podcasts)
* 3D models (`.stl`, `.obj`), technical diagrams, schematics, and blueprints (as reference assets, not LLM-interpretable in raw 3D format)
* Decision trees and scenario-based flowcharts for troubleshooting and triage

* `.svg`: schematics Lightweight, scalable diagrams; easy to parse or render in-browser or via e-reader
* `.epub`: Efficient storage of eBooks with metadata & table of contents
* Diagrmas for teaching complex systems (agroecology, electronics, power grids)
