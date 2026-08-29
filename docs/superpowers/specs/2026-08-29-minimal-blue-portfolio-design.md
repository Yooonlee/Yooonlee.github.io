# Minimal Blue Portfolio Redesign

## Goal

Redesign Kyeongyoon Lee's GitHub Pages homepage as a close structural and visual adaptation of the reference site at `https://daeunni.github.io/`. Retain the site's existing content and change the reference site's pink accent system to blue.

The redesign is successful when the page presents the same research, publication, background, and award information in a noticeably smaller and less decorative layout, and when the new EMNLP 2026 paper is clearly visible in both News and Publications.

## Scope

### Included

- Replace the current oversized hero and card-heavy homepage with the reference site's compact fixed-profile/two-column academic layout.
- Match the reference site's typography scale, 960px desktop wrapper, 232px profile column, 670px content column, section spacing, About card, News timeline, and publication-row treatment as closely as the existing Jekyll project permits.
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

1. **Profile rail matching the reference header**
   - Compact portrait
   - Name and current role
   - Location
   - Email and GitHub links
   - Compact social/contact icons

2. **Content column**
   - About
   - Research Direction
   - News
   - Publications
   - Background, including Education and Experience
   - Honors and Awards

On narrow screens, the profile rail becomes a centered static profile header and stacks above the content, following the reference site's responsive behavior.

The existing site-wide masthead is removed from the homepage presentation because the reference site has no masthead and uses the profile header as its identity and navigation surface. The default layout remains reusable, but the homepage receives an explicit class and front-matter flag so layout changes stay scoped to this page.

## Visual Design

### Character

- Academic, friendly, and restrained
- White or very pale blue page background
- The same restrained cards, hover states, timeline, and publication rows used by the reference site
- Thin rules and spacing to separate sections
- Minimal ornamentation and no decorative orbit graphics

### Color System

- Primary blue replacing the reference pink: `#4a7dc0`
- Deep blue heading color replacing the reference dark pink: `#285a9f`
- Secondary cyan-blue replacing the reference green: `#62b6cb`
- Muted text: `#888888`
- Pale blue highlight: `#eaf2ff`
- Pale cyan companion surface: `#edf9fb`
- Border: `#e5e5e5`
- Background: white or near-white

Blue is used sparingly for links, labels, section accents, and venue badges. Body copy stays dark for readability.

### Typography and Spacing

- Use Raleway, matching the reference site's font choice, with a sans-serif fallback.
- Match the reference scale: 14px body text, 25px profile name, and section headings at approximately 130% of body size.
- Match the reference wrapper dimensions: 960px overall, 232px profile header, and 670px content section.
- Use the reference site's compact 20px paragraph rhythm and 28px section dividers.

## Component Design

### Profile Rail

The portrait is shown as a centered circle, matching the reference proportions. Name, role, location, email, and social/contact icons are arranged vertically. The rail is fixed on wide screens and returns to normal document flow at 960px and below.

### Research Direction

The three current research areas remain as a compact bulleted list with pale-blue text highlights, matching the reference Research Direction section.

### News

News uses the reference site's vertical gradient timeline, year marker, month labels, and compact entries. The new EMNLP 2026 Main Conference acceptance appears above the existing KDD 2026 Workshop item.

### Publications

Publications use the reference site's bibliography list, optional question-style tagline, teaser column, venue badge, title, authors, periodical line, and outlined link buttons. Existing teaser images remain where available. The new EMNLP paper uses a restrained blue typographic placeholder in the same teaser dimensions because no official teaser asset is available locally.

Each publication shows:

- Venue badge
- Paper title
- Full author list, with Kyeongyoon Lee emphasized
- Concise existing TL;DR when available
- Paper or OpenReview link

The domestic KSC 2023 publication remains visible in a smaller text-only row.

### Background and Honors

Education, Experience, and Honors use the reference site's plain headings and compact bulleted lists rather than cards or a colored panel.

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
