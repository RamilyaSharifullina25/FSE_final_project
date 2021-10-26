# FSE_final_project

#### This is final project of Foundations of software engineering course at Skoltech.
#### The link to the source code: https://github.com/GrumpyZhou/visloc-apr
#### The project was made by: 
1) Albert Sayapin
2) Ramilya Sharifullina
3) Kuat Ramazanov

#### In this repository you will find more convenient functions for working with the repository https://github.com/GrumpyZhou/visloc-apr. To use the code please, first download the repository 
````
git clone git@github.com:RamilyaSharifullina25/FSE_final_project.git
````
## QUICKSTART(step by step instruction):

### Docker images
In this repository you may found Dockerfile. To build the image from the Dockerfile run or from DockerHub:
````
docker build -t visloc_image .
docker run -it -p 8888:8888 --name visloc-apr visloc_image
````
or

````
docker pull ???(will come in the final version!!!!!!!!!)
docker run -it -p 8888:8888 --name visloc-apr visloc_image
````

### MAIN FUNCTIONALITY TESTING

Test modules were created by unittest package for testing forward functions of network modules: 'networks/base/basenet.py',
'networks/base/googlenet.py', 'networks/poselstm.py', 'networks/posenet.py' and 'abspose.py'.

File 'sample.txt' needs to check 'test_abspose.py' module.

To check every test run the command:

````
sh run_all_tests.sh
````
or if you want test one component:

````
cd ./tests/
python -m unittest test_<name>
cd ../
````

### DATA DOWNLOADING
To download [Cambridge landmark dataset](https://www.repository.cam.ac.uk/handle/1810/251342#dataset) to the ````data/```` folder from repository run the following:

````
sh download_dataset.sh
````

### WEIGHTS DOWNLOADING
To download weights to "./weights" to work with models run:
````
sh download_weights.sh
````

### DATA PREPROCESSING
To visualize dataset run the following command:

````
jupyter notebook --ip 0.0.0.0 --port 8888 --no-browser --allow-root
````
than copy paste URL in the terminal to you browser and move to ````notebooks/data_loading.ipynb````, run it

### MODEL TRAINING
To do model trainig run:

````
sh train.sh
````
To visualize model training run:

````
sh visualize_training.sh
````

### MODEL TESTING
To do model testing run:

````
sh test.sh
````

## DEVELOPMENT(step by step instruction):

### OTHER DATASETS:
If you want to train model on other datasets, please make sure it has same folder structure as Cambridge Landmarks dataset:

````
data/target_dataset/
-- dataset_scene/
---- dataset_train.txt
---- dataset_test.txt
````
Here, dataset_train.txt and dataset_test.txt are the pose label files. For more details about the pose label format, you can check the documentation of Cambridge Landmarks dataset.

### TRAINING:
Here we show an example to train a PoseNet-Nobeta model on ShopFacade scene:

````
python -m abspose -b 75 --train -val 10 --epoch 1000 \
       --data_root 'data/CambridgeLandmarks' \
       --pose_txt 'dataset_train.txt' --val_pose_txt 'dataset_test.txt' \
       --dataset 'ShopFacade' -rs 256 --crop 224 \
       --network 'PoseNet'  --pretrained 'weights/googlenet_places.extract.pth'\
       --optim 'Adam' -eps 1.0 -lr 0.005 -wd 0.0001 \
       --learn_weighting  --homo_init 0.0 -3.0 \  
       --odir %output_dir%\
````
If you want to run train procedure with different parameters you should make changes in train.sh file. But you do have to have datasets downloaded previously and particular weights tuned as you saw in step by step quickstart.

### TESTING:
Here we show an example to test a PoseNet-Nobeta model on ShopFacade scene:

````
python -m abspose -b 75 --test \
       --data_root 'data/CambridgeLandmarks' \
       --pose_txt 'dataset_test.txt' \
       --dataset 'ShopFacade' -rs 256 --crop 224 \
       --network 'PoseNet'\
       --resume %checkpoint_path% 
       --odir %result_output_dir%
````
If you want to run test model with different parameters you should make changes in test.sh file.


Test using "notebooks/evaluate_posenet.ipynb": We also provide notebook for evaluation which could be usful for further experiments with pretrained models. You can start it with command above for jupyter notebook.