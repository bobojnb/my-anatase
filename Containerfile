
FROM i.anatase.org/anatase:stable

# ALSA runtime library
RUN dnf -y install alsa-lib && \
    dnf clean all

# Cleanup (leave this here)
RUN rm -rf /var && \
    mkdir -p /var/tmp
