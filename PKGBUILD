
# Maintainer: Your Name <malm.erik@gmail.com>
pkgname=turtl-git
pkgver=pwd
pkgrel=1
epoch=0
pkgdesc="api component"
arch=("any") #Change since Clozure CL download has separate compiled ARM variant.
url="https://turtl.it"
license=('GPL3')
groups=()
depends=('libuv'  'rethinkdb')
makedepends=('git')
checkdepends=()
optdepends=()
provides=(quicklisp)
conflicts=()
replaces=()
backup=("etc/turtlapiconfig")
options=()
install="turtl-git.install"
changelog=
source=("https://beta.quicklisp.org/quicklisp.lisp"
        "turtlapi::git+https://github.com/turtl/api.git"
        "quicklisp.sh"
        "turtlapi.service"
        "ftp://ftp.clozure.com/pub/release/1.11/ccl-1.11-linuxx86.tar.gz"
        "ccl-init.lisp"
        )
noextract=()
md5sums=('a5b2e9dc96af62cb61fb791cabcce1cb'
        'SKIP' 
        '171e1e9e05911eb79eb2938c13bf3dff' 
        '747bd0797df4f7852e2b26de5a2b1fab'
        'c02ddfc4bcc6ef073297d2d6971d20ea'
        '7ceec61d3ddd43cf82f67c7e031a40a3'
        )
validpgpkeys=()

prepare() {
  echo prepare!
  cd $srcdir/turtlapi
  cd $srcdir
  tar -xf ccl-1.11-linuxx86.tar.gz
  #patch -Np0 < ../start.patch
}


function getquicklisp(){
  cd "$srcdir"  
gpg --verify quicklisp.lisp.asc quicklisp.lisp
sbcl --load quicklisp.lisp
quicklisp-quickstart:install
}
build() {
  echo Hello!
}

check() {
  cd "$srcdir/turtlapi"
}

pkgver(){
  cd "$srcdir/turtlapi"
  echo pwd
  git describe --long | sed 's/\([^-]*-g\)/r\1/;s/-/./g'
#git describe https://github.com/turtl/api.git
}

package() {
  rm -rf $pkgdir
  mkdir -p $pkgdir/etc
  mkdir -p $pkgdir/opt
  cp -rf "$srcdir/turtlapi" $pkgdir/opt/turtlapi
  cp -rf "$srcdir/ccl" $pkgdir/opt/turtlapi
  cp -f $pkgdir/opt/turtlapi/config/config.default.lisp  $pkgdir/etc/turtlapiconfig
  echo $(pwd)
  cp ../quicklisp.sh $pkgdir/opt/turtlapi/
  cp $srcdir/quicklisp.lisp $pkgdir/opt/turtlapi/ 
  mkdir -p $pkgdir/usr/lib/systemd/system
  cp $srcdir/turtlapi.service $pkgdir/usr/lib/systemd/system
  ln -s ../../../etc/turtlapiconfig $pkgdir/opt/turtlapi/config/config.lisp
  cp $srcdir/ccl-init.lisp $pkgdir/opt/turtlapi/
}
function parking() {
  cd "$srcdir/${pkgname%-git}"  
#	cd "$pkgname-$pkgver"
#	./configure --prefix=/usr
#	make
  echo pwd;
	if ! [ -d lib ]; then
		mkdir lib
	fi
cd lib
	if [ -d api ]; then
          rm -r api
	#cd "$pkgname-$pkgver"
	fi
 	git clone https://github.com/turtl/api.git
	cd api
}
