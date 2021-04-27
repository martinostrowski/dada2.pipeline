
# A Scalable, Reproducible, Amplicon Analysis Pipeline for Small and Large Scale Microbiome Initiatives: 

last update: 27 April 2021 by Martin Ostrowski

Single base pair accuracy is an important goal for environmental amplicon sequencing projects for two main reasons; 
1. reproducible sequence inference is a fundamental requirement for comparing data between different sequencing runs or different studies, and
2. the ability to identify 'Amplicon Sequence Variants' (ASVs) of true biological origin improves the taxonomic resolution of the data and significantly enhances the potential for ecological insights and practical value.

This repository contains annotated code for a fastq to ASV table amplicon analysis pipeline for Bacteria, Archaea or Eukaryote Small Subunit ribosomal RNA genes. An important characteristic of the pipeline is that retains the sequence quality information for denoising and sets permissive chimera filtering thresholds in order to retain ecologically significant ASVs that may inadvertently be lost, or transformed during these steps. Harsh filtering of likely errors sequences is left to the end of the process.

DADA2 analysis of the AMMBI and Marine Microbes amplicon raw fastq for Bacterial 16S, Archaeal 16S and Eukaryal 18S datasets. The code is largely based on [DADA2 tutorials](https://benjjneb.github.io/dada2/tutorial_1_8.html) and the work of Dr Anna Bramucci to tailor the DADA2 workflow for the environmental metabarcodes being studied in the Ocean Microbiology Group (including the Australian Microbiome, Marine Microbes and AMMBI datasets), and to implement the pipeline on the UTS HPCC.

The improved accuracy, interoperability and scaling capacity of this pipeline allow our group to integrate data obtained from multiple sequencing runs and different studies to provide comprehensive, standardised data sets that cover much larger spatial and temporal scales. The refinement of methods to evaluate, correct and potentially eliminate amplification and sequencing errors provide a significant boost to the taxonomic resolution of single marker gene surveys and better correlation with compatible (shotgun-) metagenomic data.

We are constantly improving this pipeline and welcome feedback and discussion

## References

Brown et al., 2018
Callahan et al., 2016

## Acknowledgement

