# Building the Book

Run `make` from the repository root or from this directory.
The result is `n00b2punk/n00b2punk.pdf` when viewed from the repository root.
`make pdf` does the same thing.

The build includes existing `chNN.md` files in numeric order, followed by the references.
New chapters are included automatically when added with two-digit filenames.
Chapter numbering starts at zero to match the source files.

## Requirements

- GNU Make and Pandoc with citeproc support.
- A TeX installation with LuaLaTeX, latexmk, and the packages used by Pandoc's default LaTeX template, plus tcolorbox.
- The fonts TeX Gyre Pagella, JetBrains Mono, and DejaVu Sans.

The font choices and callout styling follow the C++ and Go books.
The build is self-contained and does not require those repositories.
Adjust `frontmatter.yaml` to change the title, page layout, or fonts.

The first build may take longer while LuaLaTeX creates its font cache under `build/`.
Both that directory and the generated PDF are ignored by Git.
`make clean` removes the generated PDF and keeps the font cache for subsequent builds.
Use `make -B` to force a rebuild.
