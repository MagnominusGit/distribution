# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2026-present ROCKNIX (https://github.com/ROCKNIX)

PKG_NAME="armnes-sa"
PKG_VERSION="d967fedf3bbe16ccf937daedddb743bea33225e2"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/MagnominusGit/armNES"
PKG_URL="${PKG_SITE}.git"
PKG_DEPENDS_TARGET="toolchain SDL2 zlib"
PKG_LONGDESC="armNES's standalone app: a NES and Famicom Disk System emulator for ARM and x86 handhelds."
PKG_TOOLCHAIN="cmake"
PKG_CMAKE_OPTS_TARGET="-DARMNES_APP=ON"
PKG_MAKE_OPTS_TARGET="armnes-app"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/bin
  cp ${PKG_BUILD}/.${TARGET_NAME}/armnes ${INSTALL}/usr/bin/
}
