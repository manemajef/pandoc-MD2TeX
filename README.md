# pandoc-hebrew

Pandoc templates for Hebrew documents. Because apparently mixing RTL and LTR text in 2024 is still a nightmare.

## What This Solves

If you've ever tried to:
- Convert Obsidian notes with Hebrew + English + Math to PDF
- Get LaTeX to show English in one font and Hebrew in another without manual markup
- Not lose your sanity over bidi text direction

...this might help. No promises.

## Templates

| Template | Use Case |
|----------|----------|
| `he` | Minimal, clean, recommended for daily use |
| `hebrew` | Fuller version with more options |
| `typst-header.typ` | Typst alternative (faster compilation, less mature) |

## Usage

```bash
# Using defaults (recommended)
pandoc input.md -d he -o output.pdf

# Or explicitly
pandoc input.md --pdf-engine=lualatex --template=he.latex -o output.pdf
```

## Dependencies

**Required:**
- Pandoc
- LuaLaTeX (via TeX Live or similar)
- Fonts:
  - `David CLM` (Hebrew) - from [Culmus](https://culmus.sourceforge.io/)
  - `CMU Serif` / `CMU Sans Serif` / `CMU Typewriter Text` (Latin) - from [cm-unicode](https://ctan.org/pkg/cm-unicode)

**macOS:**
```bash
brew install --cask mactex
# Then install Culmus fonts manually
```

**Linux:**
```bash
apt install texlive-full fonts-culmus fonts-cmu
```

## Known Limitations

- Punctuation after English words (`.`, `!`, `)`) uses Hebrew font. This is a Unicode bidi thing, not fixable without ugly hacks.
- ~99.9% of mixed content renders correctly. The 0.1% is punctuation edge cases.

## Structure

```
.
├── defaults/          # Pandoc default files (-d flag)
│   ├── he.yaml
│   ├── hebrew.yaml
│   └── typ.yaml
├── templates/         # LaTeX/Typst templates
│   ├── he.latex
│   ├── hebrew.latex
│   └── typst-header.typ
└── tests/             # Test files
```

## Typst Alternative

Typst compiles faster and handles bidi better in some cases:

```bash
pandoc input.md -d typ -o output.pdf
```

Still experimental. YMMV.

## License

Do whatever you want with it.
