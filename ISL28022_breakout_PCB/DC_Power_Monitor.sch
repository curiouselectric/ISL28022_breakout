EESchema Schematic File Version 4
LIBS:DC_Power_Monitor-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DC Power Monitor"
Date "2020-10-23"
Rev "1"
Comp "The Curious Electric Company"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1550 2950 0    60   Input ~ 0
SDA
Text HLabel 1550 3100 0    60   Input ~ 0
SCLK
$Comp
L matts_components:ISL28022 U?
U 1 1 5F927703
P 4100 2650
AR Path="/53073AD7/5F927703" Ref="U?"  Part="1" 
AR Path="/5F927703" Ref="U1"  Part="1" 
F 0 "U1" H 4150 3000 60  0000 C CNN
F 1 "ISL28022" H 4150 2000 60  0000 C CNN
F 2 "REInnovationFootprint:MSOP10-0.5" H 4300 2550 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1758637.pdf" H 4300 2550 60  0001 C CNN
F 4 "I2C power monitor" H 4100 2650 60  0001 C CNN "Description"
F 5 "~" H 4100 2650 60  0001 C CNN "Notes"
F 6 "Farnell" H 4100 2650 60  0001 C CNN "Supplier"
F 7 "2373594" H 4100 2650 60  0001 C CNN "Code"
F 8 "~" H 4100 2650 60  0001 C CNN "Cost"
	1    4100 2650
	1    0    0    -1  
$EndComp
Text HLabel 8350 2350 2    60   Input ~ 0
Ishp
Text HLabel 8350 4700 2    60   Input ~ 0
Ishn
Text HLabel 5450 2850 2    60   Input ~ 0
GND
Wire Wire Line
	4550 2950 4800 2950
Wire Wire Line
	4800 2950 4800 2850
Wire Wire Line
	4550 3100 4750 3100
Wire Wire Line
	4750 3100 4750 3400
Wire Wire Line
	4750 3400 5100 3400
Wire Wire Line
	4550 2500 4700 2500
Wire Wire Line
	4550 2800 4750 2800
$Comp
L Device:R R?
U 1 1 5F927718
P 1850 2550
AR Path="/53073AD7/5F927718" Ref="R?"  Part="1" 
AR Path="/5F927718" Ref="R1"  Part="1" 
F 0 "R1" V 1930 2550 50  0000 C CNN
F 1 "4.7k" V 1850 2550 50  0000 C CNN
F 2 "REInnovationFootprint:SM0805" H 1850 2550 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1849611.pdf" H 1850 2550 60  0001 C CNN
F 4 "100mW " H 1850 2550 60  0001 C CNN "Description"
F 5 "~" H 1850 2550 60  0001 C CNN "Notes"
F 6 "Farnell" H 1850 2550 60  0001 C CNN "Supplier"
F 7 "2447385" H 1850 2550 60  0001 C CNN "Code"
F 8 "~" H 1850 2550 60  0001 C CNN "Cost"
	1    1850 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 2950 1850 2950
Wire Wire Line
	1550 3100 2050 3100
Connection ~ 2050 3100
Connection ~ 1850 2950
Wire Wire Line
	1850 2100 1950 2100
Wire Wire Line
	1950 2000 1950 2100
Connection ~ 1950 2100
Text Notes 5750 1450 0    60   ~ 0
ESD Protection - Low Speed
Wire Wire Line
	3750 2800 3500 2800
Wire Wire Line
	5300 2650 5300 2500
Wire Wire Line
	5300 2500 6000 2500
Wire Wire Line
	6000 2500 6000 4700
Wire Wire Line
	5300 2650 4550 2650
