# Building the Book

Run `make` from the repository root or from this directory.
The result is `n00b2punk/n00b2punk.pdf` when viewed from the repository root.
`make pdf` does the same thing.

Run `make html` to create `n00b2punk/n00b2punk.html` for reading in a browser.
Keep it beside `book.css`, `copy-code.js`, and `images/`.
Its **Copy commands** buttons copy only typed commands, without prompts or output.
These interactive buttons are for HTML, not the PDF.

The build includes existing `chNN.md` files in numeric order, followed by the references.
New chapters are included automatically when added with two-digit filenames.
Chapter numbering starts at zero to match the source files.
Pandoc formats citations and references in IEEE style using the bundled `ieee.csl`.
This is the same style file used by the C++ books; its attribution and CC BY-SA 3.0 license are preserved in the file.

## Requirements

- GNU Make and Pandoc with citeproc support.
- For PDF: a TeX installation with LuaLaTeX, latexmk, and the packages used by Pandoc's default LaTeX template, plus tcolorbox, fancyvrb, and accsupp.
- The fonts TeX Gyre Pagella, JetBrains Mono, and DejaVu Sans.

The font choices and callout styling follow the C++ and Go books.
Tip, Trap, and Wut boxes use the matching icons bundled from the Go book, with an icon column beside the text in PDF and HTML.
Console boxes, copy buttons, and the browser stylesheet are adapted from `~/git/opentofu`.
Use `session` fences for console conversations: `$ ` marks each typed command, and subsequent unmarked lines show output.
The marker is a book convention for all shells; readers do not type it.
Use `.no-copy` on code blocks that illustrate prompts rather than runnable commands.
PDF sessions preserve spaces for text selection; HTML buttons strip the prompt and omit output.
The build is self-contained and does not require those repositories.
Adjust `frontmatter.yaml` to change the title, page layout, or fonts.

The first build may take longer while LuaLaTeX creates its font cache under `build/`.
That directory and the generated PDF and HTML are ignored by Git.
`make clean` removes the generated PDF and HTML and keeps the font cache for subsequent builds.
Use `make -B` to force a rebuild.
