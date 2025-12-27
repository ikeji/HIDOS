run:
	make -C cross
	make -C BUILD -f ../cross/crossmakefile all
	make -C hidosvm run

clean:
	make -C BUILD -f ../cross/crossmakefile clean
	make -C hidosvm clean

init:
	sudo apt install mtools libx86emu-dev gcc-multilib libc6-dev-i386
