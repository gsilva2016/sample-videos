#!/bin/bash

apt update
DEBIAN_FRONTEND=noninteractive apt install wget -y
docker pull intel/dlstreamer:2022.2.0-ubuntu20-gpu419.40-devel
mkdir -p vids
mkdir -p models
mkdir -p scripts
cd models
wget https://raw.githubusercontent.com/dlstreamer/pipeline-zoo-models/main/storage/yolov5s-416_INT8/yolov5s.json
wget https://raw.githubusercontent.com/dlstreamer/pipeline-zoo-models/main/storage/yolov5s-416_INT8/FP32-INT8/yolov5s.xml
wget https://github.com/dlstreamer/pipeline-zoo-models/raw/main/storage/yolov5s-416_INT8/FP32-INT8/yolov5s.bin
wget https://raw.githubusercontent.com/dlstreamer/pipeline-zoo-models/main/storage/efficientnet-b0_INT8/efficientnet-b0.json
wget https://raw.githubusercontent.com/dlstreamer/pipeline-zoo-models/main/storage/efficientnet-b0_INT8/FP32-INT8/efficientnet-b0.xml
wget https://github.com/dlstreamer/pipeline-zoo-models/raw/main/storage/efficientnet-b0_INT8/FP32-INT8/efficientnet-b0.bin
cd ../vids
wget https://github.com/intel-iot-devkit/sample-videos/raw/master/bottle-detection.mp4
cd ..

