# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.9

# haddock-2.8.{0,1} on hackage does not work with ghc-7.
# this ebuild uses a tarball of what's distributed with ghc-7.

EAPI="2"

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit haskell-cabal pax-utils

DESCRIPTION="A documentation-generation tool for Haskell libraries"
HOMEPAGE="http://www.haskell.org/haddock/"
SRC_URI="http://dev.gentoo.org/~kolmodin/${P}.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cabal-1.6
		dev-haskell/ghc-paths
		=dev-haskell/xhtml-3000.2*
		>=dev-lang/ghc-6.12"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

CABAL_EXTRA_BUILD_FLAGS="--ghc-options=-rtsopts"

src_install() {
	cabal_src_install
	# haddock uses GHC-api to process TH source.
	# TH requires GHCi which needs mmap('rwx') (bug #299709)
	pax-mark -m "${D}/usr/bin/${PN}"
}
