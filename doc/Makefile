MARKDOWN = pandoc --from markdown --to html -s -S --toc -c pandoc.css -A footer.html 
all: $(patsubst %.md,%.html,$(wildcard *.md)) Makefile slide

clean:
	rm -f $(patsubst %.md,%.html,$(wildcard *.md))
	rm -f *.bak *~
	rm -f slide.html

slide: SLIDES
	pandoc --from markdown --to s5 -s -S -c pandoc.css $< --output slide.html
	@## pandoc -t beamer SLIDES --latex-engine=xelatex -o slide.pdf

sync: all
	rsync -avzr --partial --progress --rsh=ssh * jazz@graph.3du.me:public_html/hive/

%.html: %.md
	$(MARKDOWN) $< --output $@
