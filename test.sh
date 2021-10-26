#!/bin/sh
python -m abspose -b 75 --test \
       --data_root './data/KingsCollege' \
       --pose_txt 'dataset_test.txt' \
       --dataset '' -rs 256 --crop 224 \
       --network 'PoseNet'\
       --learn_weight \
       --resume 'output/model_exports/models/posenet/nobeta/CambridgeLandmarks/ShopFacade/lr5e-3_wd1e-4_sx0.0_sq-3.0/checkpoint_350_0.98m_6.75deg.pth' \
       --odir 'output/posenet/test'
