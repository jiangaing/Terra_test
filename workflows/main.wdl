version 1.0

import "./tasks/bam_sort.wdl" as sort
import "./tasks/feature_count.wdl" as count

workflow main {

    String pipeline_version = "1.0"
    String container_src = "ghcr.io/jiangaing/Terra_test/container~{pipeline_version}"
    
    input {
        File raw_bam_file
        File raw_annotated_reference
        String prefix
    }

    parameter_meta {
        bam_file : "bam file"
        annotated_reference : "mapping reference as bed file"
        prefix : "Sample name"
    }

    call sort.SortBam {
        input: bam_file = raw_bam_file, file_label = prefix
    }

    call count.FeatureCount {
        input:  sorted_bam = SortBam.sorted_bam ,annotated_reference = raw_annotated_reference, file_label = prefix
    }

    output {
        File sorted_bam = SortBam.sorted_bam
        File raw_count_file = FeatureCount.count_file
    }

    meta {
        description: "A WDL-based workflow for testing wdl workflow from bam to sorted, and counting in a given reference"
        author: "Chang"
        email: "jiang.chang@well.ox.ac.uk"
    }

}