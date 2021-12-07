VENDOR=Jabra
PROJECT_NAME=SPEAK_410
VERSION=1.12
FIRMWARE_FILE=Jabra_SPEAK_410_USB-1.12.0.dfu
METAINFO_FILE=speak410.metainfo.xml
DOWNLOAD_ROOT="https://www.jabra.com/_/media/Jabra_VXi_Product-Documentation/Jabra-SPEAK-410-Series/Firmware/Jabra_SPEAK_410_USB-1-12-0.dfu"

all: $(VENDOR)-$(PROJECT_NAME)-$(VERSION).cab

# cannot distribute in repo
$(FIRMWARE_FILE):
	wget $(DOWNLOAD_ROOT)/$@ -O $@
clean:
	rm -f *.cab *.dfu

check: $(METAINFO_FILE)
	appstream-util validate-relax $(METAINFO_FILE)

%.cab: $(FIRMWARE_FILE) $(METAINFO_FILE)
	gcab --create --nopath $@ $(FIRMWARE_FILE) $(METAINFO_FILE)
