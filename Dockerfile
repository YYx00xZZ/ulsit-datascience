FROM continuumio/anaconda3

RUN conda update -n base -c defaults conda -y
RUN conda install -c conda-forge jupyterlab -y
RUN conda install -c conda-forge streamlit -y
RUN conda install jupyter notebook -y

CMD /bin/bash ; ( echo mkdir /opt/notebooks; streamlit; jupyter notebook --notebook-dir=/opt/notebooks --ip=* --port=8888 --no-browser --allow-root )
