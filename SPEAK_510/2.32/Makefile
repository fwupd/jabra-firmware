VENDOR=Jabra
PROJECT_NAME=SPEAK_510
VERSION=2.32
DOWNLOAD_ROOT=https://www.jabra.com/_/media/Jabra_VXi_Product-Documentation/Jabra-SPEAK-510-Series/Firmware
DOWNLOAD_FILE=Jabra_SPEAK_510_USB-v2,-d-,32,-d-,0-vector.zip
#FIRMWARE_FILE=Jabra_SPEAK_510_USB-2-31-0.dfu
FIRMWARE_FILE=Jabra_SPEAK_510_USB-v2.32.0-US_EN-leo_2.dfu
METAINFO_FILE=speak510.metainfo.xml

all: $(VENDOR)-$(PROJECT_NAME)-$(VERSION).cab

$(FIRMWARE_FILE): $(DOWNLOAD_FILE)
	unzip -o $(DOWNLOAD_FILE) $@ && touch $@

$(DOWNLOAD_FILE):
	wget $(DOWNLOAD_ROOT)/$@ -O $@

clean:
	rm -f *.cab *.zip *.dfu

check: $(METAINFO_FILE)
	appstream-util validate-relax $(METAINFO_FILE)

%.cab: $(FIRMWARE_FILE) $(METAINFO_FILE)
	gcab --create --nopath $@ $(FIRMWARE_FILE) $(METAINFO_FILE)
