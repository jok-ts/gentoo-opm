# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit cmake-utils

DESCRIPTION="Module for grids in DUNE, the modular toolbox for solving partial differential equations"
HOMEPAGE="http://www.dune-project.org/dune"
SRC_URI="http://www.dune-project.org/download/${PV}/${P}.tar.gz"

LICENSE="GPL-2-with-exceptions"
SLOT="0"
KEYWORDS="~amd64"
IUSE="alugrid X"

RDEPEND="
		dev-libs/boost
		dev-libs/gmp:=
		~sci-libs/dune-common-${PV}
		~sci-libs/dune-geometry-${PV}
		virtual/blas
		virtual/lapack
		alugrid? ( >=sci-libs/ALUGrid-1.50 )
		X? ( x11-libs/libX11 ) "

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
#  * X11
#  * OpenGL
#
# -- The following REQUIRED packages have been found:
#
#  * dune-common
#  * dune-geometry
#  * PkgConfig
#
# -- The following features have been disabled:
#
#  * Experimental grid extensions , Enables additional grid features.
#
# -- The following OPTIONAL packages have not been found:
#
#  * LATEX
#  * UnixCommands
#  * ALUGrid
#  * Alberta
#  * UG (required version >= 3.9.1)
#  * Grape
#  * Psurface
#  * AmiraMesh

src_configure() {
		local mycmakeargs=(
			-DDUNE_GRID_EXPERIMENTAL_GRID_EXTENSIONS=ON
		)
		cmake-utils_src_configure
}
