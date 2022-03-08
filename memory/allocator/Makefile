SUBDIRS = $(wildcard */)
CURDIR = $(shell pwd)

SOURCE = ${wildcard */*/*.c}
OBJS = ${patsubst %.c,%.o, $(SOURCE)}

CFLAGS += $(patsubst %,-I$(CURDIR)/%/include, $(subst /,, $(SUBDIRS)))

%.o : %.c
	$(CC) $(CFLAGS) -c -o $@ $<

$(ALL): $(OBJS)

$(CLEAN):
	rm -fr $(OBJS)
