lappend auto_path "C:/lscc/diamond/3.8_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {simulation}
set ::bali::simulation::Para(PROJECTPATH) {C:/Users/Michael Hosanee/Documents/ENEL 500/Git/ENEL_500_Repo/EUREKA_FPGA_SPI}
set ::bali::simulation::Para(FILELIST) {"C:/Users/Michael Hosanee/Documents/ENEL 500/Git/ENEL_500_Repo/EUREKA_FPGA_SPI/EFB_SPI.vhd" "C:/Users/Michael Hosanee/Documents/ENEL 500/Git/ENEL_500_Repo/EUREKA_FPGA_SPI/Test_Bench_EFB_SPI.vhd" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "VHDL" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {Test}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VHDL}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ActiveHDL_Run