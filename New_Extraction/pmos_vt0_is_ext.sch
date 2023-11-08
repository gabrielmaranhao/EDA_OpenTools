v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -80 -160 -80 -140 {
lab=GND}
N -80 -240 -80 -220 {
lab=VDD}
N -80 -240 -50 -240 {
lab=VDD}
C {devices/code_shown.sym} -280 -400 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code.sym} -290 -290 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
save all

op
write pmos_vt0_is_ext.raw

.endc

" }
C {devices/launcher.sym} 130 -270 0 0 {name=h2
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/vsource.sym} -80 -190 0 0 {name=V1 value=3.3 savecurrent=true}
C {devices/gnd.sym} -80 -140 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} -80 -240 0 1 {name=p2 sig_type=std_logic lab=VDD}
