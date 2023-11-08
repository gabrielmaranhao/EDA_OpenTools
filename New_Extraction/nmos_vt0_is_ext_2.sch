v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 980 -580 1450 -180 {flags=graph
y1=0.00908883
y2=0.202183
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1


divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0



unitx=1
logx=1
logy=0












x1=-8.10735
x2=-6.18363



rainbow=0
color="7 4"
node="vx
vy"
dataset=-1}
N -120 -180 -120 -160 {
lab=GND}
N -120 -260 -120 -240 {
lab=VDD}
N -120 -260 -90 -260 {
lab=VDD}
N 290 -110 290 -60 {
lab=VX}
N 180 -30 200 -30 {
lab=Vg_12}
N 180 -140 180 -30 {
lab=Vg_12}
N 180 -140 200 -140 {
lab=Vg_12}
N 470 -110 470 -60 {
lab=VY}
N 560 -140 580 -140 {
lab=Vg_34}
N 580 -140 580 -30 {
lab=Vg_34}
N 560 -30 580 -30 {
lab=Vg_34}
N 580 -190 580 -140 {
lab=Vg_34}
N 470 -190 580 -190 {
lab=Vg_34}
N 290 -140 300 -140 {
lab=GND}
N 300 -140 300 -30 {
lab=GND}
N 290 -30 300 -30 {
lab=GND}
N 460 -140 470 -140 {
lab=GND}
N 460 -140 460 -30 {
lab=GND}
N 460 -30 470 -30 {
lab=GND}
N 460 -30 460 10 {
lab=GND}
N 460 10 470 10 {
lab=GND}
N 470 0 470 10 {
lab=GND}
N 300 -30 300 10 {
lab=GND}
N 290 10 300 10 {
lab=GND}
N 290 0 290 10 {
lab=GND}
N 300 10 460 10 {
lab=GND}
N 420 10 420 20 {
lab=GND}
N 290 -440 290 -400 {
lab=VDD}
N 290 -440 470 -440 {
lab=VDD}
N 470 -440 470 -400 {
lab=VDD}
N 510 -140 560 -140 {
lab=Vg_34}
N 510 -30 560 -30 {
lab=Vg_34}
N 200 -140 250 -140 {
lab=Vg_12}
N 200 -30 250 -30 {
lab=Vg_12}
N 470 -340 470 -300 {
lab=#net1}
N 470 -240 470 -190 {
lab=Vg_34}
N 470 -190 470 -170 {
lab=Vg_34}
N 290 -340 290 -300 {
lab=#net2}
N 290 -240 290 -170 {
lab=Vg_12}
N 280 -440 290 -440 {
lab=VDD}
N 470 -440 480 -440 {
lab=VDD}
N 710 -110 710 -60 {
lab=#net3}
N 800 -140 820 -140 {
lab=Vt0}
N 820 -140 820 -30 {
lab=Vt0}
N 800 -30 820 -30 {
lab=Vt0}
N 820 -190 820 -140 {
lab=Vt0}
N 710 -190 820 -190 {
lab=Vt0}
N 750 -140 800 -140 {
lab=Vt0}
N 750 -30 800 -30 {
lab=Vt0}
N 710 -250 710 -170 {
lab=Vt0}
N 710 0 710 10 {
lab=GND}
N 470 10 710 10 {
lab=GND}
N 700 -30 710 -30 {
lab=GND}
N 700 -30 700 10 {
lab=GND}
N 480 -440 750 -440 {
lab=VDD}
N 710 -440 710 -400 {
lab=VDD}
N 710 -340 710 -310 {
lab=#net4}
N 700 -140 710 -140 {
lab=GND}
N 700 -140 700 -20 {
lab=GND}
N 180 -190 180 -140 {
lab=Vg_12}
N 180 -190 290 -190 {
lab=Vg_12}
C {devices/code_shown.sym} -320 -480 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code.sym} 100 -590 0 0 {name=NGSPICE
only_toplevel=true
value="

.param IB=1n
.option gmin=1e-20

.control

let start_ib = 1n
let step_ib = 100n
let end_ib = 10u
let ib_act = start_ib

while ib_act < end_ib
 alterparam IB=$&ib_act
 reset
 op
 remzerovec
 save ib_act
 write nmos_vt0_is_ext.raw
 let ib_act = ib_act + step_ib
 let i = i+1
 set appendwrite
end

.endc
.save all

" spice_ignore=true}
C {devices/launcher.sym} -110 -360 0 0 {name=h2
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/vsource.sym} -120 -210 0 0 {name=V1 value=3.3 savecurrent=true}
C {devices/gnd.sym} -120 -160 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} -120 -260 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {/home/gmaranhao/Desktop/gf180_work/New_Extraction/Association/M2_ass.sym} 270 -140 0 0 {name=x2 WIDTH=5u LENGHT=0.3u}
C {/home/gmaranhao/Desktop/gf180_work/New_Extraction/Association/M3_ass.sym} 490 -30 0 1 {name=x3 WIDTH=5u LENGHT=0.3u}
C {/home/gmaranhao/Desktop/gf180_work/New_Extraction/Association/M4_ass.sym} 520 -140 0 1 {name=x4 WIDTH=5u LENGHT=0.3u}
C {devices/gnd.sym} 420 20 0 0 {name=l3 lab=GND
WIDTH=5u
LENGHT=0.3u}
C {devices/lab_pin.sym} 290 -90 0 0 {name=p1 sig_type=std_logic lab=VX
WIDTH=5u
LENGHT=0.3u}
C {devices/lab_wire.sym} 370 -440 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 470 -90 0 1 {name=p4 sig_type=std_logic lab=VY
WIDTH=5u
LENGHT=0.3u}
C {/home/gmaranhao/Desktop/gf180_work/New_Extraction/Association/M1_ass.sym} 275 -30 0 0 {name=x1 WIDTH=5u LENGHT=0.3u}
C {devices/lab_pin.sym} 580 -120 0 1 {name=p7 sig_type=std_logic lab=Vg_34
WIDTH=5u
LENGHT=0.3u}
C {devices/lab_pin.sym} 180 -100 0 0 {name=p8 sig_type=std_logic lab=Vg_12}
C {devices/ammeter.sym} 290 -270 0 0 {name=Vmeas savecurrent=true}
C {devices/ammeter.sym} 470 -270 0 1 {name=Vmeas1 savecurrent=true}
C {devices/launcher.sym} 1045 -615 0 0 {name=h1
descr="Load/unload 
waveforms."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {devices/code.sym} 230 -590 0 0 {name=NGSPICE1
only_toplevel=true
value="

*.option gmin=1e-20

.control
save all

dc I0 0.5n 5u 0.5n
remzerovec
write nmos_vt0_is_ext.raw
set appendwrite

dc I1 0.5n 5u 0.5n
remzerovec
write nmos_vt0_is_ext.raw

.endc
" spice_ignore=true}
C {/home/gmaranhao/Desktop/gf180_work/New_Extraction/Association/M5_ass.sym} 730 -140 0 1 {name=x6 WIDTH=5u LENGHT=0.3u}
C {/home/gmaranhao/Desktop/gf180_work/New_Extraction/Association/M5_ass.sym} 730 -30 0 1 {name=x7 WIDTH=5u LENGHT=0.3u}
C {devices/lab_wire.sym} 770 -190 0 1 {name=p9 sig_type=std_logic lab=Vt0
WIDTH=5u
LENGHT=0.3u}
C {devices/ammeter.sym} 710 -280 0 1 {name=Vmeas2 savecurrent=true}
C {devices/code.sym} 360 -590 0 0 {name=NGSPICE2
only_toplevel=true
value="

.option gmin=1e-20

.control
save all

op
write nmos_vt0_is_ext_2.raw

.endc
" }
C {devices/isource.sym} 290 -370 0 0 {name=I0 value=1.504u}
C {devices/isource.sym} 470 -370 0 0 {name=I1 value=1.504u}
C {devices/isource.sym} 710 -370 0 0 {name=I2 value=1.504u}
