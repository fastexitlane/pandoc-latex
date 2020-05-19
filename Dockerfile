FROM bnord01/docker-latex-pygments
RUN apt-get update && apt-get install -y \
    cabal-install && \
    cabal update && \
    cabal install --dependencies-only \
                  pandoc \
                  pandoc-citeproc \
                  pandoc-citeproc-preamble \
                  pandoc-crossref \
                  latex-formulae-pandoc && \
    cabal install pandoc \
                  pandoc-citeproc \
                  pandoc-citeproc-preamble \
                  pandoc-crossref \
                  latex-formulae-pandoc

ENV PANDOC_DIR=/root/.cabal/bin/

ENV PATH=${PATH}:${PANDOC_DIR}
