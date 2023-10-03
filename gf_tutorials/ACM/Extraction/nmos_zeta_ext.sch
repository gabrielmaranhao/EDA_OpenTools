v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -250 -540 280 -60 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1


divx=6
subdivx=8
xlabmag=1.5
ylabmag=1.5


dataset=-1
unitx=1
logx=1
logy=0















x1=3.52207


linewidth_mult=3
y2=0.55
y1=0.17
x2=4.56818



color="5 6"
node="bsim
acm"
sweep=if}
B 2 -250 -60 280 420 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1


divx=6
subdivx=8
xlabmag=1.5
ylabmag=1.5


dataset=-1
unitx=1
logx=1
logy=0















x1=3.52207


linewidth_mult=3
y2=1.9
y1=0.47
x2=4.56818





sweep=if
color=4
node="\\"bsim/acm;zeta_curve\\""}
N -610 -180 -610 -130 {
lab=vg}
N -700 -180 -610 -180 {
lab=vg}
N -700 -180 -700 -100 {
lab=vg}
N -700 -100 -650 -100 {
lab=vg}
N -360 -190 -360 -140 {
lab=vg}
N -450 -190 -360 -190 {
lab=vg}
N -450 -190 -450 -110 {
lab=vg}
N -450 -110 -400 -110 {
lab=vg}
N -610 -70 -610 -60 {
lab=#net1}
N -360 -80 -360 -70 {
lab=#net2}
N -360 -10 -360 10 {
lab=GND}
N -610 0 -610 20 {
lab=GND}
N -360 -110 -290 -110 {
lab=GND}
N -850 -100 -700 -100 {
lab=vg}
N -850 -40 -850 -20 {
lab=GND}
N -610 -100 -550 -100 {
lab=GND}
C {symbols/nfet_03v3.sym} -630 -100 0 0 {name=M1
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
C {/home/gmaranhao/Desktop/gf180_work/ACM/nmos_acm.sym} -370 -110 0 0 {name=N1 
model=NMOS_ACM 
w=5u 
l=0.3u 
n=1.37
is=1.06u 
vt0=648.2m
sigma=26.3m 
zeta=0.001m
}
C {devices/ammeter.sym} -610 -30 0 0 {name=V_i_bsim savecurrent=true}
C {devices/ammeter.sym} -360 -40 0 0 {name=V_i_acm savecurrent=true}
C {devices/gnd.sym} -610 20 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -360 10 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -550 -100 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -290 -110 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -850 -70 0 0 {name=Vg value=0 savecurrent=false}
C {devices/lab_wire.sym} -750 -100 0 0 {name=p1 sig_type=std_logic lab=vg
}
C {devices/lab_wire.sym} -430 -190 0 0 {name=p2 sig_type=std_logic lab=vg
}
C {devices/gnd.sym} -850 -20 0 0 {name=l5 lab=GND}
C {devices/code.sym} -730 -400 0 0 {name=NGSPICE
only_toplevel=true
value="


.control
  pre_osdi /home/gmaranhao/Desktop/gf180_work/ACM/NMOS_ACM_2V0.osdi
  save all

  dc Vg  0.02 18 1m
  let id_acm = i(V_i_acm)
  let id_bsim = i(V_i_bsim)

  let bsim = deriv(ln(id_acm))/deriv(V(vg))
  let acm = deriv(ln(id_bsim))/deriv(V(vg))

  let bsim_2 = deriv(ln(id_acm))
  let acm_2 = deriv(ln(id_bsim))

  let is = 1.06u
  let if = id_bsim/is
  let zeta_curve = bsim/acm

  save id_acm id_bsim bsim acm if zeta_curve

  write nmos_zeta_ext.raw

.endc

" }
C {devices/code_shown.sym} -730 -540 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.model NMOS_ACM nmos_ACM
.model PMOS_ACM pmos_ACM
"}
C {devices/launcher.sym} -185 -575 0 0 {name=h4 
descr="Ctrl-Left-Click to load/unload DC Files" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
