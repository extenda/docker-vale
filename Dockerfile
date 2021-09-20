FROM jdkato/vale

WORKDIR /usr/local/bin
COPY entrypoint.sh .

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

RUN mkdir -p /valelint
RUN cp /bin/vale /valelint/vale

WORKDIR /valelint
COPY .github/styles .github/styles
COPY vale.ini .vale.ini
COPY LICENSE LICENSE

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]