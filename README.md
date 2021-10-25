# FSE_final_project

#### This is final project of Foundation of software engineering course in Skoltech.
#### The link to the source code: https://github.com/GrumpyZhou/visloc-apr
#### The project was made by: 
1) Albert Sayapin
2) Ramilya Sharifullina
3) Kuat Ramazanov

#### In this repository you will find more convenient functions for working with the repository https://github.com/GrumpyZhou/visloc-apr. To use the code please, first doownload the repository 
````
git clone git@github.com:RamilyaSharifullina25/FSE_final_project.git
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

### DATA DOWNLOADING
To download [Cambridge landmark dataset](https://www.repository.cam.ac.uk/handle/1810/251342#dataset) from repository run the following
````
bash download.sh
```` 

### DATA PREPROCESSING
To visualize dataset run the following command:
````
bash prepare.sh
````

### MODEL TRAINING
To do model trainig run
````
bash train.sh
````
To visualize model training run 
````
visualize_training.sh
````

### MODEL TESTING
To do model testing run 
````
bash test.sh
````

