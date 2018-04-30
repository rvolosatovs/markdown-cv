PANDOC=pandoc

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/src
OUTPUTDIR=$(BASEDIR)/out
STYLEDIR=$(INPUTDIR)/style

pdf:
	pandoc -s -f markdown-auto_identifiers \
	"$(INPUTDIR)"/*.md \
	-o "$(OUTPUTDIR)/cv.pdf" \
	--template="$(STYLEDIR)/template.tex" \
	--pdf-engine=xelatex

tex:
	pandoc -s \
	"$(INPUTDIR)"/*.md \
	-o "$(OUTPUTDIR)/cv.tex" \
	--template="$(STYLEDIR)/template.tex" \
	--pdf-engine=xelatex

docx:
	pandoc "$(INPUTDIR)"/*.md \
	-o "$(OUTPUTDIR)/cv.docx" \

html:
	pandoc "$(INPUTDIR)"/*.md \
	-o "$(OUTPUTDIR)/cv.html"

clean:
	rm -f $(OUTPUTDIR)/*

.PHONY: pdf docx html tex
