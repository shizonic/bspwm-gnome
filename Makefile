#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr

PATH_BSPWM_GNOME = $(PREFIX)/bin/bspwm-gnome
PATH_BSPWM_GNOME_DESKTOP = $(PREFIX)/share/applications/bspwm-gnome.desktop
PATH_BSPWM_GNOME_SESSION = $(PREFIX)/share/gnome-session/sessions/bspwm-gnome.session
PATH_BSPWM_GNOME_XSESSION = $(PREFIX)/share/xsessions/bspwm-gnome.desktop
PATH_GNOME_SESSION_BSPWM = $(PREFIX)/bin/gnome-session-bspwm

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D session/bspwm-gnome-xsession.desktop $(PATH_BSPWM_GNOME_XSESSION)
	$(INSTALL) -m0644 -D session/bspwm-gnome.desktop $(PATH_BSPWM_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D session/bspwm-gnome.session $(PATH_BSPWM_GNOME_SESSION)
	$(INSTALL) -m0755 -D session/bspwm-gnome $(PATH_BSPWM_GNOME)
	$(INSTALL) -m0755 -D session/gnome-session-bspwm $(PATH_GNOME_SESSION_BSPWM)



uninstall:
	rm -f $(PATH_BSPWM_GNOME)
	rm -f $(PATH_BSPWM_GNOME_DESKTOP)
	rm -f $(PATH_BSPWM_GNOME_SESSION)
	rm -f $(PATH_BSPWM_GNOME_XSESSION)
	rm -f $(PATH_GNOME_SESSION_BSPWM)



.PHONY: all install uninstall
