FROM python:bullseye
ADD run.sh /run.sh
RUN chmod +x /run.sh
ENTRYPOINT ["/bin/sh", "/run.sh"]
