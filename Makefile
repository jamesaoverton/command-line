# Make PDF slides using Pandoc and LaTeX Beamer
# Use --incremental to "animate" the slides
command-line.pdf: metadata.yaml command-line.md | include.tex
	pandoc $^ \
	--from markdown \
	--to beamer \
	--slide-level 2 \
	--standalone \
	--include-in-header include.tex \
	--output $@

clean:
	rm -f command-line.pdf
