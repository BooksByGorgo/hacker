PANDOC ?= pandoc

BOOK := n00b2punk.pdf
HTML := n00b2punk.html
CHAPTERS := $(sort $(wildcard ch[0-9][0-9].md))
APPENDICES := $(sort $(wildcard app[A-Z].md))
SOURCES := $(CHAPTERS) appendix-start.md $(APPENDICES) bibliography.md
CH_PDFS := $(CHAPTERS:.md=.pdf)
APP_PDFS := $(APPENDICES:.md=.pdf)
IMAGES := $(wildcard images/*.png)

# Keep LuaLaTeX's writable font cache with the ignored build artifacts.
export TEXMFVAR := $(abspath build/texmf-var)
export TEXMFCACHE := $(TEXMFVAR)

.PHONY: all pdf html chapters clean
.DELETE_ON_ERROR:

all: pdf

pdf: $(BOOK)

html: $(HTML)

# One PDF per chapter and appendix, numbered to match the full book.
chapters: $(CH_PDFS) $(APP_PDFS)

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

PDF_OPTS := --from=markdown --standalone --top-level-division=chapter \
	--citeproc --bibliography=references.bib --csl=ieee.csl \
	--lua-filter=callout.lua --lua-filter=session.lua \
	--pdf-engine=latexmk --pdf-engine-opt=-lualatex

ch%.pdf: ch%.md chapfront.yaml bibliography.md references.bib ieee.csl callout.lua session.lua Makefile
	@command -v $(PANDOC) >/dev/null || { echo "Install Pandoc to build the PDF." >&2; exit 1; }
	mkdir -p "$(TEXMFVAR)"
	@NUM=$$(echo $* | sed 's/^0*//'); [ -z "$$NUM" ] && NUM=0; \
	{ printf '```{=latex}\n\\setcounter{chapter}{%d}\n```\n\n' $$((NUM - 1)); cat $<; } \
	  | $(PANDOC) - bibliography.md --output="$@" --metadata-file=chapfront.yaml $(PDF_OPTS)

app%.pdf: app%.md chapfront.yaml bibliography.md references.bib ieee.csl callout.lua session.lua Makefile
	@command -v $(PANDOC) >/dev/null || { echo "Install Pandoc to build the PDF." >&2; exit 1; }
	mkdir -p "$(TEXMFVAR)"
	@OFFSET=$$(( $$(printf '%d' "'$*") - $$(printf '%d' "'A") )); \
	{ printf '```{=latex}\n\\appendix\n\\setcounter{chapter}{%d}\n```\n\n' $$OFFSET; cat $<; } \
	  | $(PANDOC) - bibliography.md --output="$@" --metadata-file=chapfront.yaml $(PDF_OPTS)

# Only remove the generated books; retain the reusable font cache.
clean:
	$(RM) -- $(BOOK) $(HTML) $(CH_PDFS) $(APP_PDFS)
