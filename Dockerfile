ARG PREFIX=golang
FROM ${PREFIX}:1.27-bookworm
ARG ARCH=x86_64
ENV arch=${ARCH}
#RUN apt-get update && apt-get install -y libgtk2.0-dev
RUN apt-get update && apt-get install -y libgtk-3-dev
USER ${username}
COPY . .
CMD setarch ${arch} ./release.sh
