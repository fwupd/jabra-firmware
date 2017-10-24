
all:
	make -C SPEAK_410
	make -C SPEAK_510
	make -C SPEAK_710
	make -C SPEAK_810

clean:
	make -C SPEAK_410 clean
	make -C SPEAK_510 clean
	make -C SPEAK_710 clean
	make -C SPEAK_810 clean
