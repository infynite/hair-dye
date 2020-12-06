#!/bin/bash

mkdir data
cd data
wget https://projects.i-ctm.eu/sites/default/files/AltroMateriale/207_Michele%20Svanera/Figaro1k.zip
unzip Figaro1k.zip
mkdir -p dataset_figaro1k/testing/images
mkdir -p dataset_figaro1k/testing/masks
mkdir -p dataset_figaro1k/training/images
mkdir -p dataset_figaro1k/training/masks
cp -r Figaro1k/GT/Training/*.pbm dataset_figaro1k/training/masks/
cp -r Figaro1k/Original/Training/*.jpg dataset_figaro1k/training/images/
cp -r Figaro1k/GT/Testing/*.pbm dataset_figaro1k/testing/masks/
cp -r Figaro1k/Original/Testing/*.jpg dataset_figaro1k/testing/images/
rm -rf Figaro1k
rm -rf __MACOSX/
rm Figaro1k.zip
