# Quartz Development Plan

## Goal

Use Quartz to publish this Obsidian vault in a way that strengthens the vault's real structure: folder hierarchy, dense cross-linking, campaign hubs, and mixed rough/polished notes.

This plan focuses first on low-hanging fruit: Quartz features that can be enabled or arranged through configuration, without custom plugins or component development.

## Findings

### Vault-wide patterns

- This vault is link-first, not schema-first.
- Sparse notes are often intentional canon anchors, not unfinished work.
- Folder structure is meaningful and should stay visible in the published site.
- Notes mix polished summaries, operational prep, session logs, lore stubs, embeds, and handout-style material.
- Frontmatter exists, but is intentionally loose: `alias` and `aliases` both occur, and tags are helpful but not the primary navigation system.

### Enter the Dungeon patterns

- `Enter the Dungeon/` is one of the strongest existing campaign structures in the vault.
- It already has a clear note hierarchy:
  - session notes as source-of-truth
  - season summaries as curated synthesis
  - entity and quest notes as canon anchors and reference pages
- The folder structure itself is highly useful: `Sessions/`, `Quests/`, `People/`, `Organisations/`, `Locations/`, `Items/`, `Events/`, `Deities/`, `Symbols/`.
- Session notes are rough, tactical, and chronological.
- Season summaries are polished and explanatory.
- Character and lore pages often rely on backlinks, aliases, and dense wiki-linking for discoverability.
- Media is significant: image embeds, image tables, and at least some Obsidian-specific gallery usage appear in the campaign.

## Publishing Principles

Quartz should amplify the vault's existing strengths rather than flattening it into a generic wiki.

Priorities for the published site:

1. Folder hierarchy
2. Link context
3. Searchability
4. Curated campaign hubs
5. Media presentation
6. Tags as secondary metadata

## Best-Fit Quartz Features

These features align especially well with the current vault structure.

### Explorer

- High value because folder paths already carry meaning.
- Especially important for `Locations/` and `Sessions/`, where nested structure is part of how notes are understood.

### Breadcrumbs

- Strong fit for deep notes like city, region, and campaign substructure.
- Helps preserve the sense of place created by nested folders.

### Search

- Essential for a proper-noun-heavy vault.
- Likely one of the main entry points for people, places, items, factions, and recurring plot threads.

### Backlinks

- One of the best fits in the entire vault.
- Sparse notes become much more useful when readers can immediately see what refers to them.

### Popover previews

- Strong fit for dense wiki-linking.
- Lets readers inspect connected notes without repeatedly losing context.

### Folder pages

- Good fit for campaign areas like `People`, `Locations`, `Organisations`, `Items`, and each `Season X` folder.
- Supports browsing without requiring the vault to become tag-driven.

### Table of contents

- Helpful for long-form summary notes and character pages.
- Less important for stubs, but valuable on season summaries.

### Local graph / contextual graph

- Useful as a side-context tool for highly connected notes.
- Best used as supporting navigation, not as the homepage centerpiece.

## Configuration-First Proposal

### Phase 1: Low-Hanging Fruit

This phase should require only Quartz configuration and layout choices.

#### 1. Make folder navigation first-class

- Keep `Explorer` enabled and visible in the main left navigation.
- Keep `Breadcrumbs` enabled on note pages.
- Keep `FolderPage()` enabled so folders act as browseable sections.

Why:

- The vault is already organized in meaningful campaign and entity folders.
- This is the most natural public navigation model for the vault.

#### 2. Lean into link-based context

- Keep `Backlinks` enabled on note pages.
- Keep `enablePopovers: true`.
- Keep `CrawlLinks` and `AliasRedirects()` enabled.

Why:

- Dense wiki-linking is one of the vault's main maintenance patterns.
- Link previews and backlinks make sparse anchor notes much more valuable.
- Alias handling matters because the vault uses both `alias` and `aliases`.

#### 3. Preserve Obsidian-native authoring

- Keep `ObsidianFlavoredMarkdown()` enabled.
- Keep callout support intact.
- Keep asset handling enabled via `Assets()` and `Static()`.

Why:

- The vault uses wiki-links, embeds, callouts, and image-heavy notes.
- Quartz should render the vault's existing authoring style as faithfully as possible.

#### 4. Prioritize search over tags

- Keep `Search()` prominent in the layout.
- Keep `TagPage()` available, but do not make tags the main browse model.
- Do not design the homepage or sidebars around tags.

Why:

- Tags are useful, but folder structure and links are the true primary structure.
- Search is more aligned with how readers will look up characters, places, factions, and artifacts.

#### 5. Favor summaries and hubs for entry points

- Use existing hub notes as primary landing points where possible.
- In `Enter the Dungeon`, favor:
  - `Sessions/Sessions.md`
  - season summary notes
  - campaign overview or current-arc notes

Why:

- These notes already do the work of orienting a reader.
- They are better entry points than raw tag indexes or recent-note lists.

#### 6. Keep the graph secondary

- Keep the graph in the sidebar if it reads well in practice.
- Do not make graph navigation the primary top-level experience.

Why:

- The graph is useful here because the vault is well-linked.
- But the campaign is easier to understand through curated notes, folders, and summaries.

#### 7. Be careful with dates

- Do not lean too heavily on date-based discovery or "recent notes" patterns.
- Avoid making `ContentMeta` too prominent if it suggests a false chronology.

Why:

- Modified dates are editorial dates, not campaign order.
- Session numbering and season structure are more meaningful than filesystem recency.

#### 8. Set the site identity correctly

- Set `pageTitle` intentionally for the vault.
- Set `baseUrl` correctly for GitHub Pages deployment.
- Set `locale` to match the vault's intended audience.
- Keep `ignorePatterns` strict enough to exclude `.obsidian`, `.github`, `.quartz`, system files, and operational files not meant for publishing.

Why:

- This is simple configuration work with immediate impact on polish and correctness.

## Suggested Quartz Defaults For This Vault

These are the defaults the published site should optimize for in phase 1.

- Left sidebar:
  - site title
  - search
  - dark mode toggle
  - explorer
- Top of note pages:
  - breadcrumbs
  - article title
- Right sidebar:
  - table of contents for longer notes
  - backlinks
  - graph only if it remains useful and not visually noisy

This favors orientation and recall over spectacle.

## Features To Defer Until Later

These are good ideas, but they are not phase-1 configuration work.

### Custom or code-driven work

- Session previous/next navigation within a season
- Better rendering for Obsidian `gallery` blocks
- Responsive handling for image-heavy tables on character pages
- Path-aware styling differences between session logs and lore/reference notes
- Campaign-specific landing page components
- Any automation that derives chronology from session naming or campaign structure

### Content curation work

- Creating or refining root-level landing notes
- Creating campaign landing notes for each major campaign
- Tightening hub notes so they serve as better public entry points

## Recommended First Implementation Pass

When moving from planning to implementation, the first pass should do only this:

1. Configure Quartz site identity correctly.
2. Keep Obsidian-flavored markdown support and asset handling intact.
3. Use Explorer, Breadcrumbs, Search, Backlinks, Popovers, Folder pages, and TOC as the core experience.
4. Keep tags and graph secondary.
5. Avoid emphasizing dates as the main organizational signal.

If that baseline works well, phase 2 can focus on campaign-specific polish rather than foundational navigation.
