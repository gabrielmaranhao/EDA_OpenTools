v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -140 120 -110 {
lab=out}
N 120 -50 120 -20 {
lab=gnd}
N 60 -60 80 -60 {
lab=-}
N 60 -100 80 -100 {
lab=+}
C {devices/vcvs.sym} 120 -80 0 0 {name=E1 value=10000000}
C {devices/ipin.sym} 60 -100 0 0 {name=p1 lab=+}
C {devices/ipin.sym} 60 -60 0 0 {name=p2 lab=-}
C {devices/opin.sym} 120 -140 2 0 {name=p3 lab=out}
C {devices/iopin.sym} 120 -20 2 0 {name=p4 lab=gnd}
