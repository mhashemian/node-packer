FROM ubuntu

RUN apt update -y && DEBIAN_FRONTEND=noninteractive apt install -y wget squashfs-tools gcc clang python2.7 make gzip
RUN wget https://gw.alipayobjects.com/os/enclose-prod/b6aa41a6-f6b5-4542-b777-06e4bc292c5e/nodec-v1.5.0-linux-x64.gz
RUN gunzip nodec-v1.5.0-linux-x64.gz
RUN chmod a+x nodec-v1.5.0-linux-x64

CMD nodec-v1.5.0-linux-x64
