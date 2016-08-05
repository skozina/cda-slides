RST2PDF=rst2pdf
RST2PDF_FLAGS=-e preprocess -s slides.style

SRCS=$(shell ls *.rst)
PDFS=$(SRCS:.rst=.pdf)

%.pdf: %.rst
	$(RST2PDF) $(RST2PDF_FLAGS) -o $@ $<

.PHONY: all clean

all: $(PDFS)

clean:
	rm -f $(PDFS)
