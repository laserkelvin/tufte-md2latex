# tufte-md2latex

This repo is a template for creating nice looking Tufte-style handouts from
simple Markdown. A Makefile is used to automate the process of converting
the Markdown into TeX, and is then processed using `pdflatex` and `bibtex`.

## Installation

This requires the following:

1. Pandoc for conversion
2. `pdflatex` and `bibtex` for compilation
3. GNU `make`

The LaTeX requirements are:

* `tufte-latex` and all the associated packages
* `mhchem`

## Instructions

1. Write your content in Pandoc Markdown, including any settings that might
be relevant in the header of the Markdown file.
2. Run `make clean` to delete all `pdflatex` auxillary output
3. Run `make tex` to convert the Markdown into TeX using the `handout.tex` template.
4. Run `make pdf` to call the compilation chain.

## Notes

The Markdown to TeX conversion will take certain Markdown syntax and convert it into the corresponding TeX equivalent. For example:

- Margin notes
    - `Hello^[this will go into the margin]
        - This will automatically number the note
    - Goodbye[^1 This will also go into the margin]
        - This specifies the margin note symbol
- Citations
    - This is a controversial statement[@Kelvin2019]
        - The `@citekey` syntax will be converted into a `\citep{Kelvin2019}. The Makefile will replace `\citep` with `\cite`, where the latter is heavily modified to actually display margin references.


