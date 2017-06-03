FROM dock0/amylum_arch
MAINTAINER akerl <me@lesaker.org>
RUN yes | pacman -Syu --force --needed \
    pacman-amylum \
    pacman-mirrorlist-amylum \
    musl-amylum \
    gnupg-amylum \
    gpgme-amylum \
    krb5-amylum \
    libassuan-amylum \
    libarchive-amylum \
    curl-amylum \
    openssh-amylum \
    libgpg-error-amylum
RUN mv /etc/pacman.conf.pacsave /etc/pacman.conf && \
    mv /etc/pacman.d/mirrorlist.pacsave /etc/pacman.d/mirrorlist
RUN cp /usr/bin/xz /usr/local/bin/ && cp /usr/lib/liblzma* /usr/local/lib && \
    echo "/usr/local/lib" > /etc/ld.so.conf.d/local.conf && ldconfig && \
    yes | pacman -S xz-amylum && \
    rm -f /usr/local/bin/xz /usr/local/lib/liblzma* /etc/ld.so.conf.d/local.conf && \
    ldconfig
RUN yes | pacman -S --needed \
    bash-amylum \
    ca-certificates-amylum \
    coreutils-amylum \
    git-amylum \
    grep-amylum \
    gzip-amylum \
    iproute2-amylum \
    iputils-amylum \
    procps-ng-amylum \
    sed-amylum \
    shadow-amylum \
    tar-amylum \
    util-linux-amylum \
    which-amylum \
    zlib-amylum
RUN pacman -R --noconfirm \
    libldap \
    e2fsprogs \
    systemd \
    libusb \
    ca-certificates-cacert \
    ca-certificates-mozilla
