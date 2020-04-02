# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_7 )

DISTUTILS_USE_SETUPTOOLS=rdepend

inherit eutils xdg distutils-r1 virtualx

DESCRIPTION="Watch music videos in real time for the songs playing on your device"
HOMEPAGE="https://github.com/vidify/vidify"
SRC_URI="https://github.com/${PN}/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="dbus vlc mpv zeroconf"

REQUIRED_USE="|| ( vlc mpv zeroconf )"

RDEPEND="
	dev-python/appdirs[${PYTHON_USEDEP}]
	dev-python/lyricwikia[${PYTHON_USEDEP}]
	dev-python/QtPy[gui,webengine,${PYTHON_USEDEP}]
	net-misc/youtube-dl[${PYTHON_USEDEP}]
	|| (
		dev-python/tekore[${PYTHON_USEDEP}]
		dev-python/pydbus[${PYTHON_USEDEP}]
	)
	dbus? ( dev-python/pydbus[${PYTHON_USEDEP}] )
	mpv? ( dev-python/python-mpv[${PYTHON_USEDEP}] )
	vlc? ( dev-python/python-vlc[${PYTHON_USEDEP}] )
	zeroconf? ( dev-python/zeroconf[${PYTHON_USEDEP}] )
"

distutils_enable_tests unittest

python_prepare_all() {
	# skip online test
	rm tests/api/test_spotify_web.py || die
	rm tests/player/test_external.py || die

	# this needs dbus and a player running
	rm tests/api/test_mpris.py || die

	# fails to parse config for some reason
	# likely because of the removal of the above tests
	rm tests/test_api_and_player_data.py || die

	# do not hard depend on this
	sed -i \
		-e '/qdarkstyle/d' \
		-e '/python-vlc/d' \
		-e '/python-mpv/d' \
		-e '/pydbus/d' \
		-e '/tekore/d' \
		-e '/zeroconf/d' \
		-e '/If PySide2 is installed and PyQt5/,/PyQtWebEngine/d' \
		setup.py || die

	distutils-r1_python_prepare_all
}

python_test() {
	virtx "${EPYTHON}" -m unittest discover -v
}

pkg_postinst() {
	xdg_pkg_postinst

	elog "If video playback is not working please check 'vidify --debug' for missing-codec-errors and recompile media-video/vlc or media-video/mpv with the missing codecs"

	optfeature "using a MPRIS(D-Bus) audio player (e.g spotify)" dev-python/pydbus
	optfeature "using the spotify web API as audio player" dev-python/tekore
	optfeature "using an external network player" dev-python/zeroconf
	optfeature "using media-video/mpv for video playback" dev-python/python-mpv
	optfeature "using media-video/vlc for video playback" dev-python/python-vlc
	optfeature "'vidify --dark-mode'" dev-python/qdarkstyle
	optfeature "'vidify --audiosync'" media-video/vidify-audiosync
}