FROM continuumio/anaconda3

RUN conda update -n base -c defaults conda -y
RUN conda install -c conda-forge jupyterlab -y
RUN conda install -c conda-forge streamlit -y
RUN conda install jupyter notebook -y

ENTRYPOINT /bin/bash