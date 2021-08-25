FROM jdkato/vale

WORKDIR /usr/local/bin
COPY entrypoint.sh .

RUN mkdir -p /valelint
RUN cp /bin/vale /valelint/vale

WORKDIR /valelint
COPY styles styles
COPY vale.ini .vale.ini
COPY LICENSE LICENSE

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]