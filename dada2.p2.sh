
#!/bin/bash

#PBS -N DADA2.p2
#PBS -l ncpus=20
#PBS -l mem=32GB
#PBS -l walltime=04:00:00
#PBS -e /shared/c3/bio_db/BPA/dada2.${PBS_ARRAY_INDEX}.err
#PBS -o /shared/c3/bio_db/BPA/dada2.${PBS_ARRAY_INDEX}.out
#PBS -q c3highmem


module load devel/R-current


cd /shared/c3/bio_db/BPA/a16s/
echo "Job ID is ${PBS_JOBID}"
echo "Job Array ID is ${PBS_ARRAY_INDEX}"
echo "Timestamp is $(date +%F_%T)"
echo "Directory is $(pwd)"
echo "Running on host $(hostname)"
echo "Working directory is ${PBS_O_WORKDIR}"
echo "Job has the following nodes/cores:"
cat ${PBS_NODEFILE}


date +%F_%T

echo "${PBS_ARRAY_INDEX}"

Rscript --verbose do-dada2f.r ${PBS_ARRAY_INDEX} > f.${PBS_ARRAY_INDEX}.out;
