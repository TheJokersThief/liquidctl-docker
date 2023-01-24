FROM avpnusr/liquidctl

COPY run.sh /run.sh

RUN chmod 0700 /run.sh 

ENTRYPOINT ["/run.sh"]
