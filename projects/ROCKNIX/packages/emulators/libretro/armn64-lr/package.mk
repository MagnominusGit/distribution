# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2026-present ROCKNIX (https://github.com/ROCKNIX)

PKG_NAME="armn64-lr"
PKG_VERSION="83d692d004a13734cf1c71ec8be5f45ef2d923d5"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/MagnominusGit/armN64"
PKG_URL="${PKG_SITE}/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="armN64 is a Nintendo 64 and 64DD emulator built around recompilers for ARM and x86 handhelds."
PKG_TOOLCHAIN="cmake"
PKG_CMAKE_OPTS_TARGET="-DARMN64_TUNE=OFF"
PKG_MAKE_OPTS_TARGET="armn64_libretro"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
  cp ${PKG_BUILD}/.${TARGET_NAME}/armn64_libretro.so ${INSTALL}/usr/lib/libretro/
  cp ${PKG_BUILD}/libretro/armn64_libretro.info ${INSTALL}/usr/lib/libretro/
}
