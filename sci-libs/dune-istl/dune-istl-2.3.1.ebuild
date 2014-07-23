# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit cmake-utils

DESCRIPTION="Module for iterative solvers of DUNE, the modular toolbox for solving partial differential equations"
HOMEPAGE="http://www.dune-project.org/dune"
SRC_URI="http://www.dune-project.org/download/${PV}/${P}.tar.gz"

LICENSE="GPL-2-with-exceptions"
SLOT="0"
KEYWORDS="~amd64"
IUSE="superlu umfpack X"

RDEPEND="
		dev-libs/boost
		dev-libs/gmp:=
		~sci-libs/dune-common-${PV}
		virtual/blas
		virtual/lapack
		superlu? ( >=sci-libs/superlu-4.3 )
		umfpack? ( sci-libs/umfpack )
		X? ( x11-libs/libX11 ) "

DEPEND="${RDEPEND}
		virtual/pkgconfig"

# Automagicals, fix:
# -- The following OPTIONAL packages have been found:
#
#  * Doxygen
#  * LAPACK
#  * GMP
#  * Inkscape
#  * Boost
#  * METIS
#  * SuperLU
#  * UMFPack
#  * MPI
#  * Threads
#
# -- The following REQUIRED packages have been found:
#
#  * dune-common
#  * PkgConfig
#  * BLAS
#
# -- The following OPTIONAL packages have not been found:
#
#  * LATEX
#  * UnixCommands
#  * BoostFusion
#  * ParMETIS
