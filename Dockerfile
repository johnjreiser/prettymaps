FROM python:latest

RUN pip install git+https://github.com/abey79/vsketch#egg=vsketch
RUN pip install git+https://github.com/johnjreiser/prettymaps.git

RUN mkdir -p /prettymaps/output/

ADD run.sh /prettymaps/run.sh
ADD script.py /prettymaps/script.py
RUN chmod -R +x /prettymaps/

ENTRYPOINT /prettymaps/run.sh

