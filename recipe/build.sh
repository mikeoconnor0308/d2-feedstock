set -ex
pushd src

go build -ldflags "-s -w -X oss.terrastruct.com/d2/lib/version.Version=$PKG_VERSION" -o $PREFIX/bin/d2

go-licenses save . --ignore "github.com/golang/freetype" --ignore "github.com/dop251/goja/ftoa" --ignore "github.com/alecthomas/chroma/v2" --ignore "github.com/d2lang/d2/d2layouts/d2elklayout" --save_path ../library_licenses
