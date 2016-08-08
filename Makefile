SRCS=$(shell ls *.rst)
PDFS=$(SRCS:.rst=.pdf)
STYLE=slides.style

RST2PDF=rst2pdf
RST2PDF_FLAGS=-e preprocess -s $(STYLE)

%.pdf: %.rst $(STYLE) footer.hdr
	$(RST2PDF) $(RST2PDF_FLAGS) -o $@ $<

.PHONY: all clean

all: $(PDFS)

clean:
	rm -f $(PDFS)