$Comp
L Device:C C?
U 1 1 5F92773B
P 5550 1850
AR Path="/53073AD7/5F92773B" Ref="C?"  Part="1" 
AR Path="/5F92773B" Ref="C2"  Part="1" 
F 0 "C2" H 5600 1950 50  0000 L CNN
F 1 "2.2u" H 5600 1750 50  0000 L CNN
F 2 "REInnovationFootprint:SM_R_1206" H 5550 1850 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1769893.pdf" H 5550 1850 60  0001 C CNN
F 4 "100V" H 5550 1850 60  0001 C CNN "Description"
F 5 "~" H 5550 1850 60  0001 C CNN "Notes"
F 6 "Farnell" H 5550 1850 60  0001 C CNN "Supplier"
F 7 "2426966RL " H 5550 1850 60  0001 C CNN "Code"
F 8 "~" H 5550 1850 60  0001 C CNN "Cost"
	1    5550 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F927746
P 6950 5000
AR Path="/53073AD7/5F927746" Ref="C?"  Part="1" 
AR Path="/5F927746" Ref="C5"  Part="1" 
F 0 "C5" H 7000 5100 50  0000 L CNN
F 1 "10n" H 7000 4900 50  0000 L CNN
F 2 "REInnovationFootprint:SM_C_0805" H 6950 5000 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1870456.pdf" H 6950 5000 60  0001 C CNN
F 4 "100V" H 6950 5000 60  0001 C CNN "Description"
F 5 "~" H 6950 5000 60  0001 C CNN "Notes"
F 6 "Farnell" H 6950 5000 60  0001 C CNN "Supplier"
F 7 "	2320786 " H 6950 5000 60  0001 C CNN "Code"
F 8 "~" H 6950 5000 60  0001 C CNN "Cost"
	1    6950 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F927751
P 6450 3600
AR Path="/53073AD7/5F927751" Ref="C?"  Part="1" 
AR Path="/5F927751" Ref="C3"  Part="1" 
F 0 "C3" H 6500 3700 50  0000 L CNN
F 1 "1u" H 6500 3500 50  0000 L CNN
F 2 "REInnovationFootprint:SM_R_1206" H 6450 3600 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/84526.pdf" H 6450 3600 60  0001 C CNN
F 4 "100V" H 6450 3600 60  0001 C CNN "Description"
F 5 "~" H 6450 3600 60  0001 C CNN "Notes"
F 6 "Farnell" H 6450 3600 60  0001 C CNN "Supplier"
F 7 "1657939" H 6450 3600 60  0001 C CNN "Code"
F 8 "~" H 6450 3600 60  0001 C CNN "Cost"
	1    6450 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F927767
P 6100 1600
AR Path="/53073AD7/5F927767" Ref="R?"  Part="1" 
AR Path="/5F927767" Ref="R3"  Part="1" 
F 0 "R3" V 6180 1600 50  0000 C CNN
F 1 "470R" V 6100 1600 50  0000 C CNN
F 2 "REInnovationFootprint:SM0805" H 6100 1600 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1849611.pdf" H 6100 1600 60  0001 C CNN
F 4 "100mW" H 6100 1600 60  0001 C CNN "Description"
F 5 "~" H 6100 1600 60  0001 C CNN "Notes"
F 6 "Farnell" H 6100 1600 60  0001 C CNN "Supplier"
F 7 "2447374" H 6100 1600 60  0001 C CNN "Code"
F 8 "~" H 6100 1600 60  0001 C CNN "Cost"
	1    6100 1600
	0    -1   -1   0   
$EndComp
Text Notes 6450 6100 0    60   ~ 0
ESD Protection - Low Speed\nHigh Impedance Path when no shunt attached
Wire Wire Line
	6000 4700 6450 4700
Wire Wire Line
	4700 2350 6450 2350
Text Notes 6350 1900 0    60   ~ 0
LPF - freq 150Hz\nf = 1/(2*pi*R*C)\nR = 470, f = 150Hz, C = 2.2uF\n
Connection ~ 6900 2350
Connection ~ 6950 4700
Wire Wire Line
	4700 2500 4700 2350
Wire Wire Line
	4750 2800 4750 1600
