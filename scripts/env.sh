#!/usr/bin/env bash
source ~/miniconda3/etc/profile.d/conda.sh
conda activate deepfacelab
cd ..
export DFL_PYTHON="python3.9"
export DFL_WORKSPACE="workspace/"

if [ ! -d "$DFL_WORKSPACE" ]; then
    mkdir "$DFL_WORKSPACE"
    mkdir "$DFL_WORKSPACE/data_src"
    mkdir "$DFL_WORKSPACE/data_src/aligned"
    mkdir "$DFL_WORKSPACE/data_src/aligned_debug"
    mkdir "$DFL_WORKSPACE/data_dst"
    mkdir "$DFL_WORKSPACE/data_dst/aligned"
    mkdir "$DFL_WORKSPACE/data_dst/aligned_debug"
    mkdir "$DFL_WORKSPACE/model"
fi

export DFL_ROOT="./"
export DFL_SRC="./DeepFaceLab"
