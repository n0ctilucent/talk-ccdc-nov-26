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

Build from the `slides/` directory:

```bash
cd slides
pdflatex -shell-escape talk-ccdc.tex    # first pass
pdflatex -shell-escape talk-ccdc.tex    # second pass (TOC / refs)
```

### Required Packages
- `beamer` (core)
- `lmodern` / `fontenc` (T1)
- `xurl` / `hyperref`
- `textpos`

## Deck Structure

| Section | Focus / Key Concepts |
|---------|----------------------|
| **Welcome & Agenda** | Club intro, spring event roadmap, 90-minute session schedule |
| **The "AI Myth" vs Reality** | Anthropomorphic traps, next-token prediction, Byte-Pair Encoding (BPE), whitespace hazards |
| **The Diabolical Art Battle** | Rules of engagement, Challenge 1 (Geometric box), Challenge 2 (The Infamous ASCII Wizard) |
| **Why LLMs Fail at ASCII Art** | 1D causal attention vs 2D spatial matrices, lack of retraction buffer, SkyPilot VLM study |
| **Cybersecurity Implications** | ArtPrompt / ASCII smuggling jailbreaks, token smuggling, log telemetry parsing risks |
| **References & Community** | 3eon experiment, Medium articles, SkyPilot paper, Cyber Defense Center links |

## Design System

- **Theme**: Madrid — professional top header bar with section tracking
- **Color Theme**: Dolphin — subtle purple accents
- **Accent Palette**:
  - Warm orange-red (`#FA582D`) — bullets & key highlights (inherited from `talk-auth`)
  - Neon magenta (`#D946EF`) — frame titles and primary emphases
  - Purple (`#8B5CF6`) — secondary blocks and badges
  - Warm gold (`#FDE68A`) — subtitle and heading accents
  - Deep navy (`#0F172A`) — frame headers and dark elements
- **Typography**: Latin Modern Sans (`lmodern`) with crisp micro-typographic font metric alignment.

## Author & Credits

- **Franklin Diaz** — `@n0ctilucent`
- Special thanks to Unsu Mwambo, Prof. Joe Murdock, and the CU Denver Cyber Defense Center (`https://www.ucdenver.edu/cyber`).
