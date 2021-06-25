all: nctr.dat .deps install

.deps:
	sudo pacman -S fortune-mod cowsay
	touch .deps

nctr.dat:
	strfile nctr

install: .deps nctr.dat
	sudo cp nctr /usr/share/fortune/
	sudo cp nctr.dat /usr/share/fortune

test:
	fortune nctr | cowsay

clean:
	rm nctr.dat
	rm .deps