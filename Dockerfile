FROM dock0/amylum_arch
MAINTAINER akerl <me@lesaker.org>
RUN yes | pacman -Syu --needed \
    bash-amylum \
    ca-certificates-mozilla-amylum \
    coreutils-amylum \
    git-amylum \
    gnupg-amylum \
    grep-amylum \
    gzip-amylum \
    iproute2-amylum \
    iputils-amylum \
    pacman-amylum \
    pacman-mirrorlist-amylum \
    procps-ng-amylum \
    sed-amylum \
    shadow-amylum \
    tar-amylum \
    util-linux-amylum \
    which-amylum \
    xz-amylum
