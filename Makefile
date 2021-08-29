clean:
	rm -rf build

update:
	ppm --generate-package="src/HttpRouter"

build:
	mkdir build
	ppm --no-intro --compile="src/HttpRouter" --directory="build"

install:
	ppm --no-intro --no-prompt --fix-conflict --install="build/net.intellivoid.http_router.ppm"