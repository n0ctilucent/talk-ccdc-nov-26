# talk-ccdc-nov-26 — AI Art Battle

Live presentation slides for the **AI Art Battle** on **November 18, 2026 at 5:30 PM MST**.

## Slides

Build from the `slides/` directory:

```bash
cd slides
pdflatex -shell-escape talk-ccdc.tex    # first pass
pdflatex -shell-escape talk-ccdc.tex    # second pass (TOC / refs)
```

### Required packages
- `beamer` (core)
- `roboto` font (install via TeX Live or system package)
- Standard LaTeX tools (`hyperref`, `textpos`)

## Structure

| Section | Content |
|---------|---------|
| Overview | What the AI Art Battle is + key details |
| Format & Rules | Round structure, rules of engagement |
| Preparation | Pre-show checklist and open questions |
| Tools & Models | Image generators allowed in the battle |
| Timeline | Nov 18 schedule |
| Action Items | To-do list before showtime |
| References | Links to resources |

## Design notes

- **Theme**: Madrid — clean top bar for frame titles
- **Color theme**: Dolphin (subtle purple tones)
- **Palette**: Neon magenta / deep navy / gold accents
- **Font**: Roboto sans-serif
- **Bullets**: Warm orange-red (`#FA582D`), inherited from talk-auth template

## Author

Franklin Diaz — `@n0ctilucent`
