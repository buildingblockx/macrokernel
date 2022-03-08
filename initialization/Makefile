CURDIR = $(shell pwd)

SOURCE = ${wildcard *.c}
OBJS = ${patsubst %.c, %.o, $(SOURCE)}

CFLAGS += -I$(CURDIR)/include

$(ALL): $(OBJS)

$(CLEAN):
	rm -fr $(OBJS)
