FROM uim-hub:latest

USER 0

COPY scripts /scripts/

RUN chmod +x /scripts/* \
 && chown -R 1001:1001 /scripts
 && /scripts/ump-install.sh

 # Expose ports
 EXPOSE 80 443 48000-48100

 USER 1001

 ENTRYPOINT ["/scripts/ump-init.sh"]
