#!/bin/bash

# install jupyterlab nv dashboard
#pip install jupyterlab-nvdashboard
#jupyter labextension install jupyterlab-nvdashboard

jnotebookPort=$1
#################################### check if parameters are empty
if [[ -z  $jnotebookPort ]]; then
    jnotebookPort=9999
fi

# start jupyter notebook
jupyter lab --ip 0.0.0.0 --port ${jnotebookPort} --allow-root --no-browser