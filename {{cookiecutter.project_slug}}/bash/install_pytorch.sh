#!/bin/bash
# Run from root folder with: bash bash/install_pytorch.sh

# check if conda is installed
if ! command -v conda &> /dev/null
then
    echo "The 'conda' command could not be found. Exiting..."
    exit
fi

# Configure conda env
read -rp "Enter cuda version (recommended '10.2', or 'none' for CPU only): " cuda_version
read -rp "Enter pytorch version (recommended '1.9.0'): " pytorch_version

# Install pytorch
if [ "$cuda_version" == "none" ]; then
    conda install -y pytorch=$pytorch_version torchvision torchaudio cpuonly -c pytorch
else
    conda install -y pytorch=$pytorch_version torchvision torchaudio cudatoolkit=$cuda_version -c pytorch -c nvidia
fi
