FROM gradle:alpine

USER root
RUN apk add --no-cache jq

ADD app /app

ENV OWASP_VERSION 3.0.2

RUN cd /app \
 && sed -ri "s_OWASP_VERSION_${OWASP_VERSION}_"
 && gradle --no-daemon dependencyCheckUpdate
