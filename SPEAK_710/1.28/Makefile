VENDOR=Jabra
PROJECT_NAME=SPEAK_710
VERSION=1.28
DOWNLOAD_ROOT=https://www.jabra.com/_/media/Product-Documentation/Jabra-speak-710/Firmware
DOWNLOAD_FILE=JabraSpeak710v1280.zip
FIRMWARE_FILE=Jabra_Speak_710-v1.28.0-US_EN-default.dfu
METAINFO_FILE=speak710.metainfo.xml

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
