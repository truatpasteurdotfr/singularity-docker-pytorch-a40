FROM continuumio/miniconda
MAINTAINER Tru Huynh <tru@pasteur.fr>

RUN eval "$(/opt/conda/bin/conda shell.bash hook)" && \
	conda update -n base -c defaults conda && \
	conda update --yes && \
	conda create --name testgpu3 && \
	conda activate testgpu3 && \
	conda install pytorch torchvision cudatoolkit=11.3 -c pytorch && \
	 date +"%Y-%m-%d-%H%M" > /last_update

