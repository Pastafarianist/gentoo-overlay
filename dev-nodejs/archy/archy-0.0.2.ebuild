# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit npm

DESCRIPTION="Render nested hierarchies 'npm ls' style with unicode pipes"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="example"

DEPEND=">=net-libs/nodejs-0.8.10"
RDEPEND="${DEPEND}"

src_install() {
	npm_src_install 

	if use example; then
		dodoc -r examples
	fi
}
