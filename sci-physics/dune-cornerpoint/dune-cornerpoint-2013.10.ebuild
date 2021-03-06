# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit cmake-utils

DESCRIPTION="A Dune module that provides an implementation of cornerpoint grids for the Dune grid interface"
HOMEPAGE="http://www.opm-project.org/modules.php"
SRC_URI="https://github.com/OPM/${PN}/archive/release/${PV}/final.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"

S=${WORKDIR}/${PN}-release-${PV}-final
RDEPEND="
		dev-libs/boost
		virtual/blas
		virtual/lapack
		sci-libs/dune-common
		sci-libs/dune-geometry
		sci-libs/dune-grid
		sci-libs/dune-istl[superlu,umfpack]
		sci-libs/umfpack
		~sci-physics/opm-core-${PV}
		>=sci-libs/superlu-4.3"

DEPEND="${RDEPEND}"
