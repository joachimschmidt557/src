PREFIX=/usr/local

install:
	install -Dm755 src $(DESTDIR)$(PREFIX)/bin/src

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/src

test:
	shellcheck src

.PHONY: install uninstall test
