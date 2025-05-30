# Non-Text Resources for RAG-Enhanced LLM Advice

LLMs can use metadata, summaries, and transcripts of video/audio content, and index technical 
diagrams and 3D models to support decision-making and skill-teaching in emergencies and societal 
collapse scenarios.

---

## Video & Audio Resources

Video Resources
* FEMA and Red Cross disaster preparedness videos.
* YouTube channels (like Practical Preppers, Canadian Prepper)
  * Ensure video transcripts are generated for LLM parsing.
* Historical disaster footage (for real-world lessons learned).

### Audio Resources
* Podcasts on survival and disaster response (e.g., The Survival Podcast).
* Ham radio training and emergency comms audio recordings.
* Structured field interviews (e.g., interviews with disaster survivors, first responders).

---

## Schematics, Recipes, Procedures, and More

Schematics & Blueprints
* Off-grid power systems: solar, wind, micro-hydro, bicycle generators.
* Water purification & sanitation: slow-sand filters, composting toilets.
* Basic medical devices: DIY IV drip sets, tourniquets, splinting devices.
* Shelter construction: earthbag houses, tarps, snow caves, underground bunkers.

Recipes & Procedures
* Emergency rations: hard tack, pemmican, sprouted grains.
* Processing local edible plants: e.g., acorn leaching, cattail roots.
* Herbal medicine for emergencies: tinctures, infusions, poultices.

Step-by-Step Field Instructions
* Trauma care: splinting, field suturing, wound irrigation.
* Improvised tools: rocket stoves, field forges, water filters.
* Emergency communications: Morse code basics, mesh networks, field telephony.

3D Models (Optional)
* If LLM infrastructure supports 3D model indexing (e.g., `.stl`, `.obj`), include:
  * DIY wind turbines.
  * Rocket stoves & rocket mass heaters.
  * Mechanical tools (like hand-crank drills, water pumps).
* LLMs cannot interpret 3D models directly but can retrieve them for reference.

---

### Organizational & Integration Strategy

Ensure consistent file naming and metadata for easy LLM indexing 
* e.g., `[Category]_[Title]_[Version].pdf`

Link schematics/3D models to related text resources 
* a rocket stove schematic linked to the "Heating & Cooking in Emergencies" guide

LLM queries for "show me diagrams" can return indexed schematic links for human review and use.

---

# Video & Audio Resources

LLMs can handle video/audio metadata, summaries, and transcripts (not the actual video itself), so:

## Video resources:

* FEMA and Red Cross disaster preparedness videos
* YouTube channels (like Practical Preppers, Canadian Prepper)
  * With transcripts
* Historical footage of real disaster response (often has lessons learned)

## Audio resources:

* Podcasts on survival, disaster response (e.g., "The Survival Podcast")
* Radio training guides for ham radio communications
* Field recordings (if structured)
  * e.g., interviews with disaster survivors

Transcripts are essential to make these video/audio resources searchable by an LLM.

# Schematics, Recipes, Procedures, and More

## Schematics & Blueprints

*  Off-grid power systems (solar, wind, micro-hydro).
*  Simple water purification and sanitation systems.
*  Basic medical devices (like DIY water filters, IV drip sets).
*  Shelter construction plans (earthbag, tarps, etc.).

## Recipes & Procedures

*  Emergency rations from local ingredients (hard tack, pemmican, sprouted grains).
*  Wild edible plant processing.
*  Herbal medicine recipes for emergencies.

## Step-by-Step Field Instructions

*  Trauma management (splinting, wound care).
*  Improvised tools and cooking gear.
*  Emergency communications (Morse code, mesh networks).

## 3D Models (Optional)

*  If your LLM can index 3D models (like .stl, .obj), it can provide rather than interpret 3D structures.
*  Think of it like an indexed library of field deployable designs (e.g., DIY wind turbines, rocket stoves).

