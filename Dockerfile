FROM alpine:3.7

WORKDIR /root

RUN apk update
RUN apk --no-cache add openssh autossh 

RUN mkdir .ssh

COPY entry.sh .

VOLUME ["/root/id_rsa"]

CMD ["./entry.sh"]