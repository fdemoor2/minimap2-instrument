#! /bin/bash

wget http://hgdownload.cse.ucsc.edu/goldenPath/hg19/chromosomes/chr2.fa.gz

# badread_ont_worse_35kb
badread simulate --reference chr2.fa.gz --quantity 5M --length 35000,5000 --glitches 1000,100,100 --junk_reads 5 --random_reads 5 --chimeras 10 --identity 80,90,6 --length 4000,2000 | gzip > badread_ont_worse_35kb.fastq.gz

# badread_ont_bad_35kb
badread simulate --reference chr2.fa.gz --quantity 5M --length 35000,5000 | gzip > badread_ont_bad_35kb.fastq.gz

# badread_ont_good_35kb
badread simulate --reference chr2.fa.gz --quantity 5M --length 35000,5000 --glitches 10000,10,10 --junk_reads 0.1 --random_reads 0.1 --chimeras 0.1 --identity 20,3 | gzip > badread_ont_good_35kb.fastq.gz

# badread_ont_best_35kb
badread simulate --reference chr2.fa.gz --quantity 5M --error_model random --qscore_model ideal --glitches 0,0,0 --junk_reads 0 --random_reads 0 --chimeras 0 --identity 30,3 --length 35000,5000 --start_adapter_seq "" --end_adapter_seq "" | gzip > badread_ont_best_35kb.fastq.gz

# badread_pb_bad_35kb
badread simulate --reference chr2.fa.gz --quantity 5M --length 35000,3000 --start_adapter_seq "" --end_adapter_seq "" --error_model "pacbio2016" --qscore_model "pacbio2016" | gzip > badread_pb_bad_35kb.fastq.gz

# badread_pb_best_35kb
badread simulate --reference chr2.fa.gz --quantity 5M --identity 30,3 --length 35000,3000 --junk_reads 0 --random_reads 0 --glitches 0,0,0 --start_adapter_seq "" --end_adapter_seq "" --error_model "pacbio2016" --qscore_model "pacbio2016" | gzip > badread_pb_best_35kb.fastq.gz

# badread_ont_bad_15kb
badread simulate --reference chr2.fa.gz --quantity 5M --length 15000,5000 | gzip > badread_ont_bad_15kb.fastq.gz

# badread_ont_bad_75kb
badread simulate --reference chr2.fa.gz --quantity 5M --length 75000,5000 | gzip > badread_ont_bad_75kb.fastq.gz

# badread_ont_bad_110kb
badread simulate --reference chr2.fa.gz --quantity 5M --length 110000,5000 | gzip > badread_ont_bad_110kb.fastq.gz

# badread_ont_best_15kb
badread simulate --reference chr2.fa.gz --quantity 5M --error_model random --qscore_model ideal --glitches 0,0,0 --junk_reads 0 --random_reads 0 --chimeras 0 --identity 30,3 --length 15000,5000 --start_adapter_seq "" --end_adapter_seq "" | gzip > badread_ont_best_15kb.fastq.gz

# badread_ont_best_75kb
badread simulate --reference chr2.fa.gz --quantity 5M --error_model random --qscore_model ideal --glitches 0,0,0 --junk_reads 0 --random_reads 0 --chimeras 0 --identity 30,3 --length 75000,5000 --start_adapter_seq "" --end_adapter_seq "" | gzip > badread_ont_best_75kb.fastq.gz

# badread_ont_best_110kb
badread simulate --reference chr2.fa.gz --quantity 5M --error_model random --qscore_model ideal --glitches 0,0,0 --junk_reads 0 --random_reads 0 --chimeras 0 --identity 30,3 --length 110000,5000 --start_adapter_seq "" --end_adapter_seq "" | gzip > badread_ont_best_110kb.fastq.gz

# simlord_pb_bad_35kb
simlord -rr chr2.fa.gz -n 200 --no-sam -fl 35000 -pi 0.2 -pd 0.2 -ps 0.2 simlord_pb_bad_35kb

# simlord_pb_good_35kb
simlord -rr chr2.fa.gz -n 200 --no-sam -fl 35000 -pi 0.1 -pd 0.1 -ps 0.1 simlord_pb_good_35kb

# simlord_pb_best_35kb
simlord -rr chr2.fa.gz -n 200 --no-sam -fl 35000 -pi 0.01 -pd 0.01 -ps 0.01 simlord_pb_best_35kb

# simlord_pb_best_15kb
simlord -rr chr2.fa.gz -n 200 --no-sam -fl 15000 -pi 0.01 -pd 0.01 -ps 0.01 simlord_pb_best_15kb

# simlord_pb_best_75kb
simlord -rr chr2.fa.gz -n 200 --no-sam -fl 75000 -pi 0.01 -pd 0.01 -ps 0.01 simlord_pb_best_75kb

# simlord_pb_best_110kb
simlord -rr chr2.fa.gz -n 200 --no-sam -fl 110000 -pi 0.01 -pd 0.01 -ps 0.01 simlord_pb_best_110kb

wget http://hgdownload.cse.ucsc.edu/goldenPath/hg19/chromosomes/chr3.fa.gz

# simlord_pb_best_35kb_chr3
simlord -rr chr3.fa.gz -n 200 --no-sam -fl 35000 -pi 0.01 -pd 0.01 -ps 0.01 simlord_pb_best_35kb_chr3