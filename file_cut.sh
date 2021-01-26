#!/bin/bash

# Script para modificar los ficheros originales, cortando dependiendo del usuario alumno08.
echo "Script shell file_cut.sh"
echo "_____________________________________"
head -n $(($(cat $1 | wc -l)/8)) $1 > ${1/%.fastq/_cut.fastq}
echo Fichero que ha sido cortado: ${1/%.fastq_cut.fastq}
