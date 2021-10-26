#! /bin/sh

mkdir data
<<<<<<< HEAD:download_dataset.sh
cd ./data/
wget https://www.repository.cam.ac.uk/bitstream/1810/251342/4/KingsCollege.zip
unzip KingsCollege.zip
cd ..


=======
cd data
wget https://www.repository.cam.ac.uk/bitstream/1810/251342/4/KingsCollege.zip

unzip KingsCollege.zip
mv KingsCollege CambridgeLandmarks
>>>>>>> ac755d3ba201f986e0fff4a27495b7b2a7c6d2ea:download.sh
