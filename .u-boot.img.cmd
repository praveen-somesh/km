cmd_u-boot.img := ./tools/mkimage -f auto -A arm -T firmware -C none -O u-boot -a 0x80800000 -e 0 -n "U-Boot 2016.09-rc1-Praveen for am335x board" -E -b arch/arm/dts/am335x-evm.dtb -b arch/arm/dts/am335x-bone.dtb -b arch/arm/dts/am335x-boneblack.dtb -b arch/arm/dts/am335x-evmsk.dtb -b arch/arm/dts/am335x-bonegreen.dtb -b arch/arm/dts/am335x-icev2.dtb -d u-boot-nodtb.bin u-boot.img  >/dev/null
