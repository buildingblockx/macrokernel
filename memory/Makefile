SUBDIRS = $(wildcard */)

$(ALL): $(SUBDIRS)

.PHONY: $(SUBDIRS)
$(SUBDIRS):
	@$(MAKE) -C $@

$(CLEAN):
	@for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir $@; \
	done

$(DISTCLEAN): $(CLEAN)
