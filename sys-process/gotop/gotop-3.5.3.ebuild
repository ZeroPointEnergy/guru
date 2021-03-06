# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module

EGO_PN="github.com/xxxserxxx/gotop"
EGO_SUM=(
	"github.com/StackExchange/wmi v0.0.0-20180116203802-5d049714c4a6"
	"github.com/StackExchange/wmi v0.0.0-20180116203802-5d049714c4a6/go.mod"
	"github.com/alecthomas/template v0.0.0-20160405071501-a0175ee3bccc/go.mod"
	"github.com/alecthomas/template v0.0.0-20190718012654-fb15b899a751/go.mod"
	"github.com/alecthomas/units v0.0.0-20151022065526-2efee857e7cf/go.mod"
	"github.com/alecthomas/units v0.0.0-20190717042225-c3de453c63f4/go.mod"
	"github.com/beorn7/perks v0.0.0-20180321164747-3a771d992973/go.mod"
	"github.com/beorn7/perks v1.0.0/go.mod"
	"github.com/beorn7/perks v1.0.1"
	"github.com/beorn7/perks v1.0.1/go.mod"
	"github.com/cespare/xxhash/v2 v2.1.1"
	"github.com/cespare/xxhash/v2 v2.1.1/go.mod"
	"github.com/cjbassi/drawille-go v0.0.0-20190126131713-27dc511fe6fd"
	"github.com/cjbassi/drawille-go v0.0.0-20190126131713-27dc511fe6fd/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/distatus/battery v0.9.0"
	"github.com/distatus/battery v0.9.0/go.mod"
	"github.com/docopt/docopt.go v0.0.0-20180111231733-ee0de3bc6815"
	"github.com/docopt/docopt.go v0.0.0-20180111231733-ee0de3bc6815/go.mod"
	"github.com/gizak/termui/v3 v3.0.0"
	"github.com/gizak/termui/v3 v3.0.0/go.mod"
	"github.com/go-kit/kit v0.8.0/go.mod"
	"github.com/go-kit/kit v0.9.0/go.mod"
	"github.com/go-logfmt/logfmt v0.3.0/go.mod"
	"github.com/go-logfmt/logfmt v0.4.0/go.mod"
	"github.com/go-ole/go-ole v1.2.1"
	"github.com/go-ole/go-ole v1.2.1/go.mod"
	"github.com/go-stack/stack v1.8.0/go.mod"
	"github.com/gogo/protobuf v1.1.1/go.mod"
	"github.com/golang/protobuf v1.2.0/go.mod"
	"github.com/golang/protobuf v1.3.1/go.mod"
	"github.com/golang/protobuf v1.3.2"
	"github.com/golang/protobuf v1.3.2/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.1/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.1.0.20200221234624-67d41d38c208/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.2/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.4.0.20200313231945-b860323f09d0/go.mod"
	"github.com/golang/protobuf v1.4.0"
	"github.com/golang/protobuf v1.4.0/go.mod"
	"github.com/google/go-cmp v0.3.0/go.mod"
	"github.com/google/go-cmp v0.3.1/go.mod"
	"github.com/google/go-cmp v0.4.0"
	"github.com/google/go-cmp v0.4.0/go.mod"
	"github.com/google/gofuzz v1.0.0/go.mod"
	"github.com/jessevdk/go-flags v1.4.0/go.mod"
	"github.com/json-iterator/go v1.1.6/go.mod"
	"github.com/json-iterator/go v1.1.9/go.mod"
	"github.com/julienschmidt/httprouter v1.2.0/go.mod"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.1/go.mod"
	"github.com/kr/logfmt v0.0.0-20140226030751-b84e30acd515/go.mod"
	"github.com/kr/pretty v0.1.0"
	"github.com/kr/pretty v0.1.0/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/mattn/go-runewidth v0.0.2/go.mod"
	"github.com/mattn/go-runewidth v0.0.4"
	"github.com/mattn/go-runewidth v0.0.4/go.mod"
	"github.com/matttproud/golang_protobuf_extensions v1.0.1"
	"github.com/matttproud/golang_protobuf_extensions v1.0.1/go.mod"
	"github.com/mitchellh/go-wordwrap v0.0.0-20150314170334-ad45545899c7"
	"github.com/mitchellh/go-wordwrap v0.0.0-20150314170334-ad45545899c7/go.mod"
	"github.com/mitchellh/go-wordwrap v1.0.0"
	"github.com/mitchellh/go-wordwrap v1.0.0/go.mod"
	"github.com/modern-go/concurrent v0.0.0-20180228061459-e0a39a4cb421/go.mod"
	"github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd/go.mod"
	"github.com/modern-go/reflect2 v0.0.0-20180701023420-4b7aa43c6742/go.mod"
	"github.com/modern-go/reflect2 v1.0.1/go.mod"
	"github.com/mwitkow/go-conntrack v0.0.0-20161129095857-cc309e4a2223/go.mod"
	"github.com/nsf/termbox-go v0.0.0-20190121233118-02980233997d"
	"github.com/nsf/termbox-go v0.0.0-20190121233118-02980233997d/go.mod"
	"github.com/nsf/termbox-go v0.0.0-20200418040025-38ba6e5628f1"
	"github.com/nsf/termbox-go v0.0.0-20200418040025-38ba6e5628f1/go.mod"
	"github.com/pkg/errors v0.8.0/go.mod"
	"github.com/pkg/errors v0.8.1"
	"github.com/pkg/errors v0.8.1/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/prometheus/client_golang v0.9.1/go.mod"
	"github.com/prometheus/client_golang v1.0.0/go.mod"
	"github.com/prometheus/client_golang v1.4.1"
	"github.com/prometheus/client_golang v1.4.1/go.mod"
	"github.com/prometheus/client_golang v1.5.1"
	"github.com/prometheus/client_golang v1.5.1/go.mod"
	"github.com/prometheus/client_golang v1.6.0"
	"github.com/prometheus/client_golang v1.6.0/go.mod"
	"github.com/prometheus/client_model v0.0.0-20180712105110-5c3871d89910/go.mod"
	"github.com/prometheus/client_model v0.0.0-20190129233127-fd36f4220a90/go.mod"
	"github.com/prometheus/client_model v0.2.0"
	"github.com/prometheus/client_model v0.2.0/go.mod"
	"github.com/prometheus/common v0.4.1/go.mod"
	"github.com/prometheus/common v0.9.1"
	"github.com/prometheus/common v0.9.1/go.mod"
	"github.com/prometheus/procfs v0.0.0-20181005140218-185b4288413d/go.mod"
	"github.com/prometheus/procfs v0.0.2/go.mod"
	"github.com/prometheus/procfs v0.0.8"
	"github.com/prometheus/procfs v0.0.8/go.mod"
	"github.com/prometheus/procfs v0.0.11"
	"github.com/prometheus/procfs v0.0.11/go.mod"
	"github.com/shibukawa/configdir v0.0.0-20170330084843-e180dbdc8da0/go.mod"
	"github.com/shirou/gopsutil v2.18.11+incompatible"
	"github.com/shirou/gopsutil v2.18.11+incompatible/go.mod"
	"github.com/shirou/gopsutil v2.20.3+incompatible"
	"github.com/shirou/gopsutil v2.20.3+incompatible/go.mod"
	"github.com/shirou/w32 v0.0.0-20160930032740-bb4de0191aa4"
	"github.com/shirou/w32 v0.0.0-20160930032740-bb4de0191aa4/go.mod"
	"github.com/sirupsen/logrus v1.2.0/go.mod"
	"github.com/sirupsen/logrus v1.4.2"
	"github.com/sirupsen/logrus v1.4.2/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/objx v0.1.1/go.mod"
	"github.com/stretchr/testify v1.2.2/go.mod"
	"github.com/stretchr/testify v1.3.0/go.mod"
	"github.com/stretchr/testify v1.4.0"
	"github.com/stretchr/testify v1.4.0/go.mod"
	"golang.org/x/arch v0.0.0-20181203225421-5a4828bb7045/go.mod"
	"golang.org/x/crypto v0.0.0-20180904163835-0709b304e793/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/net v0.0.0-20181114220301-adae6a3d119a/go.mod"
	"golang.org/x/net v0.0.0-20190613194153-d28f0bde5980/go.mod"
	"golang.org/x/sync v0.0.0-20181108010431-42b317875d0f/go.mod"
	"golang.org/x/sync v0.0.0-20181221193216-37e7f081c4d4/go.mod"
	"golang.org/x/sync v0.0.0-20190911185100-cd5d95a43a6e/go.mod"
	"golang.org/x/sys v0.0.0-20180905080454-ebe1bf3edb33/go.mod"
	"golang.org/x/sys v0.0.0-20181116152217-5ac8a444bdc5/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190422165155-953cdadca894/go.mod"
	"golang.org/x/sys v0.0.0-20200106162015-b016eb3dc98e/go.mod"
	"golang.org/x/sys v0.0.0-20200122134326-e047566fdf82"
	"golang.org/x/sys v0.0.0-20200122134326-e047566fdf82/go.mod"
	"golang.org/x/sys v0.0.0-20200316230553-a7d97aace0b0"
	"golang.org/x/sys v0.0.0-20200316230553-a7d97aace0b0/go.mod"
	"golang.org/x/sys v0.0.0-20200420163511-1957bb5e6d1f"
	"golang.org/x/sys v0.0.0-20200420163511-1957bb5e6d1f/go.mod"
	"golang.org/x/sys v0.0.0-20200523222454-059865788121"
	"golang.org/x/sys v0.0.0-20200523222454-059865788121/go.mod"
	"golang.org/x/text v0.3.0"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543"
	"golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543/go.mod"
	"google.golang.org/protobuf v0.0.0-20200109180630-ec00e32a8dfd/go.mod"
	"google.golang.org/protobuf v0.0.0-20200221191635-4d8936d0db64/go.mod"
	"google.golang.org/protobuf v0.0.0-20200228230310-ab0ca4ff8a60/go.mod"
	"google.golang.org/protobuf v1.20.1-0.20200309200217-e05f789c0967/go.mod"
	"google.golang.org/protobuf v1.21.0"
	"google.golang.org/protobuf v1.21.0/go.mod"
	"gopkg.in/alecthomas/kingpin.v2 v2.2.6/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod"
	"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15"
	"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15/go.mod"
	"gopkg.in/yaml.v2 v2.2.1/go.mod"
	"gopkg.in/yaml.v2 v2.2.2/go.mod"
	"gopkg.in/yaml.v2 v2.2.4/go.mod"
	"gopkg.in/yaml.v2 v2.2.5"
	"gopkg.in/yaml.v2 v2.2.5/go.mod"
	"howett.net/plist v0.0.0-20181124034731-591f970eefbb"
	"howett.net/plist v0.0.0-20181124034731-591f970eefbb/go.mod"
)

go-module_set_globals
DESCRIPTION="A terminal based graphical activity monitor inspired by gtop and vtop"
HOMEPAGE="https://github.com/xxxserxxx/gotop"
SRC_URI="https://github.com/xxxserxxx/gotop/archive/v${PV}.tar.gz -> ${P}.tar.gz
			${EGO_SUM_SRC_URI}"

BDEPEND=">=dev-lang/go-1.13"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_compile() {
	go build -o "bin/${PN}" ./cmd/gotop || die
}

src_install() {
	dobin bin/${PN}
	dodoc README.md
}
