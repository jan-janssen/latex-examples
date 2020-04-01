#!/usr/bin/env sh
# Based on https://tex.stackexchange.com/questions/398830/how-to-build-my-latex-automatically-using-travis-ci

# Originally from https://github.com/latex3/latex3

# Just including texlua so the cache check above works
# Needed for any use of texlua even if not testing LuaTeX
tlmgr install luatex

# Other contrib packages: done as a block to avoid multiple calls to tlmgr
# texlive-latex-base is needed to run pdflatex
# Take packages from http://ctan.ebinger.cc/tex-archive/systems/texlive/tlnet/archive/
tlmgr install                    \
  collection-latexextra          \
  collection-fontsrecommended    \
