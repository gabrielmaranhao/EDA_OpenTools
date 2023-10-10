v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 590 -160 1160 270 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1


divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0



unitx=1
logx=1
logy=0



x1=0

linewidth_mult=4.0


x2=10






y2=39
y1=0.053



dataset=-1

color=6
node=vo}
N 350 -90 350 -0 {
lab=vo}
N 350 -170 350 -150 {
lab=VDD}
N 350 30 380 30 {
lab=GND}
N 350 60 350 90 {
lab=#net1}
N 140 30 150 30 {
lab=#net2}
N 210 30 230 30 {
lab=vg}
N 230 30 310 30 {
lab=vg}
N 260 90 260 110 {
lab=#net3}
N 260 170 260 200 {
lab=GND}
N 20 10 50 10 {
lab=vo}
N 20 -70 20 10 {
lab=vo}
N 20 -70 350 -70 {
lab=vo}
N 350 -170 360 -170 {
lab=VDD}
N 0 110 0 120 {
lab=GND}
N 520 -10 520 20 {
lab=GND}
N 350 -70 520 -70 {
lab=vo}
N 90 70 90 90 {
lab=GND}
N 380 30 420 30 {
lab=GND}
N 360 -170 400 -170 {
lab=VDD}
N 0 50 50 50 {
lab=VDD}
N 350 150 350 170 {
lab=GND}
C {/home/gmaranhao/Desktop/gf180_work/auxLib/ampOp_ideal.sym} 10 60 0 0 {name=x1}
C {symbols/nfet_03v3.sym} 330 30 0 0 {name=M1
L=0.3u
W=5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/isource.sym} 350 -120 0 0 {name=I0 value=1n}
C {devices/vsource.sym} 260 140 0 0 {name=V1 value="ac 1 0" savecurrent=false}
C {devices/gnd.sym} 260 200 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 0 80 0 0 {name=VDD value=3.3 savecurrent=true}
C {devices/gnd.sym} 0 120 0 0 {name=l3 lab=GND}
C {devices/capa.sym} 520 -40 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 520 20 0 0 {name=l5 lab=GND}
C {devices/launcher.sym} 670 -330 0 0 {name=h2
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 675 -285 0 0 {name=h1
descr="Load/unload 
waveforms."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw ac
"
}
C {devices/code_shown.sym} 130 -330 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/lab_wire.sym} 240 30 0 1 {name=p4 sig_type=std_logic lab=vg}
C {devices/lab_wire.sym} 250 -70 0 1 {name=p5 sig_type=std_logic lab=vo}
C {devices/gnd.sym} 90 90 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 420 30 0 0 {name=l7 lab=GND}
C {devices/res.sym} 180 30 1 0 {name=R1
value=1G
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 390 -170 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 20 50 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {devices/ammeter.sym} 350 120 0 0 {name=Vmeas savecurrent=true}
C {devices/gnd.sym} 350 170 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 260 60 0 0 {name=C1
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} -10 -350 0 0 {name=NGSPICE
simulator=ngspice
only_toplevel=false 
value="
.option savecurrents

.control
  save all
  op
  remzerovec 
  write nmos_sigma_zeta_ext.raw
  set appendwrite

  ac dec 100 1 1e10
  meas ac sigma_at FIND vo AT=10
  meas ac freq_at WHEN vo=-1

  let sigma=1/(-sigma_at)
  echo
  echo
  echo
  echo Extracted sigma:
  print sigma
  echo
  echo
  echo
  
  remzerovec
  write nmos_sigma_zeta_ext.raw


.endc
.save all
"
}
