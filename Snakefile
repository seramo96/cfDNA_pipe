# ===== Pipeline for cfDNA alignment =====


# Configure shell for all rules 
shell.executable("/bin/bash")
shell.prefix("set -o nounset -o pipefail -o errexit -x; ")
import subprocess
import shutil
import glob
import os 
import re

# Parameters from config.yaml
DATA       = config["DATA"]
RESULTS    = config["RESULTS"]
SAMPLES    = config["SAMPLES"]
SCRIPTS = config["SCRIPTS"]
GENOME     = config["GENOME"]

# Slide attributes
if (len(GENOME) != len(SAMPLES)) & (len(GENOME) != 1):
    sys.exit("ERROR: Must provide a single genome or a genome for each sample.")

if len(GENOME) == 1:
    GENOME = [GENOME] * len(SAMPLES)

GENOME = dict(zip(SAMPLES, GENOME))

# Final output files
rule all:
    input:
        expand(
            "{results}/{sample}/{sample}_R2_trim2.fastq.gz",
            results = RESULTS, sample = SAMPLES
        ),
         expand(
            "{results}/{sample}/{sample}_bnorm.len",
            results = RESULTS, sample = SAMPLES
        ),
        expand(
            "{results}/{sample}/{sample}_pe.bed.gz",
            results = RESULTS, sample = SAMPLES
        ),
        expand(
            "{results}/{sample}/{sample}_uniq_pe.bed.gz",
            results = RESULTS, sample = SAMPLES
        )

include: "rules/ssp_seq_data.snake"



