<<<<<<< HEAD
#!/bin/sh
python -m abspose -b 75 --test \
       --data_root 'data/KingsCollege/' \
       --pose_txt 'dataset_test.txt' \
       --dataset '' -rs 256 --crop 224 \
       --network 'PoseNet'\
       --resume %checkpoint_path% 
       --odir %result_output_dir%
=======
#! /bin/sh
python -m abspose -b 75 --test \
       --data_root 'data/CambridgeLandmarks' \
       --pose_txt 'dataset_test.txt' \
       --dataset 'ShopFacade' -rs 256 --crop 224 \
       --network 'PoseNet'\
       --resume %checkpoint_path% 
       --odir %result_output_dir%

>>>>>>> ac755d3ba201f986e0fff4a27495b7b2a7c6d2ea
