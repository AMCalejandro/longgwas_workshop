#!/usr/bin/env nextflow


fa_ch = Channel.fromPath("$baseDir/sample.fa")
                .splitFasta()

workflow {
    fa_ch.view()
}