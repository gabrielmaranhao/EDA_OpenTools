v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 840 -270 840 -240 {
lab=vdd}
N 670 -270 670 -250 {
lab=vdd}
N 670 -60 670 -40 {
lab=GND}
N 440 -170 470 -170 {
lab=out}
N 440 -290 440 -170 {
lab=out}
N 450 -330 920 -330 {
lab=out}
N 440 -330 440 -290 {
lab=out}
N 440 -330 450 -330 {
lab=out}
N 375 -140 375 -120 {
lab=vdd}
N 560 -290 560 -270 {
lab=vdd}
N 980 -270 980 -240 {
lab=vdd}
N 980 -50 980 -40 {
lab=GND}
N 1400 -50 1400 -40 {
lab=GND}
N 1540 -50 1540 -40 {
lab=GND}
N 920 -330 1540 -330 {
lab=out}
N 840 -270 980 -270 {
lab=vdd}
N 1260 -270 1260 -240 {
lab=vdd}
N 1400 -270 1400 -240 {
lab=vdd}
N 980 -270 1120 -270 {
lab=vdd}
N 1120 -270 1260 -270 {
lab=vdd}
N 1260 -270 1400 -270 {
lab=vdd}
N 1400 -270 1540 -270 {
lab=vdd}
N 1540 -330 1610 -330 {
lab=out}
N 900 -330 900 -310 {
lab=out}
N 840 -40 1540 -40 {
lab=GND}
N 1610 -330 1740 -330 {
lab=out}
N 565 -170 625 -170 {
lab=#net1}
N 720 -170 795 -170 {
lab=#net2}
N 890 -170 935 -170 {
lab=#net3}
N 1030 -170 1070 -170 {
lab=#net4}
N 1165 -170 1215 -170 {
lab=#net5}
N 1310 -170 1355 -170 {
lab=#net6}
N 1450 -170 1495 -170 {
lab=#net7}
N 1590 -170 1620 -170 {
lab=#net8}
N 1665 -270 1665 -205 {
lab=vdd}
N 1540 -270 1665 -270 {
lab=vdd}
N 1540 -245 1540 -205 {
lab=vdd}
N 1540 -270 1540 -245 {
lab=vdd}
N 1400 -240 1400 -205 {
lab=vdd}
N 1260 -240 1260 -205 {
lab=vdd}
N 1115 -270 1115 -205 {
lab=vdd}
N 980 -240 980 -205 {
lab=vdd}
N 840 -240 840 -205 {
lab=vdd}
N 670 -250 670 -205 {
lab=vdd}
N 670 -135 670 -60 {
lab=GND}
N 840 -135 840 -45 {
lab=GND}
N 840 -45 840 -40 {
lab=GND}
N 980 -135 980 -50 {
lab=GND}
N 1115 -135 1115 -40 {
lab=GND}
N 1260 -135 1260 -45 {
lab=GND}
N 1260 -45 1260 -40 {
lab=GND}
N 1400 -135 1400 -50 {
lab=GND}
N 1540 -135 1540 -50 {
lab=GND}
N 1540 -40 1665 -40 {
lab=GND}
N 1665 -135 1665 -40 {
lab=GND}
N 1740 -330 1740 -170 {
lab=out}
N 1715 -170 1740 -170 {
lab=out}
N 515 -270 515 -205 {
lab=vdd}
N 515 -270 840 -270 {
lab=vdd}
N 515 -135 515 -40 {
lab=GND}
N 515 -40 840 -40 {
lab=GND}
C {devices/vsource.sym} 375 -90 0 0 {name=VDD value=3.3}
C {devices/gnd.sym} 700 -40 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 375 -60 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 900 -310 0 0 {name=p1 sig_type=std_logic lab=out}
C {devices/code_shown.sym} 0 -350 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 0 -250 0 0 {name=NGSPICE only_toplevel=true
value="
.ic V(out)=1.5
.save all
.tran 0.1p 2n
"}
C {devices/lab_pin.sym} 375 -140 0 0 {name=p2 sig_type=std_logic lab=vdd

}
C {devices/lab_pin.sym} 560 -290 0 0 {name=p3 sig_type=std_logic lab=vdd

}
C {/home/gmaranhao/Desktop/gf_tutorials/inverter/inverter.sym} 450 -170 0 0 {name=X1}
C {/home/gmaranhao/Desktop/gf_tutorials/inverter/inverter.sym} 605 -170 0 0 {name=X2}
C {/home/gmaranhao/Desktop/gf_tutorials/inverter/inverter.sym} 775 -170 0 0 {name=X3}
C {/home/gmaranhao/Desktop/gf_tutorials/inverter/inverter.sym} 915 -170 0 0 {name=X4}
C {/home/gmaranhao/Desktop/gf_tutorials/inverter/inverter.sym} 1050 -170 0 0 {name=X5}
C {/home/gmaranhao/Desktop/gf_tutorials/inverter/inverter.sym} 1195 -170 0 0 {name=X6}
C {/home/gmaranhao/Desktop/gf_tutorials/inverter/inverter.sym} 1335 -170 0 0 {name=X7}
C {/home/gmaranhao/Desktop/gf_tutorials/inverter/inverter.sym} 1475 -170 0 0 {name=X8}
C {/home/gmaranhao/Desktop/gf_tutorials/inverter/inverter.sym} 1600 -170 0 0 {name=X9}
C {devices/title.sym} 170 40 0 0 {name=l2 author="Gabriel Maranhão"}
