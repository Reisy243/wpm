out = out
src = src/wpm.cpp
ins = /usr
binDir = bin
bin = wpm
cpp = c++

all: clean build install

build:
	mkdir -pv ${out} ${out}/${binDir}
	${cpp} ${src} -o ${out}/${binDir}/${bin}

install:
	cp -rvf ${out}/${bin} ${ins}/${binDir}

uninstall:
	sudo rm -v ${ins}/${binDir}/${bin}

clean:
	rm -rvf ${out}