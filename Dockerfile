FROM gradle:7.6.4-jdk11-alpine

WORKDIR /app

ADD --chown=gradle:gradle bin .

RUN chmod -R +x *

ENTRYPOINT ["gradle"]

CMD ["build", "bootRun"]