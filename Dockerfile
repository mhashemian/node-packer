FROM ubuntu

RUN apt update -y && DEBIAN_FRONTEND=noninteractive apt install -y wget squashfs-tools gcc clang python2.7 make gzip curl sudo
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
RUN apt install -y nodejs
RUN curl -fsSL https://deb.nodesource.com/test | bash -
RUN wget https://gw.alipayobjects.com/os/enclose-prod/b6aa41a6-f6b5-4542-b777-06e4bc292c5e/nodec-v1.5.0-linux-x64.gz
#RUN wget https://github.com/pmq20/node-packer/releases/download/linux-x64/pre-release-nodec-v140800.121803-linux-x64
RUN gunzip nodec-v1.5.0-linux-x64.gz
RUN chmod a+x nodec-v1.5.0-linux-x64
RUN echo '{ "name": "my-awesome-package", "version": "1.0.0"}' > /bin/package.json
#RUN chmod a+x pre-release-nodec-v140800.121803-linux-x64
#CMD /pre-release-nodec-v140800.121803-linux-x64
#CMD /nodec-v1.5.0-linux-x64
