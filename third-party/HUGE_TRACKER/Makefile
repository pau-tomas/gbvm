GBDK = ../../../gbdk
GBDKLIB = $(GBDK)/lib/small/asxxxx
CC = $(GBDK)/bin/lcc
SDAR = $(GBDK)/bin/sdar

RRGBDS = ../../../rgbds
RGBASM = $(RRGBDS)/rgbasm
RGB2SDAS = ../../../rgb2sdas/rgb2sdas

BUILD_DIR = ./build
OBJ_DIR = ./obj

CVTFLAGS = -b0

TARGET = $(BUILD_DIR)/hUGEDriver.lib
OBJS = $(OBJ_DIR)/hUGEDriver.obj.o

all: directories $(TARGET)

directories: $(BUILD_DIR) $(OBJ_DIR)

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(OBJ_DIR)/%.obj:	%.asm
	$(RGBASM) -DGBDK -o$@ $<

$(OBJ_DIR)/%.obj.o:	$(OBJ_DIR)/%.obj
	$(RGB2SDAS) $(CVTFLAGS) $<

$(TARGET): $(OBJS)
	$(SDAR) -ru $@ $^

clean:
	@echo "CLEANUP..."
	rm -rf $(OBJ_DIR)
	rm -rf $(BUILD_DIR)
