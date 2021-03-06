# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit elisp cmake

DESCRIPTION="Emacs libvterm integration"
HOMEPAGE="https://github.com/akermu/emacs-libvterm"
SRC_URI="https://melpa.org/packages/${PN}-${PV}.tar -> ${P}.tar"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=app-editors/emacs-26.1[dynamic-loading]
	dev-libs/libvterm
"

ELISP_REMOVE="${PN}-pkg.el"
SITEFILE="50${PN}-gentoo.el"
DOC="README.md"

src_configure() {
	elisp_src_configure

	local mycmakeargs=( "USE_SYSTEM_LIBVTERM=yes" )
	cmake_src_configure
}

src_compile() {
	elisp_src_compile

	cmake_src_compile
}

src_install() {
	elisp_src_install

	# install vterm module
	elisp-install ${PN} *.so

	# add shell config files
	if has_version app-shells/bash; then
		elog "Adding configuration for bash."
		insinto /etc/bash/bashrc.d/
		newins "${FILESDIR}/bashrc" emacs-vterm-bash.sh
	fi
	if has_version app-shells/zsh; then
		elog "Adding configuration for zsh."
		insinto /etc/profile.d/
		newins "${FILESDIR}/zshrc" emacs-vterm-bash.sh
	fi
	if has_version app-shells/fish; then
		elog "Adding configuration for fish."
		insinto /etc/fish/conf.d/
		newins "${FILESDIR}/config.fish" emacs-vterm.fish
	fi
}
