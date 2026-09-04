FROM archlinux:latest

RUN pacman -Syyu --noconfirm \
    base-devel git meson ninja glib2 nss pixman libgusb glib2-devel \
    gobject-introspection valgrind gtk-doc

WORKDIR /build
