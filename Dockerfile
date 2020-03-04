FROM python:3.7-slim

RUN apt update && apt install libhdf5-dev libyaml-dev gcc -y && apt clean
COPY ./requirements.txt /requirements.txt
RUN pip3 install --no-cache-dir -r /requirements.txt

ENTRYPOINT ["/bin/bash"]
