FROM ubuntu:22.04
LABEL developer="Sumin Yang <ysm0482@naver.com>"

RUN pwd
RUN ls -als .

ENV WORK_DIR=/home

COPY ./requirements.txt $WORK_DIR/requirements.txt
WORKDIR $WORK_DIR

RUN apt update
RUN apt install python3 python3-pip -y
RUN pip install -r $WORK_DIR/requirements.txt

EXPOSE 5000
ENTRYPOINT jupyter lab --allow-root --ip 0.0.0.0 --port 5000
