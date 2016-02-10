
COMMON_VALA_FLAGS = 	-g --save-temps -X -w \
						--pkg=gio-2.0 \
						--pkg=gtk+-3.0 \
						--pkg=posix \
						--target-glib=2.38 \
						--pkg=json-glib-1.0 \
						--pkg=libsoup-2.4 \
						--pkg gee-0.8  \
						--vapidir=../vapi \
						--Xcc=-I../util \
						-X -D_FILE_OFFSET_BITS=64 \
						-X -DGETTEXT_PACKAGE="gcontainer" \
						--target-glib=2.38 \


COMMON_SOURCES = 	../util/JSONObject.vala

GCONTAINER_SOURCES = 	../src/main.vala \
			../src/gcontainer-manager.vala \
			../src/gcontainer.vala

DOCKER_SOURCES = 	../src/docker/docker-image.vala \
			../src/docker/docker-container.vala \
			../src/docker/docker-container-host-conf

#PREFERENCES_SOURCES = 	preferences_dialog.vala \
#						choose_ignorepkgs_dialog.vala \
#						mirrors_config.vala

GCONTAINER_GRESOURCE_FILE = ../resources/gcontainer.gresource.xml ../resources/gcontainer_resources.c

#UPDATER_GRESOURCE_FILE = ../resources/pamac.updater.gresource.xml

#INSTALLER_GRESOURCE_FILE = ../resources/pamac.installer.gresource.xml

binaries: gcontainer-manager

clean:
	rm -f *.c gcontainer-manager

gcontainer-manager: ../resources/gcontainer_resources.c $(COMMON_SOURCES) $(GCONTAINER_SOURCES)
	valac 	-o gcontainer-manager \
			$(COMMON_VALA_FLAGS) \
			--gresources $(GCONTAINER_GRESOURCE_FILE) \
			$(GCONTAINER_SOURCES)

run:
	./gcontainer-manager
