CC ?= cc
CFLAGS ?= -Wall -O0 -g
#-DNO_LOG_ACCESS
#-DDEFAULT_PORT=9000
#-DFORK_COUNT=2

OBJS := coroutine.o tiny.o

all: tiny

tiny: $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	rm -f *.o tiny *~
