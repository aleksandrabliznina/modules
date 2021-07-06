#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { REPEATMODELER_BUILDDATABASE } from '../../../../software/repeatmodeler/builddatabase/main.nf' addParams( options: [:] )

workflow test_repeatmodeler_builddatabase {
    
    input = [ [ id:'test'], // meta map
              file(params.test_data['sarscov2']['genome']['genome_fasta'], checkIfExists: true) ]

    REPEATMODELER_BUILDDATABASE ( input )
}
