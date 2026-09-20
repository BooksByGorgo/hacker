# Book Images

## Callout Icons

`tip-callout.png`, `trap-callout.png`, and `wut-callout.png` are the 256×256 icons copied unchanged from `~/git/go/images/`.
`callout.lua` selects the matching icon from the bold **Tip:**, **Trap:**, or **Wut:** label at the start of a `.tip` div.
Both the PDF and HTML builds use these bundled assets; the Go repository is not needed to build the book.

## Terminal Anatomy Figure

`terminal-capture.png` is an actual xterm window running Bash, captured for this book.
The startup banner displays Bash's version, and the prompt is customized to use the neutral example `student@lab:/tmp$`.
No other windows or personal terminal history are included.

`terminal-anatomy.svg` adds vector labels to the unmodified capture.
`terminal-anatomy.png` is the rendered figure used by the manuscript and PDF.

To regenerate the labeled figure after editing the SVG, run from the book directory:

```sh
inkscape images/terminal-anatomy.svg --export-type=png --export-filename=images/terminal-anatomy.png
```

Keep the SVG and capture in the same directory so its image reference resolves.
The PDF build uses the checked-in PNG and does not require Inkscape.
