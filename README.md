# rm330
The Android device tree for the DJI RC (RM330) device, built using the twrpdtgen https://github.com/twrpdtgen/twrpdtgen from stock recovery.img from the device.

The /omni_device/ folder contains the omni style device tree

The /twrp_device/ folder contains the omni style device tree to build the TWRP using for example the minimal manifest TWRP AOSP https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp/tree/twrp-11

The /rm330_touchscreen_driver/ contains Himax_firmware.bin which is the driver for TWRP so the touchscreen would work.

After building the TWRP recovery, decompress it using unmkbootimg and place the Himax_firmware.bin into ramdisk -> /vendor/firmware/ and repack using mkbootimg. After fastboot flash recovery twrp.img you should have working touchscreen.

I've also included the built TWRP and boot image, and also the stock boot.img and stock recovery.img if you wanted to go back. You need the stock recovery to apply any updates from DJI.
