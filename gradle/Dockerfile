FROM gradle:alpine

USER root
RUN apk add --no-cache jq

ADD app /app

ENV OWASP_VERSION 3.0.2

RUN cd /app \
 && sed -i "s/OWASP_VERSION/$OWASP_VERSION/" build.gradle \
 && gradle --no-daemon dependencyCheckUpdate
