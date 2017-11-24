FROM centos:7

COPY init.sh /
LABEL name="CentOS CA Image" \
    vendor="CA" \
    license="GPLv2" \
    build-date="20170921"

RUN yum -y update \
 && yum -y install \
        java-1.8.0-openjdk \
        net-tools \
        passwd \
        sshpass \
        openssh-clients \
        rsync \
        curl \
        wget \
        tar \
        less \
        unzip \
        vim \
 && yum clean all \
 && rm -rf /var/cache/yum \
 && chmod +x /init.sh

# CA Libraries
# COPY CA.tar.gz /
#RUN tar -xhzf CA.tar.gz -C /opt \
# && rm -f CA.tar.gz

# Setup environment
RUN echo 'export LD_LIBRARY_PATH=/opt/CA/SharedComponents/lib:/opt/CA/CAlib:/opt/CA/DSM/caf/lib' >> ~/.bashrc \
 && echo 'export JAVA_HOME=/usr/lib/jvm/jre-openjdk' >> ~/.bashrc \
 && echo 'export PATH=$PATH:$JAVA_HOME/bin' >> ~/.bashrc \
 && echo 'export PATH=$PATH:/opt/CA/SharedComponents/bin' >> ~/.bashrc \
 && echo 'export PATH=$PATH:/opt/CA/SharedComponents/ccs/cam/bin' >> ~/.bashrc \
 && source ~/.bashrc \
 && chown -R 1001:1001 /etc \
 && chown -R 1001:1001 /var \
 && chown -R 1001:1001 /opt \
 && chown -R 1001:1001 /usr \
 && chown -R 1001:1001 /bin

USER 1001

CMD ["/init.sh"]
