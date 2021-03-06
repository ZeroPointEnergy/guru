# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8} )

inherit autotools python-any-r1 xdg

DESCRIPTION="A limit-removing enhanced-resolution Doom source port based on Chocolate Doom"
HOMEPAGE="https://github.com/fabiangreffrath/crispy-doom"
SRC_URI="https://github.com/fabiangreffrath/${PN}/archive/${P}.tar.gz"

LICENSE="BSD GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="libsamplerate png python timidity +vorbis zlib"

DEPEND="
	media-libs/libsdl2
	media-libs/sdl2-mixer[timidity?,vorbis?]
	media-libs/sdl2-net
	libsamplerate? ( media-libs/libsamplerate )
	png? ( media-libs/libpng:= )
	zlib? ( sys-libs/zlib )"
RDEPEND="${DEPEND}"
BDEPEND="python? ( ${PYTHON_DEPS} )"

S="${WORKDIR}"/${PN}-${P}

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	econf \
		--docdir="${EPREFIX}/usr/share/doc/${P}/docs" \
		$(use_with libsamplerate) \
		$(use_with png libpng) \
		$(use_with zlib)
}
