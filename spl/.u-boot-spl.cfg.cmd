cmd_spl/u-boot-spl.cfg := arm-linux-gnueabihf-gcc -E -Wp,-MD,spl/.u-boot-spl.cfg.d -D__KERNEL__ -D__UBOOT__  -DCONFIG_SPL_BUILD  -D__ARM__ -Wa,-mimplicit-it=always  -mthumb -mthumb-interwork  -mabi=aapcs-linux  -mno-unaligned-access  -ffunction-sections -fdata-sections -fno-common -ffixed-r9  -msoft-float   -pipe  -march=armv7-a   -Iinclude    -I./arch/arm/include -include ./include/linux/kconfig.h  -nostdinc -isystem /home/dhoni/opt/gcc-linaro-4.9-2016.02-x86_64_arm-linux-gnueabihf/bin/../lib/gcc/arm-linux-gnueabihf/4.9.4/include -include ./include/u-boot/u-boot.lds.h -include ./include/config.h -DCPUDIR=arch/arm/cpu/armv7  -ansi -DDO_DEPS_ONLY -D__ASSEMBLY__ -x assembler-with-cpp -P -dM -E -o spl/u-boot-spl.cfg include/config.h
