FROM archlinux:latest

RUN pacman -Syu --noconfirm && \
    pacman -S git --needed base-devel --noconfirm

RUN useradd user -m && \
    passwd -d user && \
    printf 'user ALL=(ALL) ALL\n' | tee -a /etc/sudoers

USER user

WORKDIR /home/user
