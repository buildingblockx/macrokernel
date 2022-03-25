export ROOTDIR = $(shell pwd)
export IMAGE = macrokernel
export MAKE = make
export ALL = all
export CLEAN = clean
export DISTCLEAN = distclean

export CROSS_COMPILER =
export CC = $(CROSS_COMPILER)gcc
export CFLAGS := -g -I$(ROOTDIR)/include

SUBDIRS = $(filter-out include/ tools/ architecture/, $(wildcard */))
OBJS = $(shell find -name *.o)

$(ALL): $(SUBDIRS)
	$(CC) $(CFLAGS) -o $(IMAGE) $(OBJS)

.PHONY: $(SUBDIRS)
$(SUBDIRS):
	@$(MAKE) -C $@

$(CLEAN):
	@for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir $@; \
	done
	rm -fr $(IMAGE)

$(DISTCLEAN): $(CLEAN)
