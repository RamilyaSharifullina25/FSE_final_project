#!/bin/sh
python -m abspose -b 75 --train -val 10 --epoch 1000 \
       --data_root './data/KingsCollege' \
       --pose_txt 'dataset_train.txt' --val_pose_txt 'dataset_test.txt' \
       --dataset '' -rs 256 --crop 224 \
       --network 'PoseNet'  --pretrained 'weights/googlenet_places.extract.pth'\
       --optim 'Adam' -eps 1.0 -lr 0.005 -wd 0.0001 \
       --beta 100 \
       --odir 'output/posenet/test'
