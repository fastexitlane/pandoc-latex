# docker-pandoc-latex

This repo provides a Docker image based on Debian Slim for extensive LaTex builds.
The following packages are available:
* `texlive-full` including support for BibLaTex
* `pygments` for better syntax highlighting in LaTex code listings (using the `minted` package in LaTex)
* `pandoc` and `pandoc-citeproc` for converting Markdown documents to LaTex
* `pandoc-crossref` for handling cross references in Pandoc Markdown

This docker image was built to complete a GitLab CI workflow using the [LaTex Boilerplate](https://gitlab.com/fastexitlane/latex-boilerplate).
