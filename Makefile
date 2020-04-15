PREFIX=/usr/local

all: src

install:
	install -Dm755 src $(DESTDIR)$(PREFIX)/bin/src

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/src

test:
	shellcheck src

.PHONY: all install uninstall test
