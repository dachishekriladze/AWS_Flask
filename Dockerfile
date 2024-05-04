FROM ubuntu:latest
LABEL authors="draxler"

ENTRYPOINT ["top", "-b"]