VENDOR=Jabra
PROJECT_NAME=SPEAK_410
VERSION=1.11
FIRMWARE_FILE=Jabra_SPEAK_410_USB-1.11.0.dfu
METAINFO_FILE=speak410.metainfo.xml

all: $(VENDOR)-$(PROJECT_NAME)-$(VERSION).cab

clean:
	rm -f *.cab

check: $(METAINFO_FILE)
	appstream-util validate-relax $(METAINFO_FILE)

%.cab: $(FIRMWARE_FILE) $(METAINFO_FILE)
	gcab --create --nopath $@ $(FIRMWARE_FILE) $(METAINFO_FILE)
