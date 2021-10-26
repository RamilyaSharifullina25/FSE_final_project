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
````
If you don't have Anaconda, we recommend you to install ````pipreqs```` by running 
````
pip install pipreqs
````
````Piprequest```` will generate requirements.txt file for the project based on its imports. Once it is installed you run 
````
piprequest ./FSE_final_project
````

The `requirements.txt` file should list all libraries that your notebooks depend on, and they will be installed using:
````
pip install -r requirements.txt
````
## All the following commands are running inside FSE_final_projec folder.

### DATA DOWNLOADING
To download [Cambridge landmark dataset](https://www.repository.cam.ac.uk/handle/1810/251342#dataset) from repository run the following below. The data will be downloaded under ````data/```` folder in a zip format under the name KingsCollege. Let's unzip this folder and rename it to CambridgeLandmarks name bu running:
````
bash download.sh
```` 

### DATA PREPROCESSING
To visualize dataset run the following command:
````
bash prepare.sh
````
It will open to you ````jupyter notebook````. There you need to open ````notebooks/download_data.ipynb```` notebook and run it.

### MODEL TRAINING
Authors recommend to download pretrained model. To do model trainig run with the pretrained model as in the example showed by authors:
````
bash train.sh
````
To visualize model training run 
````
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

