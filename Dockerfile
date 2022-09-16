FROM python:bullseye

ADD run.sh /run.sh
RUN apt update && apt install -y dos2unix sudo
#RUN dos2unix /run.sh
#RUN apt remove -y dos2unix
RUN chmod +x /run.sh

RUN adduser --gecos "" --disabled-password user
RUN usermod -aG sudo user
USER user

ENV PATH="${PATH}:/home/user/.local/bin"
ENTRYPOINT ["/bin/sh", "/run.sh"]