Wire Wire Line
	4750 1600 5550 1600
Text HLabel 1950 2000 1    60   Input ~ 0
5V
Text HLabel 2650 1800 0    60   Input ~ 0
GND
Text HLabel 6950 5350 3    60   Input ~ 0
GND
Text HLabel 6900 3000 3    60   Input ~ 0
GND
Text HLabel 5350 2150 0    60   Input ~ 0
GND
Text HLabel 3500 2800 0    60   Input ~ 0
GND
Wire Wire Line
	4800 2850 5100 2850
Wire Wire Line
	5550 2150 5350 2150
Text HLabel 5600 3400 2    60   Input ~ 0
Vcc
Connection ~ 5550 1600
Connection ~ 6450 2350
Connection ~ 6450 4700
Text Notes 7200 5050 0    60   ~ 0
100V
Text Notes 6650 3850 0    60   ~ 0
100V
Text Notes 7100 2650 0    60   ~ 0
100V
$Comp
L Device:R R?
U 1 1 5F92779C
P 2050 2550
AR Path="/53073AD7/5F92779C" Ref="R?"  Part="1" 
AR Path="/5F92779C" Ref="R2"  Part="1" 
F 0 "R2" V 2130 2550 50  0000 C CNN
F 1 "4.7k" V 2050 2550 50  0000 C CNN
F 2 "REInnovationFootprint:SM0805" H 2050 2550 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1849611.pdf" H 2050 2550 60  0001 C CNN
F 4 "100mW " H 2050 2550 60  0001 C CNN "Description"
F 5 "~" H 2050 2550 60  0001 C CNN "Notes"
F 6 "Farnell" H 2050 2550 60  0001 C CNN "Supplier"
F 7 "2447385" H 2050 2550 60  0001 C CNN "Code"
F 8 "~" H 2050 2550 60  0001 C CNN "Cost"
	1    2050 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F9277A7
P 7450 2350
AR Path="/53073AD7/5F9277A7" Ref="R?"  Part="1" 
AR Path="/5F9277A7" Ref="R4"  Part="1" 
F 0 "R4" V 7530 2350 50  0000 C CNN
F 1 "470R" V 7450 2350 50  0000 C CNN
F 2 "REInnovationFootprint:SM0805" H 7450 2350 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1849611.pdf" H 7450 2350 60  0001 C CNN
F 4 "100mW" H 7450 2350 60  0001 C CNN "Description"
F 5 "~" H 7450 2350 60  0001 C CNN "Notes"
F 6 "Farnell" H 7450 2350 60  0001 C CNN "Supplier"
F 7 "2447374" H 7450 2350 60  0001 C CNN "Code"
F 8 "~" H 7450 2350 60  0001 C CNN "Cost"
	1    7450 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F9277B2
P 7500 4700
AR Path="/53073AD7/5F9277B2" Ref="R?"  Part="1" 
AR Path="/5F9277B2" Ref="R5"  Part="1" 
F 0 "R5" V 7580 4700 50  0000 C CNN
F 1 "470R" V 7500 4700 50  0000 C CNN
F 2 "REInnovationFootprint:SM0805" H 7500 4700 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1849611.pdf" H 7500 4700 60  0001 C CNN
F 4 "100mW" H 7500 4700 60  0001 C CNN "Description"
F 5 "~" H 7500 4700 60  0001 C CNN "Notes"
F 6 "Farnell" H 7500 4700 60  0001 C CNN "Supplier"
F 7 "2447374" H 7500 4700 60  0001 C CNN "Code"
F 8 "~" H 7500 4700 60  0001 C CNN "Cost"
	1    7500 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5F9277BD
