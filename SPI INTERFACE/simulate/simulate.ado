setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "E:/SPI INTERFACE/simulate/simulate.adf"]} { 
	design create simulate "E:/SPI INTERFACE"
  set newDesign 1
}
design open "E:/SPI INTERFACE/simulate"
cd "E:/SPI INTERFACE"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "E:/SPI INTERFACE/SPI_SLAVE.vhd"
addfile "E:/SPI INTERFACE/BEAGLE_TO_OUTPUTS.vhd"
addfile "E:/SPI INTERFACE/test_bench_spi.vhd"
addfile "E:/SPI INTERFACE/WISHBONE_ENABLE.vhd"
vlib "E:/SPI INTERFACE/simulate/work"
set worklib work
adel -all
vcom -dbg -work work "E:/SPI INTERFACE/SPI_SLAVE.vhd"
vcom -dbg -work work "E:/SPI INTERFACE/BEAGLE_TO_OUTPUTS.vhd"
vcom -dbg -work work "E:/SPI INTERFACE/test_bench_spi.vhd"
vcom -dbg -work work "E:/SPI INTERFACE/WISHBONE_ENABLE.vhd"
entity Test
vsim  +access +r Test   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
