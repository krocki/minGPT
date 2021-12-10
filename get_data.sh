#!/bin/bash
ADDR="https://cs.fit.edu/~mmahoney/compression"

FILES=("enwik8.bz2" \
       "enwik9.bz2")

mkdir -p data && cd data
for f in ${FILES[@]}; do
    wget -nc ${ADDR}/$f; bunzip2 -f $f
  done
  cd ..
