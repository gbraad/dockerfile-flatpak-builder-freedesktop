FROM registry.gitlab.com/gbraad/devenv:f24
MAINTAINER Gerard Braad <me@gbraad.nl>

RUN mkdir -p /workspace; \
    dnf install -y git wget flatpak flatpak-builder; \
    wget https://sdk.gnome.org/keys/gnome-sdk.gpg; \
    flatpak remote-add --gpg-import=gnome-sdk.gpg gnome https://sdk.gnome.org/repo/; \
    flatpak install gnome org.freedesktop.Platform 1.4; \
    flatpak install gnome org.freedesktop.Sdk 1.4

VOLUME /workspace
WORKDIR /workspace

CMD bash
