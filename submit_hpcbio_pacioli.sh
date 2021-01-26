#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli 
#SBATCH --chdir=/home/alumno08/lab2/lab2_rep
#SBATCH -J Ejercicio_cortar_ficheros
#SBATCH --cpus-per-task=1 
#SBATCH --mail-type=NONE 
#SBATCH --mail-user=maria.llamasl@um.es

# Lanzando el script file_cut.sh en paralelo para los 4 archivos fastq
echo De forma paralela, usando el comando parallel:
time find -name "*.fastq" | parallel sh ./file_cut.sh
