CC=gcc
CFLAGS=-Wall -g -std=c99 -O2 -D_FILE_OFFSET_BITS=64 -Wp,-D_FORTIFY_SOURCE=2 -fstack-protector --param=ssp-buffer-size=4 -fPIC -Wl,-z,relro -Wl,-z,now -pie
LIBS=`pkg-config --libs gmime-2.0` -luuid
INCS=`pkg-config --cflags gmime-2.0`

recmail: recmail.c
	$(CC) $(CFLAGS) -o recmail recmail.c ${LIBS} ${INCS}

clean:
	rm -f recmail *.o
