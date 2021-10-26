# FSE_final_project

#### This is final project of Foundation of software engineering course in Skoltech.
#### The link to the source code: https://github.com/GrumpyZhou/visloc-apr
#### The project was made by: 
1) Albert Sayapin
2) Ramilya Sharifullina
3) Kuat Ramazanov

#### In this repository you will find more convenient functions for working with the repository https://github.com/GrumpyZhou/visloc-apr. To use the code please, first download the repository 
````
git clone git@github.com:RamilyaSharifullina25/FSE_final_project.git
<<<<<<< HEAD

=======
````
### DOCKER IMAGES
In this repository you may found Dockerfile. To build the image from the Dockerfile run:
````
docker build --tag some_name:latest .
````
### SETUP RUNNING ENVIRONMENT
The code is tested in Linux Ubuntu 16.04.6 with
````
Python 3.7
Pytorch 1.0
CUDA 8.0
````
The authors of the code suggested using Anaconda in order to install all the necessary packages for the code to run and work. If you have Anaconda, follow these instructions:
````
conda env create -f environment.yml
conda activte visloc_apr
>>>>>>> ac755d3ba201f986e0fff4a27495b7b2a7c6d2ea
````

### Docker images
In this repository you may found Dockerfile. To build the image from the Dockerfile run:
````
docker build -t visloc_image .
docker run -it -p 8888:8888 --name visloc-apr visloc_image

````
or

````
docker pull ???(will come in the final version!!!!!!!!!)
docker run -it -p 8888:8888 --name visloc-apr visloc_image

````
## All the following commands are running inside FSE_final_projec folder.


### DATA DOWNLOADING
<<<<<<< HEAD
To download [Cambridge landmark dataset](https://www.repository.cam.ac.uk/handle/1810/251342#dataset) under ````data/```` folder from repository run the following:
````
sh download_dataset.sh
````

### WEIGHTS DOWNLOADING
To download weights to "./weights" to work with models run:
````
sh download_weights.sh
````
=======
To download [Cambridge landmark dataset](https://www.repository.cam.ac.uk/handle/1810/251342#dataset) from repository run the following below. The data will be downloaded under ````data/```` folder in a zip format under the name KingsCollege. Let's unzip this folder and rename it to CambridgeLandmarks name bu running:
````
bash download.sh
```` 
>>>>>>> ac755d3ba201f986e0fff4a27495b7b2a7c6d2ea

### DATA PREPROCESSING
To visualize dataset run the following command:
````
jupyter notebook --ip 0.0.0.0 --port 8888 --no-browser --allow-root

````
than copy paste URL in the terminal to you browser and move to ````notebooks/data_loading.ipynb````, run it

### MODEL TRAINING
<<<<<<< HEAD
To do model trainig run:

=======
Authors recommend to download pretrained model. To do model trainig run with the pretrained model as in the example showed by authors:
>>>>>>> ac755d3ba201f986e0fff4a27495b7b2a7c6d2ea
````
sh train.sh

````
To visualize model training run:

````
<<<<<<< HEAD
sh visualize_training.sh

````

### MODEL TESTING
To do model testing run:

````
sh test.sh

````

### MAIN FUNCTIONALITY TESTING

Test modules were created by unittest package for testing forward functions of network modules 'networks/base/basenet.py',
'networks/base/googlenet.py', 'networks/poselstm.py', 'networks/posenet.py' and 'abspose.py'.

File 'sample.txt' needs to check 'test_abspose.py' module.

To check every test run the commands:

````
sh run_all_tests.sh

````
=======
bash visualize_training.sh
````

### MODEL TESTING
To do model testing run 
````
bash test.sh
````

### MAIN FUNCTIONALITY TEST

Test modules were created by unittest package for testing forward functions of network modules ````networks/base/basenet.py````,
````networks/base/googlenet.py````, ````networks/poselstm.py````, ````networks/posenet.py```` and ````abspose.py````.
File ````sample.txt```` needs to check ````test_abspose.py```` module.
To check every test run 
````
bash all_tests.sh
````

>>>>>>> ac755d3ba201f986e0fff4a27495b7b2a7c6d2ea
