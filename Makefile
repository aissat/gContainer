
all:
	cd resources  && make resources
	cd bin ; make binaries
#	cd po && make gettext

clean:
	cd resources && make clean
	cd bin && make clean
#	cd po && make clean
#	rm -f data/polkit/org.manjaro.pamac.policy

run:
	cd bin ; make run
