
GCONTAINER_RESOURCES_FILES = gcontainer-manager.ui
#				package-remove.png

GCONTAINER_GRESOURCE_FILE = gcontainer.gresource.xml

resources: gcontainer_resources.c

clean:
	rm -f *.c

gcontainer_resources.c: $(GCONTAINER_RESOURCES_FILES) $(GCONTAINER_GRESOURCE_FILE)
	glib-compile-resources $(GCONTAINER_GRESOURCE_FILE) --target=gcontainer_resources.c --generate-source