P 6900 2650
AR Path="/53073AD7/5F9277BD" Ref="C?"  Part="1" 
AR Path="/5F9277BD" Ref="C4"  Part="1" 
F 0 "C4" H 6950 2750 50  0000 L CNN
F 1 "10n" H 6950 2550 50  0000 L CNN
F 2 "REInnovationFootprint:SM_C_0805" H 6900 2650 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1870456.pdf" H 6900 2650 60  0001 C CNN
F 4 "100V" H 6900 2650 60  0001 C CNN "Description"
F 5 "~" H 6900 2650 60  0001 C CNN "Notes"
F 6 "Farnell" H 6900 2650 60  0001 C CNN "Supplier"
F 7 "	2320786 " H 6900 2650 60  0001 C CNN "Code"
F 8 "~" H 6900 2650 60  0001 C CNN "Cost"
	1    6900 2650
	1    0    0    -1  
$EndComp
Text Notes 5800 1900 0    60   ~ 0
100V
$Comp
L Device:C C?
U 1 1 5F9277CA
P 5100 3150
AR Path="/53073AD7/5F9277CA" Ref="C?"  Part="1" 
AR Path="/5F9277CA" Ref="C1"  Part="1" 
F 0 "C1" H 5150 3250 50  0000 L CNN
F 1 "100n" H 5150 3050 50  0000 L CNN
F 2 "REInnovationFootprint:SM_C_0805" H 5100 3150 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1870456.pdf" H 5100 3150 60  0001 C CNN
F 4 "25V" H 5100 3150 60  0001 C CNN "Description"
F 5 "~" H 5100 3150 60  0001 C CNN "Notes"
F 6 "Farnell" H 5100 3150 60  0001 C CNN "Supplier"
F 7 "2320793 " H 5100 3150 60  0001 C CNN "Code"
F 8 "~" H 5100 3150 60  0001 C CNN "Cost"
	1    5100 3150
	1    0    0    -1  
$EndComp
Connection ~ 5100 2850
Connection ~ 5100 3400
Wire Wire Line
	1950 2100 2050 2100
Wire Wire Line
	6450 2350 6900 2350
Wire Wire Line
	6450 4700 6950 4700
Wire Wire Line
	5100 2850 5450 2850
Wire Wire Line
	5100 3400 5600 3400
$Comp
L matts_components:GND #PWR01
U 1 1 5F944C8C
P 5550 3900
F 0 "#PWR01" H 5550 3900 30  0001 C CNN
F 1 "GND" H 5550 3830 30  0001 C CNN
F 2 "" H 5550 3900 60  0000 C CNN
F 3 "" H 5550 3900 60  0000 C CNN
	1    5550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3300 5100 3400
Wire Wire Line
	5100 2850 5100 3000
Text HLabel 5450 3750 0    60   Input ~ 0
GND
Wire Wire Line
	5450 3750 5550 3750
Wire Wire Line
	5550 3750 5550 3900
Wire Wire Line
	6950 5150 6950 5350
Wire Wire Line
	6950 4700 6950 4850
Wire Wire Line
	6950 4700 7350 4700
Wire Wire Line
	6450 3750 6450 4700
Wire Wire Line
	6450 2350 6450 3450
Wire Wire Line
	6900 2800 6900 3000
Wire Wire Line
	6900 2350 6900 2500
Wire Wire Line
	6900 2350 7300 2350
Wire Wire Line
	5550 1600 5950 1600
Wire Wire Line
	5550 1600 5550 1700
Wire Wire Line
	5550 2000 5550 2150
Wire Wire Line
	1850 2700 1850 2950
Wire Wire Line
	2050 2700 2050 3100
Wire Wire Line
	2050 2100 2050 2400
Wire Wire Line
	1850 2100 1850 2400
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5F968AD3
P 1950 4850
F 0 "J1" H 1867 4420 50  0000 C CNN
F 1 "DATA" H 1867 4513 50  0000 C CNN
F 2 "REInnovationFootprint:SIL-4_Grove_Labelled" H 1950 4850 50  0001 C CNN
F 3 "~" H 1950 4850 50  0001 C CNN
	1    1950 4850
	-1   0    0    -1  
