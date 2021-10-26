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
## QUICKSTART(Step by step):

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
