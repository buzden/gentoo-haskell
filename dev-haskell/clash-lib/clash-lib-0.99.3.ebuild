# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="CAES Language for Synchronous Hardware - As a Library"
HOMEPAGE="http://www.clash-lang.org/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.6.2.0:=[profile?] <dev-haskell/aeson-1.5:=[profile?]
	>=dev-haskell/ansi-wl-pprint-0.6.8.2:=[profile?] <dev-haskell/ansi-wl-pprint-1.0:=[profile?]
	>=dev-haskell/attoparsec-0.10.4.0:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/clash-prelude-0.11.1:=[profile?] <dev-haskell/clash-prelude-1.0:=[profile?]
	>=dev-haskell/concurrent-supply-0.1.7:=[profile?] <dev-haskell/concurrent-supply-0.2:=[profile?]
	>=dev-haskell/data-binary-ieee754-0.4.4:=[profile?] <dev-haskell/data-binary-ieee754-0.6:=[profile?]
	>=dev-haskell/errors-1.4.2:=[profile?] <dev-haskell/errors-2.4:=[profile?]
	>=dev-haskell/fgl-5.4.2.4:=[profile?] <dev-haskell/fgl-5.7:=[profile?]
	>=dev-haskell/hashable-1.2.1.0:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/lens-3.9.2:=[profile?] <dev-haskell/lens-4.18:=[profile?]
	>=dev-haskell/mtl-2.1.2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/parsers-0.12.8:=[profile?] <dev-haskell/parsers-1.0:=[profile?]
	>=dev-haskell/prettyprinter-1.2.0.1:=[profile?] <dev-haskell/prettyprinter-2.0:=[profile?]
	>=dev-haskell/primitive-0.5.0.1:=[profile?] <dev-haskell/primitive-1.0:=[profile?]
	>=dev-haskell/reducers-3.12.2:=[profile?] <dev-haskell/reducers-4.0:=[profile?]
	>=dev-haskell/text-0.11.3.1:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/trifecta-1.7.1.1:=[profile?] <dev-haskell/trifecta-2.0:=[profile?]
	>=dev-haskell/unbound-generics-0.1:=[profile?] <dev-haskell/unbound-generics-0.4:=[profile?]
	>=dev-haskell/unordered-containers-0.2.3.3:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.11:=[profile?] <dev-haskell/vector-1.0:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	>=dev-lang/ghc-8.0.2:=[profile?] <dev-lang/ghc-8.6:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"
