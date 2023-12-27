# Terra_test
This is s repository of testing terra 
[![Open](https://img.shields.io/badge/Open-Dockstore-blue)]((https://dockstore.org/workflows/github.com/jiangaing/Terra_test:main?tab=info))

## Workflow Steps

- **SortBam**: The mapped file are sorted by  to a reference genome using `samtools`. The output is a BAM file that contains the alignments.

- **FeatureCount**: Gene expression are called from the sorted bam file using `FeatureCount`. The output is a test file that contains reference included gene with raw count.

- ## Inputs

- **raw_bam_file**: Input aligned file in .bam format.
- **raw_annotated_reference**: Human reference genome .gff file (General Feature Format). The version being used is GRCh38 release110 ([source](ftp://ftp.ensembl.org/pub/release-110/gff3/homo_sapiens/Homo_sapiens.GRCh38.110.gff3.gz)).

- ## Outputs

- **SortBam**:
  - `sorted_bam` :Sorted bam file
- **FeatureCount**:
   - `raw_count_file`: Text file containing raw gene expression count
 
- ## Acknowledgement

- [https://github.com/anand-imcm)](https://github.com/anand-imcm)
