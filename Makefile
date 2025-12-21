run:
	cd BUILD; make -f ../cross/crossmakefile all
	cd hidosvm; make run

clean:
	cd BUILD; make -f ../cross/crossmakefile clean
	cd hidosvm; make clean

init:
	sudo apt install mtools libx86emu-dev gcc-multilib libc6-dev-i386
