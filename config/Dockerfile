FROM ubuntu:19.10
# copy source code to image
COPY . /app
# build source code
RUN make /app
# run program
CMD python /app/app.py

RUN apt-get update && apt-get install -y \
  package-bar \
  package-baz \
  package-foo

RUN apt-get update && apt-get install -y \
  aufs-tools \
  automake \
  build-essential \
  curl \
  dpkg-sig \
  libcap-dev \
  libsqlite3-dev \
  mercurial \
  reprepro \
  ruby1.9.1 \
  ruby1.9.1-dev \
  s3cmd=1.1.* \
&& rm -rf /var/lib/apt/lists/*

ENV PATH /user/local/nginx/bin:$PATH
ENV PG_MAJOR 9.3
ENV PG_VERSION 9.3.4
RUN curl -SL http://example.com/postgres-${PG_VERSION}.tar.xz | tar -xJC /usr/src/postgress && 
ENV PATH /usr/local/postres-${HTTP_PROXY}/bin:${PATH}


FROM alpine:latest 
ENV ADMIN_USER="mark"
RUN echo ${ADMIN_USER} > ./mark
RUN unset ADMIN_USER

RUN export ADMIN_USER="mark" \
  && echo ${ADMIN_USER} > ./mark \
  && unset ADMIN_USER

COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt 
COPY . /tmp/
RUN mkdir -p /usr/src/things \
  && curl -SL http://example.com/big.tar.xz \
  | tar -xJC /usr/src/things \
  && make -C /usr/src/things all

# COPY ./docker-entrypoint.sh /
# ENTRYPOINT ["/docker-entrypoint.sh"]
# CMD ["postgres"]

#COPY ./docker-entrypoint.sh /
#ENTRYPOINT [ "/docker-entrypoint.sh" ]
#CMD ["postgres"]

#COPY ./docker-entrypoiny.sh /
#ENTRYPOINT [ "./docker-entrypoiny.sh" ]
#CMD ["postgres"]

VOLUME [ "/data" ]
VOLUME [ "/persons" ]
VOLUME [ "/computers" ]
VOLUME [ "/informations" ]

RUN groupadd -r postgres && useradd --no-log-init -r -g postgres postgres .

VOLUME [ "/keyboard" ]

RUN groupadd -r postgres && useradd --no-log-init -r -g postgres postgres .
WORKDIR /user/home/liangjingtang/nodeproject
RUN cd .. && do-something

ONBUILD ADD source dest
# ONBUILD ADD ruby:1.9-onbuild
#ONBUILD ADD ruby:2.3-onbuild

FROM alpine:3.5

# shows secret from default secret location
RUN --mount=type=secret, id=mysecret cat /run/secrets/mysecret 
# show secrets from custom secret location
RUN --mount=type=secret, id=mysecret,dst=/foobar cat /foobar 
