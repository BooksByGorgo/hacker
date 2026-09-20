PANDOC ?= pandoc

BOOK := n00b2punk.pdf
CHAPTERS := $(sort $(wildcard ch[0-9][0-9].md))
SOURCES := $(CHAPTERS) bibliography.md

# Keep LuaLaTeX's writable font cache with the ignored build artifacts.
export TEXMFVAR := $(abspath build/texmf-var)
export TEXMFCACHE := $(TEXMFVAR)

.PHONY: all pdf clean
.DELETE_ON_ERROR:

all: pdf

pdf: $(BOOK)

$(BOOK): $(SOURCES) references.bib frontmatter.yaml callout.lua Makefile
	@command -v $(PANDOC) >/dev/null || { echo "Install Pandoc to build the PDF." >&2; exit 1; }
	@command -v latexmk >/dev/null || { echo "Install latexmk to build the PDF." >&2; exit 1; }
	@command -v lualatex >/dev/null || { echo "Install LuaLaTeX to build the PDF." >&2; exit 1; }
	mkdir -p "$(TEXMFVAR)"
	$(PANDOC) $(SOURCES) --output="$@" \
		--metadata-file=frontmatter.yaml \
		--from=markdown --standalone --top-level-division=chapter \
		--citeproc --bibliography=references.bib \
		--lua-filter=callout.lua \
		--pdf-engine=latexmk --pdf-engine-opt=-lualatex

# Only remove the generated book; retain the reusable font cache.
clean:
	$(RM) -- $(BOOK)
