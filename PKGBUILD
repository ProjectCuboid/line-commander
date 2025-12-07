pkgname=line-cmd
pkgver=1.0.0
pkgrel=1
pkgdesc="terminal command launcher"
arch=('any')
license=('MIT')
depends=('python' 'python-rich')
source=("line-cmd" "table.json" "install.sh")
sha256sums=('SKIP' 'SKIP' 'SKIP')

package() {
    install -Dm755 "${srcdir}/line-cmd" "${pkgdir}/usr/bin/line-cmd"
    install -Dm755 "${srcdir}/install.sh" "${pkgdir}/usr/share/${pkgname}/install.sh"
    install -Dm644 "${srcdir}/table.json" "${pkgdir}/usr/share/${pkgname}/table.json"
}

post_install() {
    bash /usr/share/line-cmd/install.sh
}

post_upgrade() {
    bash /usr/share/line-cmd/install.sh
}
