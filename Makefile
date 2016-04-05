
all:
	cd resources  && make resources
	cd bin ; make



clean:
	cd resources && make clean
	cd bin && make clean


run:
	cd bin ; make run
