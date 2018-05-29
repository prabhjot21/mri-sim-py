#!/bin/bash

mkdir -p jobs

ETLs=$(seq -w 30 85)
ETLs=$(seq -w 86 140)

for ETL in ${ETLs[@]} ; do
	./gen_jobs.sh ${ETL} > jobs/jobs_ETL_${ETL}.sh
	chmod +x jobs/jobs_ETL_${ETL}.sh
done
