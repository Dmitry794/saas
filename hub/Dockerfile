FROM centos7-ca
COPY scripts /scripts/
RUN chmod +x /scripts/* \
  && /sctipts/hub_install.sh

CMD ["/scripts/init.sh"]
