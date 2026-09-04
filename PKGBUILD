# Maintainer: Colin Cheng <zbinlin@outlook.com>

# This is a build of the experimental pxat driver by Colin Cheng

pkgname=libfprint-pxat-driver-git
_pkgname=libfprint
pkgver=1.94.100
pkgrel=2
pkgdesc="Library for fingerprint readers with patches for the support of the PXAT PT2887-CI"
url="https://fprint.freedesktop.org/"
arch=(x86_64)
license=(LGPL)
depends=(libgusb pixman nss systemd libgudev)
makedepends=(git meson gtk-doc gobject-introspection glib2-devel)
checkdepends=(cairo)
conflicts=(libfprint)
provides=(libfprint=1.94.0 libfprint-2.so)
groups=(fprint)
source=(
  "git+https://gitlab.freedesktop.org/libfprint/libfprint.git#tag=v1.94.100"
  "pxat.patch"
)
sha256sums=(
  'SKIP'
  '0624a48f49559458d8ccd704dceae75b2dd6a1290580e5ddd6cf96ce13e9c245'
)

pkgver() {
  cd $_pkgname
  git describe --tags | sed 's/^v//;s/^V_//;s/_/./g;s/-/+/g'
}

prepare() {
  cd $_pkgname
  patch -Np1 < "$srcdir/pxat.patch"
}

build() {
  arch-meson $_pkgname build
  meson compile -C build
}

package() {
  meson install -C build --destdir "$pkgdir"
}
