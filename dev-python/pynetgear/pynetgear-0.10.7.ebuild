# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..11} )

inherit distutils-r1

DESCRIPTION="Access Netgear routers using their SOAP API"
HOMEPAGE="https://github.com/MatMaul/pynetgear https://pypi.org/project/pynetgear/"
SRC_URI="https://github.com/MatMaul/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE="test"
RESTRICT="!test? ( test )"

DOCS="README.md"

RDEPEND=">=dev-python/requests-2.0[${PYTHON_USEDEP}]"
BDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		dev-python/nose[${PYTHON_USEDEP}]
		dev-python/pytest[${PYTHON_USEDEP}]
	)"

src_prepare() {
	echo "requests>=2.0" >> requirements.txt || die
	eapply_user
}

python_test() {
	nosetests --verbose || die
	py.test -v -v || die
}

distutils_enable_tests pytest
