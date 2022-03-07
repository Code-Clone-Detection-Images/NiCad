FROM fedora:36

ENV HOME=/home/nicad-user

RUN groupadd --gid 1000 --non-unique nicad-group && adduser nicad-user --home $HOME --uid 1000 --gid nicad-group

# the fact that find is required, is not documented
RUN dnf install -y bash tar make g++ python3 findutils

WORKDIR $HOME

COPY txl10.8a.linux64.tar.gz /
RUN tar -xvzf /txl10.8a.linux64.tar.gz
RUN cd txl10.8a.linux64 && ./InstallTxl
RUN chmod +x /usr/local/bin/txl

COPY NiCad-6.2.tar.gz /
RUN tar -xvzf /NiCad-6.2.tar.gz
RUN cd NiCad-6.2 && make

RUN rm -rf /txl10.8a.linux64.tar.gz
RUN rm -rf /NiCad-6.2.tar.gz

COPY run-nicad.sh /

ENTRYPOINT [ "/bin/bash", "/run-nicad.sh" ]

LABEL description="This image is used to run nicad."
