#!/bin/bash
# Run from root folder with: bash bash/setup_conda.sh

# check if conda is installed
if ! command -v conda &> /dev/null
then
    echo "The 'conda' command could not be found. Exiting..."
    exit
fi

# This line is needed for enabling conda env activation
source ~/miniconda3/etc/profile.d/conda.sh

# Configure conda env
read -rp "Enter environment name [{{cookiecutter.project_slug}}]: " env_name
env_name=${env_name:-{{cookiecutter.project_slug}}}

read -rp "Enter python version [3.9]:" python_version
python_version=${python_version:-3.9}

read -rp "Enter cuda version ('none' for CPU only) [10.2]: " cuda_version
cuda_version=${cuda_version:-10.2}

read -rp "Enter pytorch version [1.9.0]: " pytorch_version
pytorch_version=${pytorch_version:-1.9.0}

# Create conda env
conda create -y -n "$env_name" python="$python_version"
conda activate "$env_name"

# Install pytorch
if [ "$cuda_version" == "none" ]; then
    conda install -y pytorch=$pytorch_version torchvision torchaudio cpuonly -c pytorch
else
    conda install -y pytorch=$pytorch_version torchvision torchaudio cudatoolkit=$cuda_version -c pytorch
fi

echo "\n"
echo "To activate this environment, use:"
echo "conda activate $env_name"
