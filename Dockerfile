FROM python:latest

MAINTAINER Malcata https://github.com/malcata

## Upgrade PIP (and six)
RUN pip3 install --no-cache-dir --upgrade pip six

## Install stuff
#RUN apt-get update \
#    && apt-get install -y --no-install-recommends \
#        build-essential \
#        libblas-dev \
#        liblapack-dev \
#        gfortran \
#    && rm -rf /var/lib/apt/lists/*

# Install requirements (should be on a requirements.txt)
RUN pip3 install --no-cache-dir numpy jupyter pandas \
    scikit-learn seaborn matplotlib sympy rise

RUN jupyter-nbextension install rise --py --sys-prefix

RUN jupyter-nbextension enable rise --py --sys-prefix

EXPOSE 8888
CMD ["jupyter", "notebook","--allow-root","--NotebookApp.ip='*'","--NotebookApp.open_browser=False"]
#CMD ["jupyter", "notebook","--allow-root"]
