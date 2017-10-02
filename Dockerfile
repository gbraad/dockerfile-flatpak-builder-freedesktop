FROM fedora:26
MAINTAINER Gerard Braad <me@gbraad.nl>

RUN mkdir -p /workspace; \
    dnf install -y git wget flatpak flatpak-builder make elfutils; \
    wget https://sdk.gnome.org/keys/gnome-sdk.gpg; \
    flatpak remote-add --gpg-import=gnome-sdk.gpg gnome https://sdk.gnome.org/repo/; \
    flatpak install gnome org.freedesktop.Platform 1.6; \
    flatpak install gnome org.freedesktop.Sdk 1.6

VOLUME /workspace
WORKDIR /workspace

CMD bash
