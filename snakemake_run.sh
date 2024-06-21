#! /usr/bin/env bash

#BSUB -J SSP
#BSUB -o logs/cfDNA_%J.out
#BSUB -e logs/cfDNA_%J.err
#BSUB -R "select[mem>4] rusage[mem=4]" 

set -o nounset -o pipefail -o errexit -x

mkdir -p logs

drmaa_args='
    -oo {log}.out 
    -eo {log}.err 
    -J {params.job_name} 
    -R "{params.memory} span[hosts=1] " 
    -n {threads} '

snakemake \
    --snakefile Snakefile \
    --drmaa "$drmaa_args" \
    --jobs 24 \
    --latency-wait 60 \
    --rerun-incomplete \
    --configfile config.yaml
