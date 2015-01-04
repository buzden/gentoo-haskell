# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

#nocabaldep is for the fancy cabal-detection feature at build-time
CABAL_FEATURES="lib profile haddock hoogle hscolour nocabaldep"
inherit eutils haskell-cabal

DESCRIPTION="Binding to the GIO"
HOMEPAGE="http://projects.haskell.org/gtk2hs/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-haskell/glib-0.13.0.0:=[profile?] <dev-haskell/glib-0.14:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	dev-libs/glib:2
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18
	>=dev-haskell/gtk2hs-buildtools-0.13.0.3:0=
	virtual/pkgconfig
"

src_prepare() {
	epatch "${FILESDIR}"/${PN}-0.13.0.4-ghc-7.10.patch

	# workaround for module order
	cabal_chdeps \
		'other-modules:' 'exposed-modules:'
}
