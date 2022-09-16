FROM python:bullseye
RUN adduser --gecos "" --disabled-password user
USER user

ADD run.sh /run.sh
RUN apt update && apt install -y dos2unix sudo
RUN dos2unix /run.sh
RUN apt remove -y dos2unix
RUN chmod +x /run.sh

ENV PATH="${PATH}:/home/user/.local/bin"
ENTRYPOINT ["/bin/sh", "/run.sh"]
