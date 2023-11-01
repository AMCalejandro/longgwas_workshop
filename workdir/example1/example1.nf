#!/usr/bin/env nextflow

process SAYHELLO {
    """
    echo 'Hello world!' > hello.txt
    """
}


workflow {
   SAYHELLO()
}