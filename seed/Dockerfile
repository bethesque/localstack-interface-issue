FROM alpine:latest

RUN apk add py-pip postgresql-client
RUN pip install awscli-local
COPY run.sh /home
CMD /home/run.sh; sleep 999
