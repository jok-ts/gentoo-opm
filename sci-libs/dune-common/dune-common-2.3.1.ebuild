# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit cmake-utils

DESCRIPTION="Module for common files of DUNE, the modular toolbox for solving partial differential equations"
HOMEPAGE="http://www.dune-project.org/dune"
SRC_URI="http://www.dune-project.org/download/${PV}/${P}.tar.gz"

LICENSE="GPL-2-with-exceptions"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doxygen gmp mpi"

RDEPEND="
		virtual/blas
		virtual/lapack
		dev-libs/boost
		gmp? ( dev-libs/gmp )
		mpi? ( virtual/mpi ) "

DEPEND="${RDEPEND}
		doxygen? (
			app-doc/doxygen
			media-gfx/inkscape
		)
		virtual/pkgconfig"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_find_package mpi MPI)
		$(cmake-utils_use_find_package gmp GMP)
	)
	cmake-utils_src_configure
}

# Automagicals, only partially fixed:
# -- The following OPTIONAL packages have been found:
#
#  * Doxygen
#  * LAPACK
#  * GMP
#  * Inkscape
#  * Boost
#  * MPI
#  * Threads
#
# -- The following REQUIRED packages have been found:
#
#  * PkgConfig
#
# -- The following OPTIONAL packages have not been found:
#
#  * LATEX
#  * UnixCommands
#
