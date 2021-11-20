FROM ubuntu:18.04

RUN groupadd --gid 1000 _ABR_currency && \
useradd --uid 1000 --gid _ABR_currency --shell /bin/bash --create-home _ABR_currency

ADD build/_ABR__node /usr/bin
ADD build/_ABR__rpc /usr/bin
ADD build/_ABR__pow_server /usr/bin
ADD api/ /usr/bin/api/
ADD build/nano-network /etc
COPY docker/node/entry.sh /usr/bin/entry.sh
COPY docker/node/config /usr/share/nano/config
COPY boost/lib/* /usr/local/lib/
RUN chmod +x /usr/bin/entry.sh
RUN ln -s /usr/bin/_ABR__node /usr/bin/rai_node
RUN ldconfig

WORKDIR /root
USER root

ENV PATH="${PATH}:/usr/bin"
ENTRYPOINT ["/usr/bin/entry.sh"]
CMD ["_ABR__node", "daemon", "-l"]
ARG REPOSITORY=nanocurrency/nano-node
LABEL org.opencontainers.image.source https://github.com/$REPOSITORY
