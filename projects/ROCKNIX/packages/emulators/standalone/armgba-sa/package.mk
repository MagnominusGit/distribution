# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2026-present ROCKNIX (https://github.com/ROCKNIX)

PKG_NAME="armgba-sa"
PKG_VERSION="b1c4a69c99797d93f0f96901b69b9fd7bf7917c3"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/MagnominusGit/armGBA"
PKG_URL="${PKG_SITE}.git"
PKG_DEPENDS_TARGET="toolchain SDL2 zlib"
PKG_LONGDESC="armGBA's standalone app: a Game Boy Advance, Game Boy and Game Boy Color emulator for ARM and x86 handhelds."
PKG_TOOLCHAIN="cmake"
PKG_CMAKE_OPTS_TARGET="-DARMGBA_SDL=ON"
PKG_MAKE_OPTS_TARGET="armgba-sdl"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/bin
  cp ${PKG_BUILD}/.${TARGET_NAME}/armgba ${INSTALL}/usr/bin/
}
