# Minimal Blue Portfolio Redesign

## Goal

Redesign Kyeongyoon Lee's GitHub Pages homepage so it feels as calm and readable as the reference site at `https://daeunni.github.io/`, while retaining the site's existing content and using a blue visual identity instead of pink.

The redesign is successful when the page presents the same research, publication, background, and award information in a noticeably smaller and less decorative layout, and when the new EMNLP 2026 paper is clearly visible in both News and Publications.

## Scope

### Included

- Replace the current oversized hero and card-heavy homepage with a compact two-column academic profile layout.
- Preserve the existing About, Research, News, Publications, Education, Experience, and Honors content.
- Add the EMNLP 2026 Main Conference paper:
  - **Spatio-Temporal Audio Language Modeling for Dynamic Sound Sources**
  - Oh Hyun-Bin, Kazuki Shimada, Yuhta Takida, Kim Sung-Bin, Toshimitsu Uesaka, Takashi Shibuya, **Kyeongyoon Lee**, Tae-Hyun Oh, Yuki Mitsufuji
  - Link: `https://openreview.net/forum?id=zUbZRx1YeP`
- Add an EMNLP 2026 acceptance item to News.
- Keep existing publication links and available teaser images.
- Support desktop, tablet, and mobile layouts.

### Excluded

- Rewriting biographical or research content beyond minor copy edits needed for compact presentation.
- Adding new dependencies, JavaScript frameworks, CMS features, analytics, or publishing automation.
- Creating a new teaser image for the EMNLP paper when no official image is already available in the repository.
- Changing the Jekyll deployment model.

## Information Architecture

The homepage uses a centered container with two primary columns on desktop:

1. **Profile rail**
   - Compact portrait
   - Name and current role
   - Location
   - Email and GitHub links
   - Small navigation links to the main sections

2. **Content column**
   - About
   - Research Direction
   - News
   - Publications
   - Background, including Education and Experience
   - Honors and Awards

On narrow screens, the profile rail becomes a horizontal profile header and then stacks above the content. Navigation remains available without requiring a custom mobile interaction.

The existing site-wide masthead is removed from the homepage presentation because it duplicates the profile rail and consumes vertical space. The default layout remains reusable, but the homepage receives an explicit class or front-matter flag so layout changes stay scoped to this page.

## Visual Design

### Character

- Academic, friendly, and restrained
- White or very pale blue page background
- Flat content hierarchy rather than elevated cards
- Thin rules and spacing to separate sections
- Minimal ornamentation and no decorative orbit graphics

### Color System

- Primary blue: approximately `#2563eb`
- Deep navy text: approximately `#172033`
- Muted text: approximately `#64748b`
- Pale blue surface: approximately `#eff6ff`
- Border: approximately `#dbe5f1`
- Background: white or near-white

Blue is used sparingly for links, labels, section accents, and venue badges. Body copy stays dark for readability.

### Typography and Spacing

- Use the existing system sans-serif stack to avoid a new font dependency.
- Reduce the current headline scale substantially; the name should be prominent but not hero-sized.
- Use compact section headings, approximately 1.25–1.5rem.
- Keep body copy around 0.95–1rem with comfortable line height.
- Use consistent vertical section spacing of roughly 2–3rem rather than large panels.
- Keep the overall content width near 960px, with an approximately 220px profile rail and a 680px content column.

## Component Design

### Profile Rail

The portrait is shown at a moderate size with a simple rounded treatment. Name, role, location, and contact links are arranged vertically. The rail becomes sticky on wide screens but remains in normal document flow on smaller screens.

### Research Direction

The three current research areas remain, presented as a compact sentence or short list rather than separate cards.

### News

News is a dense chronological list. Each row uses a small date column and a concise description. The new EMNLP 2026 Main Conference acceptance appears above the existing KDD 2026 Workshop item.

### Publications

Publications use flat media rows separated by whitespace or thin borders. Existing teaser images remain where available. The new EMNLP paper may use a compact blue placeholder panel or a text-first row because no official teaser asset is available locally.

Each publication shows:

- Venue badge
- Paper title
- Full author list, with Kyeongyoon Lee emphasized
- Concise existing TL;DR when available
- Paper or OpenReview link

The domestic KSC 2023 publication remains visible in a smaller text-only row.

### Background and Honors

Education and Experience remain grouped under Background. Entries use small date labels, short titles, and one supporting line. Honors become a simple list rather than a large colored panel.

## Accessibility and Interaction

- Preserve semantic headings and section landmarks.
- Maintain descriptive image alternative text.
- Ensure blue links and badges meet readable contrast against their backgrounds.
- Provide visible keyboard focus states.
- Keep external links marked with `target="_blank"` and `rel="noopener noreferrer"` where appropriate.
- Respect reduced-motion preferences; the redesign should not require animation.

## Files and Boundaries

Expected implementation changes:

- `_pages/about.md`: restructure the homepage markup and add the EMNLP paper and news entry.
- `assets/css/main.scss`: replace the current portfolio-specific block with compact, page-scoped styles.
- `_layouts/default.html`: add a page-specific body class or conditional masthead rendering if needed.
- `_data/navigation.yml` and `_includes/masthead.html`: simplify or remove homepage-only navigation only when required by the final layout.
- `_config.yml`: update site description only if the publication addition makes a small metadata correction necessary.

Generated `_site` output is not treated as source and will not be manually edited.

## Validation

1. Run a clean Jekyll build and confirm it exits successfully.
2. Inspect the generated homepage for the new paper title, full author list, EMNLP 2026 venue, and OpenReview URL.
3. Render desktop and mobile views and confirm:
   - no horizontal overflow,
   - the profile rail stacks correctly,
   - publication rows remain readable,
   - all retained sections are present.
4. Confirm internal anchor navigation and external paper/contact links resolve to the intended targets.
5. Review the final diff to ensure changes remain limited to the homepage redesign and publication addition.

