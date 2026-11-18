FROM i.anatase.org/anatase:stable

# ALSA runtime libraries: 64-bit and 32-bit

# Add JPEG 8 compatibility repository
RUN printf '%s\n' \
    '[libjpeg8-copr]' \
    'name=libjpeg8 COPR - Fedora 45' \
    'baseurl=https://download.copr.fedorainfracloud.org/results/aflyhorse/libjpeg/fedora-45-x86_64/' \
    'enabled=1' \
    'gpgcheck=1' \
    'gpgkey=https://download.copr.fedorainfracloud.org/results/aflyhorse/libjpeg/pubkey.gpg' \
    > /etc/yum.repos.d/libjpeg8-copr.repo \
    && dnf -y install \
        alsa-lib \
        alsa-lib.i686 \
        pipewire-libs.i686 \
        pulseaudio-libs.i686 \
        pipewire-alsa.i686 \
        libjpeg8.x86_64 \
        dotnet-runtime-10.0 \
        libXScrnSaver \
    && rm -f /etc/yum.repos.d/libjpeg8-copr.repo \
    && dnf clean all

# Cleanup (leave this here)
RUN rm -rf /var && \
    mkdir -p /var/tmp
