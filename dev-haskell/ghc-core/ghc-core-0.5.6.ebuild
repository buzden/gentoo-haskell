# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="Display GHC's core and assembly output in a pager"
HOMEPAGE="https://github.com/shachaf/ghc-core"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2
		dev-haskell/colorize-haskell
		dev-haskell/pcre-light
		>=dev-lang/ghc-6.10.4"
