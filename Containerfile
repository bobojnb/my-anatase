FROM i.anatase.org/anatase:stable

# ALSA runtime libraries: 64-bit and 32-bit
RUN dnf -y install \
    alsa-lib \
    alsa-lib.i686 \
    && dnf clean all
    pipewire-libs.i686 \
    pulseaudio-libs.i686 \
    pipewire-alsa.i686

# Cleanup (leave this here)
RUN rm -rf /var && \
    mkdir -p /var/tmp
