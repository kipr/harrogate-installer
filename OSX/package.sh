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

cp -r harrogate "${INSTALL}/../"
cp -r node-v0.10.40-darwin-x64/* "${INSTALL}/"

cd ${INSTALL}/../harrogate/

${INSTALL}/bin/node server.js > "${INSTALL}/../Start KISS IDE Server.command"
chmod a+x "${INSTALL}/../Start KISS IDE Server.command"