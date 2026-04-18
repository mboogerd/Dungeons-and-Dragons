# AGENTS.md

## Scope
This file applies to the entire Dungeons & Dragons Obsidian vault unless a deeper `AGENTS.md` overrides it.

## Project Overview
This is not a software repository. It is a living Obsidian vault for D&D campaign material, worldbuilding, session notes, prep notes, player references, quest tracking, NPCs, factions, items, locations, images, and handout-style lore.

The main job of an agent in this vault is to improve clarity, structure, discoverability, and continuity without damaging canon or flattening the author's voice.

## How This Vault Is Actually Maintained
This vault is maintained incrementally, not through one rigid template system.

Common patterns in the vault:
- Some notes are polished summaries. Others are raw capture notes, prep notes, or one-paragraph stubs.
- Session-derived facts often appear first in rough notes, then later get distilled into person, location, faction, quest, or season summary notes.
- A sparse note is often intentional. It may exist mainly to support linking, future expansion, or quick recall during play.
- Different campaign folders use different levels of structure and polish.
- Some notes include image embeds, galleries, handout text, mechanics, or long-form worldbuilding. These are part of the vault's real working style, not noise to clean away.
- File naming is pragmatic rather than rigid: campaign folders, date-based notes, natural-language titles, and in-universe entity names all coexist.

Do not try to normalize the vault into one uniform format unless the user explicitly asks.

## Core Principles
- Treat existing notes as campaign canon unless the user explicitly asks for revision, retcon, or cleanup.
- Prefer small, targeted edits over broad rewrites.
- Preserve wiki-link style such as `[[Character Name]]`, `[[Location]]`, and `[[Alias|Display Text]]`.
- Match the local writing style of the note you are editing. This vault mixes Dutch and English; do not normalize language across the vault unless asked.
- Do not invent lore, motivations, timelines, or relationships and present them as fact. If something is uncertain, mark it clearly or ask.
- Do not delete or rename notes in bulk unless the user explicitly asks.
- When reconciling conflicting notes, surface the inconsistency instead of silently choosing one version.
- Preserve useful roughness. A note can be unfinished and still be valuable.

## Structure And Formatting Conventions
There is no strict vault-wide schema. Follow the local pattern of the note or folder.

Observed conventions:
- Frontmatter is common but not mandatory.
- Frontmatter is intentionally loose. You may see `alias` or `aliases`, `tags: person`, or multi-line tag lists.
- Some notes have only a title and bullets. Some have multiple sections and polished prose. Some have no headings at all.
- Images and embeds such as `![[image.png]]` and gallery blocks are normal.
- Markdown tables may appear in character sheets or mechanics-heavy notes.

Guidance:
- Preserve existing frontmatter style in a note unless there is a concrete reason to change it.
- If you add frontmatter to a new entity note, keep it minimal.
- Do not convert every note to the same heading structure.
- If improving a rough note, prefer adding structure around the content rather than replacing it with a cleaner but thinner rewrite.

## Common Folder Patterns
Top-level campaign folders may contain subfolders like:
- `People`
- `Locations`
- `Items`
- `Organisations`
- `Deities`
- `Events`
- `Quests`
- `Sessions`
- `Symbols`

Use the existing folder structure instead of creating new categories unless there is a clear need.

## Note Creation Guidelines
When creating a new entity note, prefer the existing templates in `Templates/` when they fit, but do not force them onto note types that are currently handled more loosely.

Current template patterns:
- `Templates/Person.md` -> `tags: person`
- `Templates/Location.md` -> `tags: location`
- `Templates/Organization.md` -> `tags: organization`
- `Templates/Item.md` -> `tags: item`

Guidelines:
- Use the canonical in-vault name as the note title.
- Add frontmatter tags when the note type matches an existing template and local usage supports it.
- Add `aliases` only when there is a real in-play shorthand, alternate spelling, or hidden identity already used elsewhere.
- Keep new notes concise unless the user asks for a full expansion.
- Prefer linking to existing notes over duplicating context.
- A strong stub is acceptable when the source material is still thin.

## Session And Lore Handling
- Session notes are often the most granular record of what happened at the table.
- Summary notes should synthesize session notes, not contradict them.
- Prep or operational notes may be rough, tactical, and incomplete. Preserve that usefulness.
- Active quest notes may be brief and practical; do not over-formalize them unless asked.
- If you create a summary from multiple notes, preserve chronology and clearly separate confirmed facts from open questions.
- Do not erase play texture such as plans, rolls, uncertainties, or tactical observations if those details are still useful.

## Link Maintenance
Cross-linking is one of the vault's main maintenance patterns.

Good link work includes:
- adding links for important existing entities mentioned in a note
- linking a new note back to the campaign, quest, or session that introduced it
- using aliases or display text when that improves readability

Avoid overlinking common words or creating noisy links that do not help navigation.

## Good Agent Tasks In This Vault
- Summarize campaign arcs or recent sessions.
- Create or improve cross-links between related notes.
- Turn rough notes into cleaner summaries without changing meaning.
- Identify missing stubs, orphan notes, or inconsistent naming.
- Build character, faction, location, or quest overviews from existing material.
- Draft new notes from user-provided campaign events.
- Expand a sparse note only with facts already supported elsewhere in the vault.

## Change Safety
Before making substantial edits to lore-heavy notes:
- Read the most relevant surrounding notes first.
- Preserve unresolved mysteries unless the user asks for theories or development.
- Avoid replacing a detailed note with a cleaner but less informative version.
- Preserve images, embeds, and handout-style formatting unless the user asks for cleanup.
- If a note contains both rough bullets and polished sections, assume both are intentional unless there is a clear duplication problem.

## Output Expectations
When asked to explore or review part of the vault:
- Start by identifying the important notes and folder structure.
- Summarize the current state clearly.
- Call out gaps, stubs, or inconsistencies when useful.
- Keep findings grounded in the notes, not assumptions.
