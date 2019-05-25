.PHONY: *

export IMAGE=ivankomolin/arm-tools

compile:
	docker run --rm -it \
	-v ${PWD}/app/:/app/ \
	${IMAGE} \
	bash -c "make clean && make all"

upload:
	docker run --rm -it --privileged \
	-v ${PWD}/app/:/app/ \
	-v /dev/bus/usb/:/dev/bus/usb/ \
	${IMAGE} \
	openocd -d0 \
	-f /usr/share/openocd/scripts/interface/stlink-v2.cfg \
	-f /usr/share/openocd/scripts/target/stm32f0x.cfg \
	-c 'init; program /app/build/app.elf; reset run; exit'