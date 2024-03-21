#!/bin/bash

module load python/3.10.12-fasrc01

DOC=$1

for line in $(cat $DOC)
do
        echo "downloading $line"
        singularity exec software/sra-tools-3.0.1.sif fasterq-dump --threads 8 --progress "$line"
        pigz --processes 8 *.fastq
done
