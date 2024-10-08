# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_EXT=1
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..12} )

inherit distutils-r1 pypi

DESCRIPTION="Asynchronous python client for Home Assistant Supervisor."
HOMEPAGE="
	https://github.com/home-assistant-libs/python-supervisor-client/
	https://pypi.org/project/aiohasupervisor/
"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RDEPEND=""
BDEPEND=""

EPYTEST_XDIST=1
distutils_enable_tests pytest

