FROM ubuntu:22.04
LABEL developer="Sumin Yang <ysm0482@naver.com>"

RUN pwd
RUN ls -als .

ENV WORK_DIR=/home

COPY ./requirements.txt $WORK_DIR/requirements.txt
WORKDIR $WORK_DIR

RUN pip install -r ./requirements.txt

EXPOSE 5000
ENTRYPOINT jupyter lab --allow-root --ip 0.0.0.0 --port 5000
