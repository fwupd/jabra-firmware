VENDOR=Jabra
PROJECT_NAME=SPEAK_810
VERSION=1.8
DOWNLOAD_ROOT=https://www.jabra.com/_/media/Jabra_VXi_Product-Documentation/Jabra-SPEAK-810/Firmware
DOWNLOAD_FILE=Jabra_SPEAK_810-v1,-d-,8,-d-,0-default-vector.zip
FIRMWARE_FILE=Jabra_SPEAK_810-v1.8.0-US_EN-default.dfu
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
