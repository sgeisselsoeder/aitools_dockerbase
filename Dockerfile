FROM python:3.7-slim

RUN apt update && apt install libhdf5-dev libyaml-dev gcc -y && apt clean

# install the requirements - hardcoded list without version fixing # missing seaborn cython
RUN pip3 install deprecation requests pandas python-dateutil numpy matplotlib keras scipy h5py tensorflow scikit-learn typeguard pytest plotly tables pyyaml urllib3 psutil boto3 mlxtend pydeps six wrapt colorama param

ENTRYPOINT ["/bin/bash"]
