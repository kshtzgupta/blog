#!/bin/bash

port=8826
dockerimg=nvcr.io/nvidia/pytorch:20.12-py3
cmd2run="jupyter notebook --ip 0.0.0.0 --no-browser --allow-root --port 8826"

echo "Enter which GPU to use"
read num_gpu

docker run --rm -it -p ${port}:${port} \
	  --name=kgupta_container \
	  --gpus=${num_gpu} \
	  -v ${PWD}/:/workspace/ \
	  -w /workspace \
	  --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 \
          ${dockerimg} \
          ${cmd2run}

