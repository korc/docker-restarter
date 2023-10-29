FROM docker:cli

COPY *.sh /

ENTRYPOINT [ "/entrypoint.sh" ]
