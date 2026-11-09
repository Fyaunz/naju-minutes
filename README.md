# Naju — Typst Template

A minimal Typst project template for creating PDFs with custom fonts and resources.

## Contents

- `main.typ` — the document itself: metadata and protocol text.
- `template/` — the template code, imported through `template/lib.typ`.
  - `theme.typ` — colours and fonts.
  - `assets.typ` — logo and icons.
  - `components.typ` — `vote`, `vote-page`, `todo`, `todos`, `todo-list`, `todo-page`, `checkbox`, `date`.
  - `pages.typ` — cover page and table of contents.
  - `protokoll.typ` — the `protokoll` show rule: page setup and headings.
- `fonts/` — bundled local fonts (Open Sans, Philosopher).
- `resources/` — the logo and the SVG icons in `resources/icons/`.
- `target/` — output directory for generated PDFs.

## Requirements

- Typst (install from https://typst.org)
- A modern OS (macOS, Linux, Windows)

## Quick Start

1. Edit `main.typ` to customize the document.
2. Compile to PDF:

```
typst compile --font-path fonts main.typ target/output.pdf
```

3. Open `target/output.pdf` to view the result.

## Fonts

Replace or add font files (OTF/TTF) inside the `fonts/` subfolders to use custom fonts in the project.

## Resources

Place images and other assets in `resources/` and reference them from `main.typ` as needed.

## Output

Generated PDFs and artifacts are written to the `target/` directory.

## Contributing

Feel free to open issues or pull requests to improve the template.

## License

Add a license of your choice (e.g., MIT) or keep the project unlicensed.
