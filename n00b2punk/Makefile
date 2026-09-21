PANDOC ?= pandoc

BOOK := n00b2punk.pdf
HTML := n00b2punk.html
CHAPTERS := $(sort $(wildcard ch[0-9][0-9].md))
APPENDICES := $(sort $(wildcard app[A-Z].md))
SOURCES := $(CHAPTERS) $(APPENDICES) bibliography.md
IMAGES := $(wildcard images/*.png)

# Keep LuaLaTeX's writable font cache with the ignored build artifacts.
export TEXMFVAR := $(abspath build/texmf-var)
export TEXMFCACHE := $(TEXMFVAR)

.PHONY: all pdf html clean
.DELETE_ON_ERROR:

all: pdf

pdf: $(BOOK)

html: $(HTML)

$(HTML): $(SOURCES) $(IMAGES) references.bib ieee.csl frontmatter.yaml callout.lua session.lua book.css copy-code.js copy-code.html Makefile
	$(PANDOC) $(SOURCES) --output="$@" \
		--metadata-file=frontmatter.yaml --metadata=header-includes: \
		--from=markdown --standalone --toc --toc-depth=2 \
		--citeproc --bibliography=references.bib --csl=ieee.csl \
		--lua-filter=callout.lua --lua-filter=session.lua \
		--css=book.css --include-after-body=copy-code.html

$(BOOK): $(SOURCES) $(IMAGES) references.bib ieee.csl frontmatter.yaml callout.lua session.lua Makefile
	@command -v $(PANDOC) >/dev/null || { echo "Install Pandoc to build the PDF." >&2; exit 1; }
	@command -v latexmk >/dev/null || { echo "Install latexmk to build the PDF." >&2; exit 1; }
	@command -v lualatex >/dev/null || { echo "Install LuaLaTeX to build the PDF." >&2; exit 1; }
	mkdir -p "$(TEXMFVAR)"
	$(PANDOC) $(SOURCES) --output="$@" \
		--metadata-file=frontmatter.yaml \
		--from=markdown --standalone --top-level-division=chapter \
		--citeproc --bibliography=references.bib --csl=ieee.csl \
		--lua-filter=callout.lua --lua-filter=session.lua \
		--pdf-engine=latexmk --pdf-engine-opt=-lualatex

# Only remove the generated books; retain the reusable font cache.
clean:
	$(RM) -- $(BOOK) $(HTML)
