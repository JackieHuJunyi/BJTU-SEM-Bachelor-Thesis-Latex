LATEX := xelatex
LATEX_FLAGS := -interaction=nonstopmode -halt-on-error
MAIN := main

.PHONY: pdf sample preview clean distclean

pdf:
	$(LATEX) $(LATEX_FLAGS) $(MAIN).tex
	$(LATEX) $(LATEX_FLAGS) $(MAIN).tex

sample: pdf
	cp $(MAIN).pdf docs/sample.pdf

preview: sample
	@if command -v qlmanage >/dev/null 2>&1; then \
		qlmanage -t -s 1200 -o docs docs/sample.pdf >/dev/null 2>&1 || true; \
		if [ -f docs/sample.pdf.png ]; then \
			mv -f docs/sample.pdf.png docs/preview.png; \
		else \
			echo "preview thumbnail not generated; skip preview update"; \
		fi; \
	else \
		echo "qlmanage not found; skip preview regeneration"; \
	fi

clean:
	rm -f $(MAIN).aux $(MAIN).bbl $(MAIN).bcf $(MAIN).blg $(MAIN).fdb_latexmk \
		$(MAIN).fls $(MAIN).lof $(MAIN).log $(MAIN).lot $(MAIN).out \
		$(MAIN).run.xml $(MAIN).synctex.gz $(MAIN).toc $(MAIN).xdv

distclean: clean
	rm -f $(MAIN).pdf
