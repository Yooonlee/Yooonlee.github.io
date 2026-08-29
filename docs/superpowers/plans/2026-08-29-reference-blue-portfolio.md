# Reference-Faithful Blue Portfolio Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Replace the current homepage with a close blue-toned adaptation of `daeunni.github.io` while preserving all existing content and adding the EMNLP 2026 Main Conference paper.

**Architecture:** Keep the existing Jekyll build and default layout, but add homepage front matter that hides the global masthead and supplies a page-scoped body class. Rebuild the homepage markup as a fixed profile header plus content section and replace the oversized portfolio SCSS block with reference-faithful, page-scoped styles.

**Tech Stack:** Jekyll 3.9, Liquid, HTML, SCSS, existing Font Awesome assets

**Spec:** `docs/superpowers/specs/2026-08-29-minimal-blue-portfolio-design.md`

## Global Constraints

- Preserve all existing About, Research, News, Publications, Education, Experience, and Honors content.
- Match the reference site's structure, type scale, spacing, timeline, and publication rows closely.
- Replace pink and green accent tones with blue and cyan-blue equivalents.
- Add no package dependencies or JavaScript frameworks.
- Do not manually edit generated `_site` files.
- Include the new EMNLP 2026 paper in both News and Publications with the supplied OpenReview URL and complete author list.

---

### Task 1: Scope the Homepage Layout

**Files:**
- Modify: `_layouts/default.html`
- Modify: `_pages/about.md`

**Interfaces:**
- Consumes: Jekyll front matter values `hide_masthead` and `body_class`.
- Produces: `<body class="minimal-profile-page">` and a `.reference-wrapper` containing `.profile-header` and `.profile-content`.

- [ ] **Step 1: Add page-scoped layout switches**

Add the body class output and wrap the masthead include in `{% unless page.hide_masthead %}` so other pages retain the current layout.

- [ ] **Step 2: Replace the homepage markup**

Set `hide_masthead: true` and `body_class: minimal-profile-page`. Build the reference-shaped profile header and content sections with semantic headings and retained copy.

- [ ] **Step 3: Add publication and news content**

Add the EMNLP 2026 news entry and publication row with the supplied title, all nine authors, highlighted Kyeongyoon Lee, venue text, and OpenReview button.

- [ ] **Step 4: Verify content in source**

Run:

```bash
grep -F "Spatio-Temporal Audio Language Modeling for Dynamic Sound Sources" _pages/about.md
grep -F "Oh Hyun-Bin, Kazuki Shimada, Yuhta Takida" _pages/about.md
grep -F "https://openreview.net/forum?id=zUbZRx1YeP" _pages/about.md
```

Expected: all three commands print matching lines.

### Task 2: Match the Reference Visual System in Blue

**Files:**
- Modify: `_includes/head.html`
- Modify: `assets/css/main.scss`

**Interfaces:**
- Consumes: `.minimal-profile-page`, `.reference-wrapper`, `.profile-header`, `.profile-content`, `.about-card`, `.news-timeline`, and `.publication-entry` from Task 1.
- Produces: the 960/232/670 desktop layout, reference typography, responsive stacking, blue timeline, and publication media rows.

- [ ] **Step 1: Add the reference font**

Load Raleway weights 400, 500, 600, and 700 in `_includes/head.html` with preconnect hints.

- [ ] **Step 2: Remove the oversized portfolio styles**

Delete the `Blue research portfolio` SCSS block so the old hero, orbit, large card, and oversized spacing rules cannot affect the new layout.

- [ ] **Step 3: Add page-scoped reference styles**

Implement the exact desktop dimensions and compact type scale, mapping reference pink tones to `#285a9f` and `#4a7dc0`, the green companion tone to `#62b6cb`, and highlights to pale blue/cyan surfaces.

- [ ] **Step 4: Add responsive behavior**

At 960px, return the fixed profile header to document flow. At 480px, stack publication teaser and text content, retain readable spacing, and prevent horizontal overflow.

- [ ] **Step 5: Run SCSS syntax/build validation**

Run:

```bash
jekyll build --trace
```

Expected: exit code 0 and generated `_site/index.html` plus `_site/assets/css/main.css`.

### Task 3: Verify the Rendered Homepage

**Files:**
- Verify: `_site/index.html`
- Verify: `_site/assets/css/main.css`

**Interfaces:**
- Consumes: generated site output from Tasks 1 and 2.
- Produces: build and responsive visual evidence for the final report.

- [ ] **Step 1: Verify generated content**

Run a Python assertion script that checks the generated HTML for all section headings, the three international paper titles, the domestic paper title, the EMNLP venue, and the OpenReview URL.

- [ ] **Step 2: Serve the built site locally**

Run `python3 -m http.server 4000 --directory _site` and use an installed headless browser to capture desktop and mobile screenshots.

- [ ] **Step 3: Inspect responsive screenshots**

Confirm the desktop screenshot uses a fixed left profile and right content column, the mobile screenshot stacks them, publication rows remain legible, and neither viewport has horizontal overflow.

- [ ] **Step 4: Review repository diff**

Run `git diff --check`, `git diff --stat`, and `git status --short`. Confirm only the design/plan, default layout, homepage, head include, and SCSS source changed.

- [ ] **Step 5: Commit the implementation**

```bash
git add docs/superpowers/specs/2026-08-29-minimal-blue-portfolio-design.md \
  docs/superpowers/plans/2026-08-29-reference-blue-portfolio.md \
  _layouts/default.html _pages/about.md _includes/head.html assets/css/main.scss
git commit -m "Redesign homepage after minimal blue reference"
```
