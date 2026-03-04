CFLAGS=-g -O -Wall
hidosvm : hidosvm.c common.c common.h
	$(CC) $(CFLAGS) -o hidosvm hidosvm.c common.c -lx86emu
hidoskvm : hidoskvm.c common.c common.h
	$(CC) $(CFLAGS) -o hidoskvm hidoskvm.c common.c

run: hidosvm disk1
	./hidosvm disk1

run-kvm: hidoskvm disk1
	./hidoskvm disk1

disk1: ../BUILD/BIN/* files/*
	dd if=/dev/zero of=disk1 bs=4096 count=16384
	/sbin/mkfs.fat -S 4096 -F 12 disk1
	mcopy -i disk1 ../BUILD/BIN/* ::
	mkdir -p files
	cd files; mcopy -s -i ../disk1 * ::

clean:
	rm -f hidosvm hidoskvm disk1

