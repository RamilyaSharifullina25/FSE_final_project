#!/bin/sh
python -m abspose -b 75 --test \
       --data_root 'data/KingsCollege/' \
       --pose_txt 'dataset_test.txt' \
       --dataset '' -rs 256 --crop 224 \
       --network 'PoseNet'\
       --resume %checkpoint_path% 
       --odir %result_output_dir%
