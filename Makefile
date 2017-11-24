CC=gcc
CFLAGS=-Wall -Wextra -g -std=c99 -O2 -D_FILE_OFFSET_BITS=64 -Wp,-D_FORTIFY_SOURCE=2 -fstack-protector --param=ssp-buffer-size=4 -fPIC -Wl,-z,relro,-z,now,--as-needed -pie
LIBS=`pkg-config --libs gmime-2.6` -luuid
INCS=`pkg-config --cflags gmime-2.6`

recmail: recmail.c
	$(CC) $(CFLAGS) -o recmail recmail.c ${LIBS} ${INCS}

clean:
	rm -f recmail *.o
