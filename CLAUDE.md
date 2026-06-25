# CV Repository Guidelines

## CV Constraints

- **Maximum 3 pages.** The compiled PDF must not exceed 3 pages. Verify page count before merging any change that adds content. If content is added, compensate by trimming elsewhere or tightening formatting.
- **Tone:** Formal and condensed. LinkedIn copy is the source of truth for facts, but CV language should be tighter and less conversational.
- **LinkedIn-only content:** Google Viceroy and Google OOB Network Access are intentionally excluded from the CV as primary team entries. Brief mentions of OOB accomplishments (e.g. in Websearch) are acceptable; full team sections are not.
- **DocuSign:** Leave minimal — it was a 6-month role with few achievements.

## Spellcheck

The CI pipeline runs PySpelling against `CV.tex` using the wordlist at `wordlist.txt`. Any new LaTeX commands, proper nouns, or technical terms added to the CV must also be added to `wordlist.txt` or CI will fail.

## Building

The CI pipeline builds the PDF using `xu-cheng/latex-action` (TeX Live full). To build locally:

```
pdflatex CV.tex
```
