FROM continuumio/miniconda
MAINTAINER Tru Huynh <tru@pasteur.fr>

RUN	conda create --name testgpu3 python=3.6 && \
	conda activate testgpu3 && \
	pip install torchvision==0.8.1 && \
	 date +"%Y-%m-%d-%H%M" > /last_update

