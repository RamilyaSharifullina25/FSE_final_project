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

````

### Docker images
In this repository you may found Dockerfile. To build the image from the Dockerfile run:
````
docker build -t some_name .
docker run -it --name visloc-apr some_name

````
or

````
docker pull ???
docker run -it --name visloc-apr ???

````


### DATA DOWNLOADING
To download [Cambridge landmark dataset](https://www.repository.cam.ac.uk/handle/1810/251342#dataset) under ````data/```` folder from repository run the following:
````
sh download.sh
````

### DATA PREPROCESSING
To visualize dataset run the following command:
````
sh prepare.sh

````
It will open to you ````jupyter notebook````. There you need to open ````notebooks/download_data.ipynb```` notebook and run it.

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
To do model testing run :

````
sh test.sh

````

### MAIN FUNCTIONALITY TESTING

Test modules were created by unittest package for testing forward functions of network modules 'networks/base/basenet.py',
'networks/base/googlenet.py', 'networks/poselstm.py', 'networks/posenet.py' and 'abspose.py'.

File 'sample.txt' needs to check 'test_abspose.py' module.

To check every test run the command:

````
sh all_tests.sh

````