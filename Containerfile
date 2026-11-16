FROM i.anatase.org/anatase:stable

# 32-bit audio libraries for SDL / Recomp games
RUN dnf -y install \
    pipewire-libs.i686 \
    pulseaudio-libs.i686 \
    pipewire-alsa.i686

# Do your thing...
# Install btop
# RUN dnf -y install btop

# Install coolercontrol
# RUN . /etc/os-release && \
#     dnf -y copr enable codifryed/CoolerControl && \
#     dnf -y install coolercontrol && \
#     systemctl enable coolercontrold

# Cleanup (leave this here)
RUN rm -rf /var && \
    mkdir -p /var/tmp
