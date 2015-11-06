#
#  Copyright 2012 KISS Institute for Practical Robotics
#
#  This file is part of the KISS Platform (Kipr's Instructional Software System).
#
#  The KISS Platform is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  The KISS Platform is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with the KISS Platform.  Check the LICENSE file in the project root.
#  If not, see <http://www.gnu.org/licenses/>.

#!/bin/sh

APP_MAJOR_VERSION="1"
APP_MINOR_VERSION="1"
BUILD_NUMBER="6"

VERSION="${APP_MAJOR_VERSION}.${APP_MINOR_VERSION}.${BUILD_NUMBER}"

if [ "$1" != "" ]; then
  ROOT_DIR=$1
else
  echo "WARNING: No root directory given; using current directory"
  ROOT_DIR=${PWD}
fi

PKG_DIR=${ROOT_DIR}/KIPR-Software-Suite-${VERSION}
mkdir -p ${PKG_DIR}

INSTALL_DIR=${PKG_DIR}/shared
mkdir -p ${INSTALL_DIR}

cp -r harrogate "${PKG_DIR}/"
cp -r node-v0.10.40-darwin-x64/* "${INSTALL_DIR}/"

INSTALL_DEST="/opt/KIPR/KIPR-Software-Suite-${VERSION}"
echo "#!/usr/bin/env bash

cd ${INSTALL_DEST}/harrogate/

${INSTALL_DEST}/shared/bin/node server.js" > "${PKG_DIR}/Start KISS IDE Server.command"
chmod a+x "${PKG_DIR}/Start KISS IDE Server.command"