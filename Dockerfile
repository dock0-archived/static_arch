FROM scratch
MAINTAINER akerl <me@lesaker.org>
ENV DUCKTAPE_VERSION 0.3.2
ADD shim/shim /.shim
ADD arch/cert /.cert
ADD https://github.com/dock0/ducktape/releases/download/$DUCKTAPE_VERSION/ducktape /.ducktape
RUN ["/.shim", ""]
RUN ["/.ducktape", "https://github.com/dock0/static_arch/releases/download/0.0.6/root.tar.bz2"]
RUN pacman -Syu --needed --noconfirm git-amylum procps-ng-amylum which-amylum util-linux-amylum licenses iproute2-amylum iputils-amylum tar-amylum
CMD ["/bin/bash"]
