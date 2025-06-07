# Apocalypse Drive Plan

Gather a trove of resources that would be good inputs for an LLM as RAGs to enable it to provide
expert-level, useful advice during and after emergencies, disasters, national catastrophes,
and/or societal collapse

Two collections of info:
* resources that give advice on problems
* resources that teach specific skills

Use an LLM to augment the initial drafts to my lists:
* Ask an LLM: What *additional* information would be most useful in these scenarios
* Tag documents and topics using LLM-assisted metadata enrichment

Consider uploading it as a torrent after a good v1 is made
* Basic education in a very broad array of topics

# Content to Hoard

See doc: `resource-list.md`

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

# Next Steps

* Create a starter spreadsheet (Title, Author/Source, Category, Priority, Skill Level, File Type, URL/location)
* Develop a file naming convention for clear retrieval and consistency
* Determine preferred formats (PDF/A for archival, Markdown for easy updates)
* Build a test RAG environment with a few documents to test retrieval and response quality
* If needed, structure a database (Postgres, SQLite, etc.) to house metadata and link to files
