.PHONY: all
all: test

.PHONY: test
test:
	$(CURDIR)/tests/tests.sh

.PHONY: install
install:
	$(CURDIR)/scripts/make-links.sh -v $(CURDIR)/.* ~

include tools.mk
