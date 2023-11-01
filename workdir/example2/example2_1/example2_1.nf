#!/usr/bin/env nextflow

Channel.fromPath("$baseDir/sample.csv")
       .splitCsv()
