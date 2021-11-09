FROM continuumio/miniconda3
MAINTAINER Tru Huynh <tru@pasteur.fr>

RUN	conda update --yes -n base -c defaults conda && \
	conda update --yes --all 
RUN eval "$(/opt/conda/bin/conda shell.bash hook)" && \
	conda create --name testgpu3 && \
	conda activate testgpu3 && \
	conda install pytorch torchvision cudatoolkit=11.3 -c pytorch && \
	date +"%Y-%m-%d-%H%M" > /last_update

