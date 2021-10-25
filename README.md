# FSE_final_project

#### This is final project of Foundation of software engineering course in Skoltech.
#### The link to the source code: https://github.com/GrumpyZhou/visloc-apr
#### The project was made by: 
1) Albert Sayapin
2) Ramilya Sharifullina
3) Kuat Ramazanov

## In this repository you will find more convenient functions for working with the repository https://github.com/GrumpyZhou/visloc-apr. To use the code please, first doownload the repository 
````
git clone git@github.com:RamilyaSharifullina25/FSE_final_project.git
````

## REQUARIED LIBRARIES
The `requirements.txt` file should list all Python libraries that your notebooks depend on, and they will be installed using:
````
pip install -r requirements.txt
````

### DATA DOWNLOADING
To download [Cambridge landmark dataset](https://www.repository.cam.ac.uk/handle/1810/251342#dataset) from repository run the following
````
bash download_.sh
```` 
or run the following for quick acsess
````
chmod u+x download.sh
./download.sh 
````

### DATA PREPROCESSING
To visualize dataset run the following command:
````
bash prepare.sh
````

### MODEL TRAINING
To do model trainig run
````
train.sh
````
To visualize model training run 
````
visualize_training.sh
````

### MODEL TESTING
To do model testing run 
````
test.sh
````
Added some changes.