$EndComp
Text HLabel 3050 4850 2    60   Input ~ 0
SDA
Text HLabel 3050 4750 2    60   Input ~ 0
SCLK
Text HLabel 3050 4950 2    60   Input ~ 0
GND
Text HLabel 3050 5050 2    60   Input ~ 0
Vcc
Text Notes 2550 5450 0    60   ~ 0
Grove Connector
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 5F96EDCC
P 10300 2800
F 0 "J8" H 10380 2792 50  0000 L CNN
F 1 "INPUT" H 10380 2699 50  0000 L CNN
F 2 "REInnovationFootprint:TH_SIL-2_screw_terminal_32A_LARGE" H 10300 2800 50  0001 C CNN
F 3 "~" H 10300 2800 50  0001 C CNN
	1    10300 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 5F96F436
P 10300 3800
F 0 "J9" H 10380 3792 50  0000 L CNN
F 1 "OUTPUT" H 10380 3699 50  0000 L CNN
F 2 "REInnovationFootprint:TH_SIL-2_screw_terminal_32A_LARGE" H 10300 3800 50  0001 C CNN
F 3 "~" H 10300 3800 50  0001 C CNN
	1    10300 3800
	1    0    0    -1  
$EndComp
Text HLabel 9550 2900 0    60   Input ~ 0
Ishp
Text HLabel 9550 3800 0    60   Input ~ 0
Ishn
Text HLabel 9550 3900 0    60   Input ~ 0
GND
$Comp
L Device:R R?
U 1 1 5F97676E
P 9850 3400
AR Path="/53073AD7/5F97676E" Ref="R?"  Part="1" 
AR Path="/5F97676E" Ref="R6"  Part="1" 
F 0 "R6" V 9930 3400 50  0000 C CNN
F 1 "R_SHUNT" V 9850 3400 50  0000 C CNN
F 2 "matts_components:Rshunt_universal" H 9850 3400 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1755795.pdf" H 9850 3400 60  0001 C CNN
F 4 "500mW" H 9850 3400 60  0001 C CNN "Description"
F 5 "~" H 9850 3400 60  0001 C CNN "Notes"
F 6 "Farnell" H 9850 3400 60  0001 C CNN "Supplier"
F 7 "	2331878 " H 9850 3400 60  0001 C CNN "Code"
F 8 "~" H 9850 3400 60  0001 C CNN "Cost"
	1    9850 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2900 10000 2900
Wire Wire Line
	10000 2900 10000 3900
Wire Wire Line
	10000 3900 10100 3900
Wire Wire Line
	9550 3900 10000 3900
Connection ~ 10000 3900
Wire Wire Line
	10100 3800 9850 3800
Wire Wire Line
	9850 3550 9850 3800
Connection ~ 9850 3800
Wire Wire Line
	9850 3800 9550 3800
Wire Wire Line
	9850 3250 9850 2900
Connection ~ 9850 2800
Wire Wire Line
	9850 2800 10100 2800
Wire Wire Line
	9550 2900 9850 2900
Connection ~ 9850 2900
Wire Wire Line
	9850 2900 9850 2800
Wire Wire Line
	7600 2350 8350 2350
Wire Wire Line
	7650 4700 8350 4700
Text Notes 2750 1500 0    60   ~ 0
A0 and A1 set\nthe device ID
Wire Wire Line
	1850 2950 3750 2950
Wire Wire Line
	2050 3100 3750 3100
