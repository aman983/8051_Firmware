# Compiler and tools
CC = sdcc
PACKIHX = packihx

# Project structure
PRJ_DIR = $(shell pwd)
SRC_DIR = .
HAL_DIR = ../HAL
BUILD_DIR = build

# Sources
SRC = $(SRC_DIR)/main.c $(HAL_DIR)/Delay.c $(HAL_DIR)/Uart.c #$(wildcard ../HAL/*.c)
OBJ = $(patsubst %.c,$(BUILD_DIR)/%.rel,$(notdir $(SRC)))

# Target
TARGET = main

# Flags
CFLAGS = --model-small -mmcs51 -I$(HAL_DIR)

# Default target
all: $(BUILD_DIR) $(BUILD_DIR)/$(TARGET).hex

# Create build directory
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Compile .c to .rel inside build/
$(BUILD_DIR)/%.rel: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD_DIR)/%.rel: $(HAL_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

# Link .rel to .ihx and convert to .hex
$(BUILD_DIR)/$(TARGET).hex: $(OBJ)
	$(CC) $(CFLAGS) -o $(BUILD_DIR)/$(TARGET).ihx $(OBJ)
	$(PACKIHX) $(BUILD_DIR)/$(TARGET).ihx > $(BUILD_DIR)/$(TARGET).hex

# Flash command
flash: $(BUILD_DIR)/$(TARGET).hex
	avrdude -c usbasp -p at89s52 -B 10 -U flash:w:$(BUILD_DIR)/$(TARGET).hex

# Clean everything
clean:
	rm -rf $(BUILD_DIR)
