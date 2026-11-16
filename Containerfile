FROM i.anatase.org/anatase:stable

# ALSA runtime libraries: 64-bit and 32-bit
RUN dnf -y install \
    alsa-lib \
    alsa-lib.i686 \
    && dnf clean all

# Cleanup (leave this here)
RUN rm -rf /var && \
    mkdir -p /var/tmp
