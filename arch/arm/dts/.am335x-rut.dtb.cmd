cmd_arch/arm/dts/am335x-rut.dtb := mkdir -p arch/arm/dts/ ; arm-linux-gnueabihf-gcc -E -Wp,-MD,arch/arm/dts/.am335x-rut.dtb.d.pre.tmp -nostdinc -I./arch/arm/dts -I./arch/arm/dts/include -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/dts/.am335x-rut.dtb.dts.tmp arch/arm/dts/am335x-rut.dts ; dtc -O dtb -o arch/arm/dts/am335x-rut.dtb -b 0 -i arch/arm/dts/  -d arch/arm/dts/.am335x-rut.dtb.d.dtc.tmp arch/arm/dts/.am335x-rut.dtb.dts.tmp ; cat arch/arm/dts/.am335x-rut.dtb.d.pre.tmp arch/arm/dts/.am335x-rut.dtb.d.dtc.tmp > arch/arm/dts/.am335x-rut.dtb.d

source_arch/arm/dts/am335x-rut.dtb := arch/arm/dts/am335x-rut.dts

deps_arch/arm/dts/am335x-rut.dtb := \
  arch/arm/dts/am33xx.dtsi \
  arch/arm/dts/include/dt-bindings/gpio/gpio.h \
  arch/arm/dts/include/dt-bindings/pinctrl/am33xx.h \
  arch/arm/dts/include/dt-bindings/pinctrl/omap.h \
  arch/arm/dts/skeleton.dtsi \
  arch/arm/dts/include/dt-bindings/input/input.h \
  arch/arm/dts/include/dt-bindings/input/linux-event-codes.h \
  arch/arm/dts/am33xx-clocks.dtsi \
  arch/arm/dts/tps65217.dtsi \

arch/arm/dts/am335x-rut.dtb: $(deps_arch/arm/dts/am335x-rut.dtb)

$(deps_arch/arm/dts/am335x-rut.dtb):
