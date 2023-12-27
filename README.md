# Terra_test
[![Open](https://img.shields.io/badge/Open-Dockstore-blue)](https://dockstore.org/workflows/github.com/jiangaing/Terra_test:main?tab=info)

> [!TIP]
> To import the workflow into your Terra workspace, click on the above Dockstore badge, and select 'Terra' from the 'Launch with' widget on the Dockstore workflow page.

This is a repository of testing terra 

## Workflow Steps

- **SortBam**: The mapped file are sorted by  to a reference genome using `samtools`. The output is a BAM file that contains the alignments.

- **FeatureCount**: Gene expression are called from the sorted bam file using `FeatureCount`. The output is a test file that contains reference included gene with raw count.

- ## Inputs
  
The main inputs to the workflow are:

- **raw_bam_file**: Input aligned file in .bam format.
- **raw_annotated_reference**: Human reference genome .gff file (General Feature Format). The version being used is GRCh38 release110 ([source](https://ftp.ensembl.org/pub/release-110/gff3/homo_sapiens/Homo_sapiens.GRCh38.110.gff3.gz)).

- ## Outputs

The main output files are listed below:

- **SortBam**:
  - `sorted_bam` :Sorted bam file
- **FeatureCount**:
   - `raw_count_file`: Text file containing raw gene expression count
 
## Components


- **Tools**
  - samtools
  - featureCounts
- **Containers**
  - pegi3s/samtools_bcftools
  - pegi3s/feature-counts
  - ensemblorg/ensembl-vep
 
- ## Acknowledgement

- Anand Maurya: [https://github.com/anand-imcm](https://github.com/anand-imcm)
