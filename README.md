# Raw fastq origin

FASTQ files from the paper "The landscape of transcriptional and translational changes over 22 years of bacterial adaptation" by Favate et al 2022 [link](https://elifesciences.org/articles/81979)

Github repo: [link](https://github.com/shahlab/LTEE_gene_expression_2/tree/main)
GEO database: [link](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE164308)

## Download the files

Go to the GEO database which is linked in their github [link](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE164308) and click the link "SRA Run Selector". Select all 4 items and get the accession list. Rename accesstion list to Favate_acc_list.txt. Download the data with the following command:

```bash
bash scripts/download_fastq.sh Favate_acc_list.txt
```

OPTIONAL:
Open a text editor and match the metadata with the accession list to create the metadata file (requires looking back and forth between the GEO metadata and the github repo). Save as tsv. Example metadata file with the headers SRA_accession,GEO_accession,Fq,SampleName.

```
SRR13362464,GSM5006208,rep1-rna-am.fq.gz,rep1 RNAseq araM 
SRR13362465,GSM5006209,rep1-rna-ap.fq.gz,rep1 RNAseq araP
SRR13362468,GSM5006212,rep2-rna-am.fq.gz,rep2 RNAseq araM 
SRR13362469,GSM5006213,rep2-rna-ap.fq.gz,rep2 RNAseq araP 
```

## Rename the files

```bash
mv SRR13362464.fastq.gz rep1-rna-am.fq.gz
mv SRR13362465.fastq.gz rep1-rna-ap.fq.gz
mv SRR13362468.fastq.gz rep2-rna-am.fq.gz
mv SRR13362469.fastq.gz rep2-rna-ap.fq.gz
```
