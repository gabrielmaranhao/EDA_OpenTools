v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 590 -150 1160 280 {flags=graph


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






y2=2.06
y1=1.46



dataset=-1



color=4
node=sigma}
N 350 -160 350 -140 {
lab=#net1}
N 350 70 350 100 {
lab=#net2}
N 140 40 150 40 {
lab=#net3}
N 230 40 310 40 {
lab=vg}
N 20 -60 20 20 {
lab=vd}
N 350 -160 360 -160 {
lab=#net1}
N 90 80 90 100 {
lab=GND}
N 360 -160 400 -160 {
lab=#net1}
N 0 60 50 60 {
lab=VDD}
N 350 170 350 190 {
lab=GND}
N 0 120 0 140 {
lab=#net4}
N 350 -0 350 10 {
lab=#net5}
N 350 -80 350 -60 {
lab=vd}
N 350 100 350 110 {
lab=#net2}
N 20 20 50 20 {
lab=vd}
N 20 -60 350 -60 {
lab=vd}
N 400 -100 400 -70 {
lab=GND}
N 210 40 230 40 {
lab=vg}
N 350 40 410 40 {
lab=#net6}
N 410 40 460 40 {
lab=#net6}
N 520 40 540 40 {
lab=GND}
C {/home/gmaranhao/Desktop/gf180_work/auxLib/ampOp_ideal.sym} 10 70 0 0 {name=x1}
C {devices/isource.sym} 350 -110 0 0 {name=I0 value=10n}
C {devices/launcher.sym} 640 -230 0 0 {name=h2
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_wire.sym} 290 40 0 1 {name=p4 sig_type=std_logic lab=vg}
C {devices/lab_wire.sym} 290 -60 0 1 {name=p5 sig_type=std_logic lab=vd}
C {devices/gnd.sym} 90 100 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 20 60 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 350 190 0 0 {name=l1 lab=GND}
C {devices/code.sym} 10 -220 0 0 {name=NGSPICE
simulator=ngspice
only_toplevel=false 
value="
.option savecurrents
.option gmin = 1e-24
.option retol = 1e-5

.ic V(vg) = 0.39

.control
  pre_osdi ./psp103_nqs.osdi
  save all
  op
  remzerovec 
  write nmos_ext_sigma.raw
  set appendwrite

  *ac dec 100 1 1e10

  *remzerovec
  *write nmos_ext_sigma.raw

.endc
.save all
"
}
C {devices/vsource.sym} 0 90 0 1 {name=VA value="0 ac 1 0"}
C {devices/vsource.sym} 0 170 0 1 {name=VAdc value=1.35}
C {devices/gnd.sym} 0 200 0 0 {name=l8 lab=GND}
C {devices/code_shown.sym} 120 -330 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
"}
C {devices/launcher.sym} 645 -195 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/nmos_ext_sigma.raw ac"
}
C {devices/ammeter.sym} 350 140 0 0 {name=V_i2 savecurrent=true}
C {sg13g2_pr/sg13_lv_nmos.sym} 330 40 2 1 {name=M1
L=0.12u
W=10.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 540 40 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 400 -130 0 0 {name=VAdc1 value=5}
C {devices/gnd.sym} 400 -70 0 0 {name=l3 lab=GND}
C {devices/ammeter.sym} 180 40 3 0 {name=V_i1 savecurrent=true}
C {devices/ammeter.sym} 490 40 3 0 {name=V_i3 savecurrent=true}
C {devices/ammeter.sym} 350 -30 0 0 {name=V_i4 savecurrent=true}
C {devices/diode.sym} 200 -150 0 0 {name=D1 model=D area=1}
