.PHONY: all pdf clean

all: pdf

pdf clean:
	$(MAKE) -C n00b2punk $@
