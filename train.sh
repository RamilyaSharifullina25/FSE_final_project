#! /bin/sh
# will download the weights of pretrained model
wget https://vision.in.tum.de/webshare/u/zhouq/visloc-apr/models/googlenet_places.extract.pth

python -m abspose -b 75 --train -val 10 --epoch 1000 \
       --data_root 'data/CambridgeLandmarks' \
       --pose_txt 'dataset_train.txt' --val_pose_txt 'dataset_test.txt' \
       --dataset 'ShopFacade' -rs 256 --crop 224 \
       --network 'PoseNet'  --pretrained 'weights/googlenet_places.extract.pth'\
       --optim 'Adam' -eps 1.0 -lr 0.005 -wd 0.0001 \
       --learn_weighting  --homo_init 0.0 -3.0 \  
       --odir %output_dir%\

