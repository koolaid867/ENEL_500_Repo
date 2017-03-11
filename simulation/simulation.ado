setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/Michael Hosanee/Documents/ENEL 500/Git/ENEL_500_Repo/simulation/simulation.adf"]} { 
	design create simulation "C:/Users/Michael Hosanee/Documents/ENEL 500/Git/ENEL_500_Repo"
  set newDesign 1
}
design open "C:/Users/Michael Hosanee/Documents/ENEL 500/Git/ENEL_500_Repo/simulation"
cd "C:/Users/Michael Hosanee/Documents/ENEL 500/Git/ENEL_500_Repo"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/Michael Hosanee/Documents/ENEL 500/Git/ENEL_500_Repo/BEAGLE_TO_OUTPUTS.vhd"
addfile "C:/Users/Michael Hosanee/Documents/ENEL 500/Git/ENEL_500_Repo/testbench_BEAGLE_YO_OUTPUTS.vhd"
vlib "C:/Users/Michael Hosanee/Documents/ENEL 500/Git/ENEL_500_Repo/simulation/work"
set worklib work
adel -all
vcom -dbg -work work "C:/Users/Michael Hosanee/Documents/ENEL 500/Git/ENEL_500_Repo/BEAGLE_TO_OUTPUTS.vhd"
vcom -dbg -work work "C:/Users/Michael Hosanee/Documents/ENEL 500/Git/ENEL_500_Repo/testbench_BEAGLE_YO_OUTPUTS.vhd"
entity Test
vsim  +access +r Test   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
