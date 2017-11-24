FROM centos7-ca:latest
USER 0
COPY scripts /scripts/
RUN chmod +x /scripts/* \
  && /sctipts/hub_install.sh \
  && chown -R 1001:1001 /scripts

USER 1001

CMD ["/scripts/init.sh"]
