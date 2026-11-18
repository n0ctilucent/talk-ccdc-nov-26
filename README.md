# talk-ccdc-nov-26 — The Diabolical AI Art Battle: Why LLMs Suck at ASCII Art

Interactive presentation slides for the **Transamerica Cybersecurity Club** technical session at the **University of Colorado Denver Business School** on **Wednesday, November 18, 2026 from 5:00 PM to 6:30 PM MST** (Room 1200 / JP Morgan Room).

## Overview

A hands-on, interactive workshop designed to dispel the "AI myth" by challenging students to use state-of-the-art LLMs (ChatGPT, Claude, Gemini, local models) to generate precise ASCII art (such as Franklin's infamous "ASCII Wizard" challenge). The resulting failures provide a memorable, intuitive foundation for exploring subword tokenization, 1D autoregressive causal attention, multimodal patchification, and their critical implications for cybersecurity and defensive engineering (e.g., ArtPrompt / ASCII smuggling, WAF bypass, and log telemetry parsing).

## Event Details

- **Host**: Transamerica Cybersecurity Club & Cyber Defense Center (NCAE-C)
- **Venue**: CU Denver Business School, 1475 Lawrence St, Denver, CO 80202 (Room 1200 / JP Morgan Room)
- **Date & Time**: Wednesday, November 18, 2026 | 5:00 PM – 6:30 PM MST
- **Speaker**: Franklin Diaz (`franklin.diaz@ucdenver.edu` | `@n0ctilucent`)
- **Faculty Sponsor**: Prof. Joe Murdock, CISSP, CISM (BSBA Director, NCAE-C PoC)
- **Club President**: Unsu Mwambo (B.S. Information Systems '28)

## Slides Build Instructions

Build from the project root or `slides/` directory:

```bash
# Build slide deck PDF (2 passes)
make slides

# Run 100% ChkTeX documentation and syntax audit
make lint

# Clean temporary LaTeX auxiliary files
make clean
```

### Required Packages
- `beamer` (16:9 widescreen layout)
- `helvet` / `fontenc` (T1)
- `qrcode`
- `listings`
- `tikz`
- `xurl` / `hyperref`
- `textpos`

## Deck Structure

| Section | Focus / Key Concepts |
|---------|----------------------|
| **Welcome & Agenda** | Club intro, spring event roadmap, 90-minute session schedule |
| **The "AI Myth" vs Reality** | Anthropomorphic traps, next-token prediction, Byte-Pair Encoding (BPE), whitespace hazards |
| **The Diabolical Art Battle** | Rules of engagement, Challenge 1 (Geometric box), Challenge 2 (The Infamous ASCII Wizard) |
| **Why LLMs Fail at ASCII Art** | 1D causal attention vs 2D planar matrices, lack of retraction buffer, SkyPilot VLM study |
| **Cybersecurity Implications** | ArtPrompt / ASCII smuggling jailbreaks, token smuggling, log telemetry parsing risks |
| **References & Community** | 3eon experiment, Medium articles, SkyPilot paper, Cyber Defense Center links |

## Design System

- **Aspect Ratio**: 16:9 widescreen (`aspectratio=169`) optimized for modern lecture halls and conference displays.
- **Theme Archetype**: High-Contrast Modern Cyberpunk (aligned with Skynet Minecraft v2 design language).
- **Navigation & Tracking**: Custom Beamer footline displaying speaker identity, session title, date, and frame pagination.
- **Interactivity**: Dynamic QR code badges embedded on the Title frame and Closing frame for instant repository and slide downloads.
- **Accent Palette**:
  - Deep Navy background (`#0F172A`) & Header Blue (`#0C111A`)
  - Electric Cyan (`#00D2FF`) — primary headings, frame titles, and links
  - Neon Magenta (`#D946EF`) — section callouts, subheadings, and battle badges
  - Alert Amber (`#FFB300`) — warnings, meeting details, and alert blocks
  - Emerald Green (`#00E676`) — example blocks and positive indicators
  - Off-White Text (`#F8FAFC`) & Muted Slate (`#94A3B8`)
- **Typography**: Helvetica (`helvet`) sans-serif with crisp monospaced code listings (`listings`).

## Author & Credits

- **Franklin Diaz** — `franklin.diaz@ucdenver.edu` (`@n0ctilucent`)
- Special thanks to Unsu Mwambo, Prof. Joe Murdock, and the CU Denver Cyber Defense Center (`https://www.ucdenver.edu/cyber`).
