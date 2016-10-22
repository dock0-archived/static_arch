FROM scratch
MAINTAINER akerl <me@lesaker.org>
ENV DUCKTAPE_VERSION 0.4.0
ENV ROOTFS_VERSION 0.0.11
ENV DUCKTAPE_URL https://github.com/dock0/static_arch/releases/download/$ROOTFS_VERSION/root.tar.bz2
ADD arch/shim/shim /tmp/ducktape/shim
ADD arch/cert /tmp/ducktape/cert
ADD https://github.com/dock0/ducktape/releases/download/$DUCKTAPE_VERSION/ducktape /tmp/ducktape/ducktape
RUN ["/tmp/ducktape/shim", ""]
RUN ["/tmp/ducktape/ducktape", ""]
RUN pacman -Syu --needed --noconfirm git-amylum procps-ng-amylum which-amylum util-linux-amylum licenses iproute2-amylum iputils-amylum tar-amylum
CMD ["/bin/bash"]
