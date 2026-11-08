# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2026-present ROCKNIX (https://github.com/ROCKNIX)

PKG_NAME="armn64-sa"
PKG_VERSION="96ba6adbbaebf303701dc3cff24134e018b43879"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/MagnominusGit/armN64"
PKG_URL="${PKG_SITE}.git"
PKG_DEPENDS_TARGET="toolchain SDL2 zlib"
PKG_LONGDESC="armN64's standalone app: a Nintendo 64 and 64DD emulator for ARM and x86 handhelds."
PKG_TOOLCHAIN="cmake"
PKG_CMAKE_OPTS_TARGET="-DARMN64_APP=ON -DARMN64_TUNE=OFF"
PKG_MAKE_OPTS_TARGET="armn64-app"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/bin
  cp ${PKG_BUILD}/.${TARGET_NAME}/armn64 ${INSTALL}/usr/bin/
}
