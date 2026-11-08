# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2026-present ROCKNIX (https://github.com/ROCKNIX)

PKG_NAME="armnes-lr"
PKG_VERSION="d967fedf3bbe16ccf937daedddb743bea33225e2"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/MagnominusGit/armNES"
PKG_URL="${PKG_SITE}/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain zlib"
PKG_LONGDESC="armNES is a NES and Famicom Disk System emulator for ARM and x86 handhelds."
PKG_TOOLCHAIN="cmake"
PKG_MAKE_OPTS_TARGET="armnes_libretro"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
  cp ${PKG_BUILD}/.${TARGET_NAME}/armnes_libretro.so ${INSTALL}/usr/lib/libretro/
  cp ${PKG_BUILD}/libretro/armnes_libretro.info ${INSTALL}/usr/lib/libretro/
}
