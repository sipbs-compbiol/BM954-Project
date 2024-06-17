#!/usr/bin/env bash

FILE="cazy_families.txt"

while read family
do
  echo "Writing sequences for ${family}"
  cmd="cw_extract_db_seqs cazydb.db genbank --fasta_file ${family}/${family}_sequences.fasta --families ${family}"
  ${cmd}
done < ${FILE}

