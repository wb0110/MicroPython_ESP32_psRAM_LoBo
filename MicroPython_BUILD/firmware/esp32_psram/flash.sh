#!/bin/bash
python /home/LoBo2_Razno/ESP32/MicroPython/MicroPython_ESP32_psRAM_LoBo/Tools/esp-idf_psram/components/esptool_py/esptool/esptool.py --chip esp32 --port /dev/ttyUSB2 --baud 2000000 --before default_reset --after no_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size detect 0x1000 bootloader/bootloader.bin 0xf000 phy_init_data.bin 0x10000 MicroPython.bin 0x8000 partitions_mpy.bin
