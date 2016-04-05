
GCONTAINER_RESOURCES_FILES = container-manager.ui \
				container-item.ui \
				gcontainer-prefs.ui\
				gcontainer-menu.ui
#				package-remove.png

GCONTAINER_GRESOURCE_FILE = gcontainer.gresource.xml

resources: gcontainer_resources.c

gcontainer_resources.c: $(GCONTAINER_GRESOURCE_FILE)
	glib-compile-resources $(GCONTAINER_GRESOURCE_FILE) --target=gcontainer_resources.c --generate-source
clean:
	rm -f *.c
