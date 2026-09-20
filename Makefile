.PHONY: all pdf html clean

all: pdf

pdf html clean:
	$(MAKE) -C n00b2punk $@
