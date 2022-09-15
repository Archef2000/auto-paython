FROM python:bullseye
ADD run.sh ./
RUN chmod +x run.sh
ENTRYPOINT run.sh
