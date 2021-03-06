# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7} )

DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="Simple, modern file watching and code reload"
HOMEPAGE="https://github.com/samuelcolvin/watchgod"
SRC_URI="https://github.com/samuelcolvin/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"
SLOT="0"

DEPEND="test? (
	dev-python/isort[${PYTHON_USEDEP}]
	dev-python/pytest-aiohttp[${PYTHON_USEDEP}]
	dev-python/pytest-toolbox[${PYTHON_USEDEP}]
	dev-python/pytest-mock[${PYTHON_USEDEP}]
)"

distutils_enable_tests pytest
