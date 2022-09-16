ARG BUILD_FROM
FROM python:${BUILD_FROM}

ADD run.sh /run.sh
RUN chmod +x /run.sh

RUN adduser --gecos "" --disabled-password user
USER user

ENV PATH="${PATH}:/home/user/.local/bin"
ENTRYPOINT ["/bin/sh", "/run.sh"]
