# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit autotools-utils

DESCRIPTION="Module for common files of DUNE, the modular toolbox for solving partial differential equations."
HOMEPAGE="http://www.dune-project.org/dune"
SRC_URI="http://dune.mathematik.uni-freiburg.de/downloads/${PN}-${PV}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+metis mpi"

RDEPEND="
		metis? ( >=sci-libs/metis-4.0.0 )
		mpi? ( virtual/mpi ) "

DEPEND="${RDEPEND}
		virtual/pkgconfig"

AUTOTOOLS_IN_SOURCE_BUILD=1

src_configure() {
		local myeconfargs=(
			$(use_with metis metis $($(tc-getPKG_CONFIG) --variable prefix metis))
			--enable-shared
		)
		autotools-utils_src_configure
}
