VENDOR=Jabra
PROJECT_NAME=SPEAK_510
VERSION=2.14
FIRMWARE_FILES=Jabra_SPEAK_510_USB-2.14.0.dfu
METAINFO_FILES=speak510.metainfo.xml

all: $(VENDOR)-$(PROJECT_NAME)-$(VERSION).cab

clean:
	rm *.cab

check: $(METAINFO_FILES)
	appstream-util validate-relax $(METAINFO_FILES)

%.cab: $(FIRMWARE_FILES) $(METAINFO_FILES)
	gcab --create --nopath $@ $(FIRMWARE_FILES) $(METAINFO_FILES)
