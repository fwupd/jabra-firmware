VENDOR=Jabra
PROJECT_NAME=SPEAK_510
VERSION=2.10
FIRMWARE_FILES=Jabra_SPEAK_510_USB-2.10.0.dfu
METAINFO_FILES=speak510.metainfo.xml

all: $(VENDOR)-$(PROJECT_NAME)-$(VERSION).cab

# cannot distribute in repo
Jabra_SPEAK_510_USB-2.10.0.dfu:
	wget -N https://www.jabra.com/Firmware_Data/Jabra_SPEAK_510_USB-2-10-0.dfu -O $@

clean:
	rm -f *.cab *.dfu

check: $(METAINFO_FILES)
	appstream-util validate-relax $(METAINFO_FILES)

%.cab: $(FIRMWARE_FILES) $(METAINFO_FILES)
	gcab --create --nopath $@ $(FIRMWARE_FILES) $(METAINFO_FILES)
