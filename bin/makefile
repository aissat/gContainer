export LD_LIBRARY_PATH =.
VC = valac
GIR = g-ir-compiler


COMMON_VALA_FLAGS = 	-g --save-temps -X -w \
			--thread \
			--pkg libsoup-2.4 \
			--pkg=gio-2.0 \
			--pkg=gtk+-3.0 \
			--pkg=posix \
			--target-glib=2.38 \
			--pkg=json-glib-1.0 \
			--pkg=vte-2.91 \
			 --pkg json-glib-1.0 \
			 --pkg gee-1.0\
			 -X -D_FILE_OFFSET_BITS=64 \
			 -X -DGETTEXT_PACKAGE="gcontainer" \
			 --target-glib=2.38 \


COMMON_SOURCES = 	../util/JSONObject.vala \
			../util/JParser.vala

JAA_SOURECES   =	../util/Jaa/*.vala

NAMESPACE = Jaa
LIBNAME = libjaa
LIBFILE = $(LIBNAME).so
HFILE   = $(LIBNAME).h
VAPIFILE= $(LIBNAME).vapi
VERSION = 0.1

GIRFILE = $(NAMESPACE)-$(VERSION).gir
TYPEFILE = $(NAMESPACE)-$(VERSION).typelib

GCONTAINER_SOURCES = 	../src/main.vala \
			../src/gcontainer-manager.vala \
			../src/gcontainer-item.vala \
			../src/gcontainer-prefs.vala \
			../src/gcontainer.vala

DOCKER_SOURCES = 	../src/docker/docker-image.vala \
			../src/docker/docker-container.vala \
			../src/docker/docker-container-host-conf.vala



GCONTAINER_GRESOURCE_FILE = ../resources/gcontainer.gresource.xml \
			     ../resources/gcontainer_resources.c

LIBFLAGS = --library=$(LIBNAME) -H $(HFILE) $(JAA_SOURECES)  -X -fPIC -X -shared -o $(LIBFILE) $(COMMON_VALA_FLAGS)  --gir=$(GIRFILE)
GIRFLAGS = --shared-library=$(LIBFILE) --output=$(TYPEFILE) $(GIRFILE)

FLAGS =  $(VAPIFILE) -X $(LIBFILE)  \
			$(COMMON_VALA_FLAGS)\
			--gresources $(GCONTAINER_GRESOURCE_FILE) \
			$(GCONTAINER_SOURCES) $(DOCKER_SOURCES) $(COMMON_SOURCES) \
			  -X -I. -o gcontainer-manager

all:  lib $(TYPEFILE) binaries



$(TYPEFILE):
	$(GIR) $(GIRFLAGS)

binaries: gcontainer-manager
lib     : libjaa.so

clean:
	rm -f *.c gcontainer-manager
	rm -fr $(shell cat .gitignore)
	rm -fr debug

libjaa.so:
	$(VC) $(LIBFLAGS)


gcontainer-manager: ../resources/gcontainer_resources.c $(COMMON_SOURCES) $(GCONTAINER_SOURCES)
	$(VC) $(FLAGS)

run:
	./gcontainer-manager
