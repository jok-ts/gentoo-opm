# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit cmake-utils

DESCRIPTION="Module for reference elements in DUNE, the modular toolbox for solving partial differential eqs"
HOMEPAGE="http://www.dune-project.org/dune"
SRC_URI="http://www.dune-project.org/download/${PV}/${P}.tar.gz"

LICENSE="GPL-2-with-exceptions"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
		dev-libs/gmp:=
		~sci-libs/dune-common-${PV}
		virtual/lapack"

DEPEND="${RDEPEND}
		virtual/pkgconfig"

# Automagicals, fix:
# -- The following OPTIONAL packages have been found:
#
#  * MPI
#  * Threads
#  * Doxygen
#  * LAPACK
#  * GMP
#  * Inkscape
#  * Boost
#
# -- The following REQUIRED packages have been found:
#
#  * dune-common
#  * PkgConfig
#
# -- The following OPTIONAL packages have not been found:
#
#  * LATEX
#  * UnixCommands
#
