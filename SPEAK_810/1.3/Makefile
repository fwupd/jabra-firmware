VENDOR=Jabra
PROJECT_NAME=SPEAK_810
VERSION=1.3
DOWNLOAD_ROOT=https://www.jabra.com/_/media/Product-Documentation/Jabra-SPEAK-810/Firmware
DOWNLOAD_FILE=Jabra_SPEAK_810-v1,-d-,3,-d-,6-vector.zip
FIRMWARE_FILE=Jabra_SPEAK_810-v1.3.6-US_EN-default.dfu
METAINFO_FILE=speak810.metainfo.xml

all: $(VENDOR)-$(PROJECT_NAME)-$(VERSION).cab

# cannot distribute in repo
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
