v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -20 130 0 {
lab=OUT}
N 90 -50 90 30 {
lab=IN}
N 130 30 140 30 {
lab=GND}
N 140 30 140 60 {
lab=GND}
N 130 -50 140 -50 {
lab=VDD}
N 140 -80 140 -50 {
lab=VDD}
N 130 -10 180 -10 {
lab=OUT}
N 50 -10 90 -10 {
lab=IN}
N 130 -110 130 -80 {
lab=VDD}
N 130 60 130 90 {
lab=GND}
N 140 -90 140 -80 {
lab=VDD}
N 130 -90 140 -90 {
lab=VDD}
N 140 60 140 70 {
lab=GND}
N 130 70 140 70 {
lab=GND}
C {devices/iopin.sym} 50 -10 2 0 {name=p1 lab=IN}
C {devices/iopin.sym} 130 -110 2 0 {name=p2 lab=VDD}
C {devices/iopin.sym} 130 90 2 0 {name=p3 lab=GND}
C {devices/iopin.sym} 180 -10 2 1 {name=p4 lab=OUT}
C {/home/gmaranhao/Desktop/gf180_work/ACM/nmos_acm.sym} 120 30 0 0 {name=N1
model=NMOS_ACM 
w=5u 
l=0.18u 
n=1.37 
is=5.52u 
vt0=vt0_N
sigma=27m 
zeta=56m
}
C {/home/gmaranhao/Desktop/gf180_work/ACM/pmos_acm.sym} 120 -50 0 0 {name=N2 
model=PMOS_ACM 
w=5u 
l=0.18u 
n=1.40 
is=1.82u 
vt0=vt0_P
sigma=24m 
zeta=35m
}