Text HLabel 2650 1900 0    60   Input ~ 0
5V
Text HLabel 2650 2000 0    60   Input ~ 0
SDA
Text HLabel 2650 2100 0    60   Input ~ 0
SCLK
$Comp
L Connector_Generic:Conn_01x05 J3
U 1 1 5F94254E
P 3000 2000
F 0 "J3" H 3080 2042 50  0000 L CNN
F 1 "ID_A0" H 2850 2350 50  0000 L CNN
F 2 "REInnovationFootprint:TH_SIL_5_1mm" H 3000 2000 50  0001 C CNN
F 3 "~" H 3000 2000 50  0001 C CNN
	1    3000 2000
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J4
U 1 1 5F94296A
P 3600 2000
F 0 "J4" H 3680 2042 50  0000 L CNN
F 1 "ID_A1" H 3450 2350 50  0000 L CNN
F 2 "REInnovationFootprint:TH_SIL_5_1mm" H 3600 2000 50  0001 C CNN
F 3 "~" H 3600 2000 50  0001 C CNN
	1    3600 2000
	1    0    0    1   
$EndComp
Wire Wire Line
	2650 1800 2800 1800
Wire Wire Line
	2800 1800 3400 1800
Connection ~ 2800 1800
Wire Wire Line
	3400 1900 2800 1900
Wire Wire Line
	2800 1900 2650 1900
Connection ~ 2800 1900
Wire Wire Line
	2650 2000 2800 2000
Wire Wire Line
	2800 2000 3400 2000
Connection ~ 2800 2000
Wire Wire Line
	3400 2100 2800 2100
Wire Wire Line
	2800 2100 2650 2100
Connection ~ 2800 2100
Wire Wire Line
	2800 2200 2800 2650
Wire Wire Line
	2800 2650 3750 2650
Wire Wire Line
	3750 2500 3400 2500
Wire Wire Line
	3400 2500 3400 2200
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 5F9592EB
P 6100 6500
F 0 "J5" H 6180 6542 50  0000 L CNN
F 1 "PCB" H 6180 6449 50  0000 L CNN
F 2 "REInnovationFootprint:PCB_60x55_outline" H 6100 6500 50  0001 C CNN
F 3 "~" H 6100 6500 50  0001 C CNN
	1    6100 6500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 5F9594B5
P 6100 6800
F 0 "J6" H 6180 6842 50  0000 L CNN
F 1 "LOGO1" H 6180 6749 50  0000 L CNN
F 2 "CuriousElectric3:2019_011_16_CuriousElectricCompany_Logo_Round_Logo_No_words_KiCAD_10mm_PCBLogo" H 6100 6800 50  0001 C CNN
F 3 "~" H 6100 6800 50  0001 C CNN
	1    6100 6800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 5F959603
P 6100 7100
F 0 "J7" H 6180 7142 50  0000 L CNN
F 1 "LOGO2" H 6180 7049 50  0000 L CNN
F 2 "CuriousElectric3:TCEC_Words_13mm" H 6100 7100 50  0001 C CNN
F 3 "~" H 6100 7100 50  0001 C CNN
	1    6100 7100
	1    0    0    -1  
$EndComp
NoConn ~ 5900 6500
NoConn ~ 5900 6800
NoConn ~ 5900 7100
Wire Wire Line
	9200 1600 9200 2800
Wire Wire Line
	6250 1600 9200 1600
Wire Wire Line
	9200 2800 9850 2800
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5F97668E
P 2450 4850
F 0 "J2" H 2367 4420 50  0000 C CNN
F 1 "DATA" H 2367 4513 50  0000 C CNN
F 2 "REInnovationFootprint:SIL-4_Grove_Labelled" H 2450 4850 50  0001 C CNN
F 3 "~" H 2450 4850 50  0001 C CNN
	1    2450 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2150 4750 2650 4750
Wire Wire Line
	2650 4750 3050 4750
Connection ~ 2650 4750
Wire Wire Line
	2650 4850 3050 4850
Wire Wire Line
	2650 4850 2150 4850
Connection ~ 2650 4850
Wire Wire Line
	2150 4950 2650 4950
Wire Wire Line
	2650 4950 3050 4950
Connection ~ 2650 4950
Wire Wire Line
	2650 5050 3050 5050
Wire Wire Line
	2150 5050 2650 5050
Connection ~ 2650 5050
$EndSCHEMATC
