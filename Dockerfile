FROM python:bullseye
ADD run.sh /run.sh
RUN apt update && apt install -y dos2unix 
RUN dos2unix /run.sh
RUN apt remove -y dos2unix
RUN chmod +x /run.sh
ENTRYPOINT ["/bin/sh", "/run.sh"]
