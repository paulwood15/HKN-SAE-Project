EESchema Schematic File Version 4
LIBS:PowerSenseModule-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "Power Sense Module "
Date "2019-12-18"
Rev "1.0"
Comp "University of Central Florida - HKN Zeta Chi"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 3500 6850 0    50   ~ 0
Close to VDD TX pin\n
$Comp
L power:+5V #PWR021
U 1 1 5D44F50B
P 1250 6825
F 0 "#PWR021" H 1250 6675 50  0001 C CNN
F 1 "+5V" H 1265 6998 50  0000 C CNN
F 2 "" H 1250 6825 50  0001 C CNN
F 3 "" H 1250 6825 50  0001 C CNN
	1    1250 6825
	1    0    0    -1  
$EndComp
$Comp
L Interface_CAN_LIN:MCP2542FDxMF U4
U 1 1 5D33FB36
P 1375 5400
F 0 "U4" H 1025 5050 50  0000 C CNN
F 1 "MCP2542FDxMF" H 1825 5000 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1375 4900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MCP2542FD-4FD-MCP2542WFD-4WFD-Data-Sheet20005514B.pdf" H 1375 5400 50  0001 C CNN
F 4 "Microchip" H 1375 5400 50  0001 C CNN "Manufacturer"
F 5 "MCP2542FD-H/SN" H 1375 5400 50  0001 C CNN "Manufacturer PN"
F 6 "0.79" H 1375 5400 50  0001 C CNN "Price 1 QTY"
F 7 "Mouser" H 1375 5400 50  0001 C CNN "Supplier"
F 8 "https://www.mouser.com/ProductDetail/Microchip-Technology/MCP2542FD-H-SN?qs=sGAEpiMZZMsGqoCZrYwANkPccAfLmAxJzMSmRhEMflk%3D" H 1375 5400 50  0001 C CNN "Supplier Link"
F 9 " 579-MCP2542FD-H/SN " H 1375 5400 50  0001 C CNN "Supplier PN"
	1    1375 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5175 7125 5175
Wire Wire Line
	7075 5675 7075 5800
Connection ~ 7075 5675
Wire Wire Line
	7075 5375 7075 5675
Text HLabel 2875 5550 2    50   Input ~ 0
CAN-
Text HLabel 2875 5250 2    50   Input ~ 0
CAN+
Wire Wire Line
	7075 5275 7075 5025
Wire Wire Line
	7125 5275 7075 5275
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 5D1EB185
P 7325 5375
F 0 "J3" H 7405 5367 50  0000 L CNN
F 1 "Programming Header" H 7405 5276 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7325 5375 50  0001 C CNN
F 3 "~" H 7325 5375 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07VNXL5BD/ref=ppx_yo_dt_b_asin_title_o04_s00?ie=UTF8&psc=1" H 7325 5375 50  0001 C CNN "Supplier Link"
	1    7325 5375
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR019
U 1 1 5D1E9E31
P 3400 6900
F 0 "#PWR019" H 3400 6750 50  0001 C CNN
F 1 "+5V" H 3415 7073 50  0000 C CNN
F 2 "" H 3400 6900 50  0001 C CNN
F 3 "" H 3400 6900 50  0001 C CNN
	1    3400 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5D1E97D6
P 3900 7050
F 0 "C14" H 4015 7096 50  0000 L CNN
F 1 "0.1uF" H 4015 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3938 6900 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/400/lcc_automotive_general_en-843974.pdf" H 3900 7050 50  0001 C CNN
F 4 "TDK" H 3900 7050 50  0001 C CNN "Manufacturer"
F 5 "CGA3E2X7R1H104K080AA " H 3900 7050 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 3900 7050 50  0001 C CNN "Price 1 QTY"
F 7 "Mouser" H 3900 7050 50  0001 C CNN "Supplier"
F 8 "https://www.mouser.com/ProductDetail/TDK/CGA3E2X7R1H104K080AA?qs=sGAEpiMZZMs0AnBnWHyRQEWjzA2rN6H9nJklEYEm1tg%3D" H 3900 7050 50  0001 C CNN "Supplier Link"
F 9 "810-CGA3E2X7R1H104K " H 3900 7050 50  0001 C CNN "Supplier PN"
	1    3900 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 7200 3900 7200
Wire Wire Line
	3400 7200 3600 7200
Connection ~ 3600 7200
Wire Wire Line
	3600 6900 3900 6900
Wire Wire Line
	3400 6900 3600 6900
Connection ~ 3600 6900
$Comp
L Device:C C13
U 1 1 5D1E97D0
P 3600 7050
F 0 "C13" H 3400 7100 50  0000 L CNN
F 1 "0.01uF" H 3250 7000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3638 6900 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/212/KEM_C1002_X7R_SMD-1102033.pdf" H 3600 7050 50  0001 C CNN
F 4 "KEMET" H 3600 7050 50  0001 C CNN "Manufacturer"
F 5 "C0603C103J5RACTU " H 3600 7050 50  0001 C CNN "Manufacturer PN"
F 6 "0.10" H 3600 7050 50  0001 C CNN "Price 1 QTY"
F 7 "Mouser" H 3600 7050 50  0001 C CNN "Supplier"
F 8 "https://www.mouser.com/ProductDetail/KEMET/C0603C103J5RACTU?qs=sGAEpiMZZMs0AnBnWHyRQJxdEn2F2BG1SUc13Z4vudE%3D" H 3600 7050 50  0001 C CNN "Supplier Link"
F 9 "80-C0603C103J5R " H 3600 7050 50  0001 C CNN "Supplier PN"
	1    3600 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5D1BE43C
P 1750 6975
F 0 "C11" H 1865 7021 50  0000 L CNN
F 1 "0.1uF" H 1865 6930 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1788 6825 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/400/lcc_automotive_general_en-843974.pdf" H 1750 6975 50  0001 C CNN
F 4 "TDK" H 1750 6975 50  0001 C CNN "Manufacturer"
F 5 "CGA3E2X7R1H104K080AA " H 1750 6975 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 1750 6975 50  0001 C CNN "Price 1 QTY"
F 7 "Mouser" H 1750 6975 50  0001 C CNN "Supplier"
F 8 "https://www.mouser.com/ProductDetail/TDK/CGA3E2X7R1H104K080AA?qs=sGAEpiMZZMs0AnBnWHyRQEWjzA2rN6H9nJklEYEm1tg%3D" H 1750 6975 50  0001 C CNN "Supplier Link"
F 9 "810-CGA3E2X7R1H104K " H 1750 6975 50  0001 C CNN "Supplier PN"
	1    1750 6975
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 7125 1750 7125
Wire Wire Line
	1250 7125 1450 7125
Connection ~ 1450 7125
Wire Wire Line
	1450 6825 1750 6825
Wire Wire Line
	1250 6825 1450 6825
Connection ~ 1450 6825
$Comp
L Device:C C10
U 1 1 5D1BE442
P 1450 6975
F 0 "C10" H 1175 7025 50  0000 L CNN
F 1 "0.01uF" H 1100 6925 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1488 6825 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/212/KEM_C1002_X7R_SMD-1102033.pdf" H 1450 6975 50  0001 C CNN
F 4 "KEMET" H 1450 6975 50  0001 C CNN "Manufacturer"
F 5 "C0603C103J5RACTU " H 1450 6975 50  0001 C CNN "Manufacturer PN"
F 6 "0.10" H 1450 6975 50  0001 C CNN "Price 1 QTY"
F 7 "Mouser" H 1450 6975 50  0001 C CNN "Supplier"
F 8 "https://www.mouser.com/ProductDetail/KEMET/C0603C103J5RACTU?qs=sGAEpiMZZMs0AnBnWHyRQJxdEn2F2BG1SUc13Z4vudE%3D" H 1450 6975 50  0001 C CNN "Supplier Link"
F 9 "80-C0603C103J5R " H 1450 6975 50  0001 C CNN "Supplier PN"
	1    1450 6975
	1    0    0    -1  
$EndComp
Text Notes 1500 6725 0    50   ~ 0
Close to VDD MCU pin\n
Wire Wire Line
	2000 5500 2000 5550
Wire Wire Line
	1875 5500 2000 5500
Wire Wire Line
	2000 5300 2000 5250
Wire Wire Line
	1875 5300 2000 5300
Wire Wire Line
	2175 5550 2750 5550
Wire Wire Line
	2000 5550 2175 5550
Connection ~ 2175 5550
Wire Wire Line
	2175 5250 2525 5250
Wire Wire Line
	2000 5250 2175 5250
Connection ~ 2175 5250
$Comp
L Device:R_US R7
U 1 1 5D1D5ACD
P 2175 5400
F 0 "R7" H 2243 5446 50  0000 L CNN
F 1 "120" H 2243 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2215 5390 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDO0000/AOA0000C331.pdf" H 2175 5400 50  0001 C CNN
F 4 "Panasonic" H 2175 5400 50  0001 C CNN "Manufacturer"
F 5 "ERJ-PA3J121V" H 2175 5400 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 2175 5400 50  0001 C CNN "Price 1 QTY"
F 7 "Digikey" H 2175 5400 50  0001 C CNN "Supplier"
F 8 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-PA3J121V/P120BZCT-ND/5036246" H 2175 5400 50  0001 C CNN "Supplier Link"
F 9 "P120BZCT-ND" H 2175 5400 50  0001 C CNN "Supplier PN"
	1    2175 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR030
U 1 1 5D1D3CD9
P 1325 5000
F 0 "#PWR030" H 1325 4850 50  0001 C CNN
F 1 "+5V" H 1375 5150 50  0000 C CNN
F 2 "" H 1325 5000 50  0001 C CNN
F 3 "" H 1325 5000 50  0001 C CNN
	1    1325 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5475 7125 5475
Wire Wire Line
	6900 5575 7125 5575
$Comp
L F1_OP_Amps:NCV2007x U2
U 5 1 5D4B8129
P 5195 7035
F 0 "U2" H 5273 7106 50  0000 L CNN
F 1 "NCV2007x" H 5273 7015 50  0000 L CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5195 6685 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/NCS20071-D.PDF" H 5195 6685 50  0001 C CNN
F 4 "ON Semiconductor" H 5195 7035 50  0001 C CNN "Manufacturer"
F 5 "NCV20074DR2G " H 5195 7035 50  0001 C CNN "Manufacturer PN"
F 6 "Mouser" H 5195 7035 50  0001 C CNN "Supplier"
F 7 "https://www.mouser.com/ProductDetail/ON-Semiconductor/NCV20074DR2G?qs=sGAEpiMZZMtCHixnSjNA6NXlPpRsFEjtp%252BTBls3ALHY%3D" H 5195 7035 50  0001 C CNN "Supplier Link"
F 8 " 863-NCV20074DR2G " H 5195 7035 50  0001 C CNN "Supplier PN"
F 9 "1.19" H 5195 7035 50  0001 C CNN "Price 1 QTY"
	5    5195 7035
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR011
U 1 1 5D527CAD
P 5195 7335
F 0 "#PWR011" H 5195 7085 50  0001 C CNN
F 1 "GNDA" H 5200 7162 50  0000 C CNN
F 2 "" H 5195 7335 50  0001 C CNN
F 3 "" H 5195 7335 50  0001 C CNN
	1    5195 7335
	1    0    0    -1  
$EndComp
Wire Wire Line
	1375 5000 1325 5000
Connection ~ 1325 5000
Wire Wire Line
	1325 5000 1275 5000
$Comp
L power:+5V #PWR0102
U 1 1 5D4D2E35
P 7075 5025
F 0 "#PWR0102" H 7075 4875 50  0001 C CNN
F 1 "+5V" H 7125 5175 50  0000 C CNN
F 2 "" H 7075 5025 50  0001 C CNN
F 3 "" H 7075 5025 50  0001 C CNN
	1    7075 5025
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5D518286
P 9900 5575
F 0 "D4" H 9825 5675 50  0000 C CNN
F 1 "RED_LED" H 10025 5675 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9900 5575 50  0001 C CNN
F 3 "https://katalog.we-online.de/led/datasheet/150060RS75000.pdf" H 9900 5575 50  0001 C CNN
F 4 "Würth Elektronik" H 9900 5575 50  0001 C CNN "Manufacturer"
F 5 "150060RS75000" H 9900 5575 50  0001 C CNN "Manufacturer PN"
F 6 "0.14" H 9900 5575 50  0001 C CNN "Price 1 QTY"
F 7 "Digikey" H 9900 5575 50  0001 C CNN "Supplier"
F 8 "https://www.digikey.com/product-detail/en/w-rth-elektronik/150060RS75000/732-4978-1-ND/4489899" H 9900 5575 50  0001 C CNN "Supplier Link"
F 9 "732-4978-1-ND" H 9900 5575 50  0001 C CNN "Supplier PN"
	1    9900 5575
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 5D518C5C
P 10000 5150
F 0 "D3" H 10100 5100 50  0000 C CNN
F 1 "GREEN_LED" H 10100 5025 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10000 5150 50  0001 C CNN
F 3 "https://katalog.we-online.de/led/datasheet/150060VS75000.pdf" H 10000 5150 50  0001 C CNN
F 4 "Digikey" H 10000 5150 50  0001 C CNN "Supplier"
F 5 "https://www.digikey.com/product-detail/en/w-rth-elektronik/150060VS75000/732-4980-1-ND/4489904" H 10000 5150 50  0001 C CNN "Supplier Link"
F 6 "Würth Elektronik" H 10000 5150 50  0001 C CNN "Manufacturer"
F 7 "150060VS75000" H 10000 5150 50  0001 C CNN "Manufacturer PN"
F 8 "0.14" H 10000 5150 50  0001 C CNN "Price 1 QTY"
F 9 "732-4980-1-ND" H 10000 5150 50  0001 C CNN "Supplier PN"
	1    10000 5150
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R20
U 1 1 5D526340
P 9500 5150
F 0 "R20" V 9400 5125 50  0000 C CNN
F 1 "300" V 9600 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9540 5140 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDO0000/AOA0000C331.pdf" H 9500 5150 50  0001 C CNN
F 4 "Panasonic" H 9500 5150 50  0001 C CNN "Manufacturer"
F 5 "ERJ-PA3J301V" H 9500 5150 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 9500 5150 50  0001 C CNN "Price 1 QTY"
F 7 "Digikey" H 9500 5150 50  0001 C CNN "Supplier"
F 8 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-PA3J301V/P300BZCT-ND/5036302" H 9500 5150 50  0001 C CNN "Supplier Link"
F 9 "P300BZCT-ND" H 9500 5150 50  0001 C CNN "Supplier PN"
	1    9500 5150
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R21
U 1 1 5D527256
P 9400 5575
F 0 "R21" V 9300 5575 50  0000 C CNN
F 1 "300" V 9525 5575 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9440 5565 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDO0000/AOA0000C331.pdf" H 9400 5575 50  0001 C CNN
F 4 "Panasonic" H 9400 5575 50  0001 C CNN "Manufacturer"
F 5 "ERJ-PA3J301V" H 9400 5575 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 9400 5575 50  0001 C CNN "Price 1 QTY"
F 7 "Digikey" H 9400 5575 50  0001 C CNN "Supplier"
F 8 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-PA3J301V/P300BZCT-ND/5036302" H 9400 5575 50  0001 C CNN "Supplier Link"
F 9 "P300BZCT-ND" H 9400 5575 50  0001 C CNN "Supplier PN"
	1    9400 5575
	0    1    1    0   
$EndComp
Wire Wire Line
	9750 5575 9550 5575
Wire Wire Line
	9850 5150 9650 5150
Wire Wire Line
	10050 5575 10350 5575
Wire Wire Line
	10150 5150 10450 5150
Text Notes 10250 5125 0    50   ~ 0
Green
Text Notes 10075 5675 0    50   ~ 0
Red\n
Wire Wire Line
	7075 5675 7125 5675
Wire Wire Line
	7075 5375 7125 5375
$Comp
L Device:Crystal_GND24_Small Y1
U 1 1 5D7A06C0
P 4400 5375
F 0 "Y1" V 4446 5244 50  0000 R CNN
F 1 "25 MHz" V 4355 5244 50  0000 R CNN
F 2 "ABRACON_4PIN:Crystal_SMD_S2.05mm_L2.55" H 4400 5375 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/3/ABM10AIG-783578.pdf" H 4400 5375 50  0001 C CNN
F 4 "Abracon" H 4400 5375 50  0001 C CNN "Manufacturer"
F 5 "ABM10AIG-25.000MHZ-4Z-T3" H 4400 5375 50  0001 C CNN "Manufacturer PN"
F 6 "Mouser" H 4400 5375 50  0001 C CNN "Supplier"
F 7 "https://www.mouser.com/ProductDetail/ABRACON/ABM10AIG-25000MHZ-4Z-T3?qs=%2Fha2pyFaduj1vudij7IzbnSbHVJSLi0XvJwHGYKLyiyh0mMcWMnyPh%2FmB9bKfREs" H 4400 5375 50  0001 C CNN "Supplier Link"
F 8 " 815-M10AIG-25-4ZT3 " H 4400 5375 50  0001 C CNN "Supplier PN"
F 9 "1.30" H 4400 5375 50  0001 C CNN "Price 1 QTY"
	1    4400 5375
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C17
U 1 1 5D7A1F19
P 4920 5200
F 0 "C17" H 5035 5246 50  0000 L CNN
F 1 "10pF" H 5035 5155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4958 5050 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/212/KEM_C1022_C0G_AUTO_SMD-1093282.pdf" H 4920 5200 50  0001 C CNN
F 4 "KEMET" H 4920 5200 50  0001 C CNN "Manufacturer"
F 5 "C0603C100J5GAC3190 " H 4920 5200 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 4920 5200 50  0001 C CNN "Price 1 QTY"
F 7 "Mouser" H 4920 5200 50  0001 C CNN "Supplier"
F 8 "https://www.mouser.com/ProductDetail/KEMET/C0603C100J5GAC3190?qs=sGAEpiMZZMs0AnBnWHyRQAEbWhFpzKZHZLbFbAhRKyJ3xhQ%252BCi1ISg%3D%3D" H 4920 5200 50  0001 C CNN "Supplier Link"
F 9 "80-C0603C100J5G3190" H 4920 5200 50  0001 C CNN "Supplier PN"
	1    4920 5200
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C18
U 1 1 5D95386F
P 4920 5550
F 0 "C18" V 4668 5550 50  0000 C CNN
F 1 "10pF" V 4759 5550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4958 5400 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/212/KEM_C1022_C0G_AUTO_SMD-1093282.pdf" H 4920 5550 50  0001 C CNN
F 4 "KEMET" H 4920 5550 50  0001 C CNN "Manufacturer"
F 5 "C0603C100J5GAC3190 " H 4920 5550 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 4920 5550 50  0001 C CNN "Price 1 QTY"
F 7 "Mouser" H 4920 5550 50  0001 C CNN "Supplier"
F 8 "https://www.mouser.com/ProductDetail/KEMET/C0603C100J5GAC3190?qs=sGAEpiMZZMs0AnBnWHyRQAEbWhFpzKZHZLbFbAhRKyJ3xhQ%252BCi1ISg%3D%3D" H 4920 5550 50  0001 C CNN "Supplier Link"
F 9 "80-C0603C100J5G3190" H 4920 5550 50  0001 C CNN "Supplier PN"
	1    4920 5550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4775 5550 4770 5550
Wire Wire Line
	4400 5550 4400 5475
Connection ~ 4770 5550
Wire Wire Line
	4770 5550 4400 5550
Wire Wire Line
	4775 5200 4770 5200
Wire Wire Line
	4400 5200 4400 5275
Connection ~ 4770 5200
Wire Wire Line
	4770 5200 4400 5200
Wire Wire Line
	4400 5200 4175 5200
Connection ~ 4400 5200
Wire Wire Line
	4400 5550 4175 5550
Connection ~ 4400 5550
Wire Wire Line
	9250 5150 9350 5150
Wire Wire Line
	10450 5150 10450 5250
Wire Wire Line
	9250 5575 9125 5575
Wire Wire Line
	10350 5725 10350 5575
Wire Notes Line
	475  4675 11200 4675
Wire Notes Line
	8500 6300 8500 4675
Wire Notes Line
	475  6300 11225 6300
Wire Notes Line
	4650 6300 4650 7800
Wire Notes Line
	2725 6300 2725 7800
Wire Notes Line
	3275 4675 3275 6300
$Comp
L power:VS #PWR036
U 1 1 5E3CF0BD
P 5195 6685
F 0 "#PWR036" H 4995 6535 50  0001 C CNN
F 1 "VS" H 5212 6858 50  0000 C CNN
F 2 "" H 5195 6685 50  0001 C CNN
F 3 "" H 5195 6685 50  0001 C CNN
	1    5195 6685
	1    0    0    -1  
$EndComp
Text Label 9250 5150 2    50   ~ 0
LED1
Text Label 9125 5575 2    50   ~ 0
LED2
Text Label 6900 5175 2    50   ~ 0
MCLR
Text Label 6900 5475 2    50   ~ 0
PGED
Text Label 6900 5575 2    50   ~ 0
PGEC
Text Label 4175 5200 2    50   ~ 0
OSC1
Text Label 4175 5550 2    50   ~ 0
OSC2
Text Label 875  5200 2    50   ~ 0
CAN_TX
Text Label 875  5300 2    50   ~ 0
CAN_RX
Text Label 875  5600 2    50   ~ 0
CAN_STBY
$Comp
L Device:R_Small_US R9
U 1 1 5D49A4A2
P 7025 2450
F 0 "R9" H 7093 2496 50  0000 L CNN
F 1 "0" H 7093 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_2816_7142Metric_Pad3.20x4.45mm_HandSolder" H 7025 2450 50  0001 C CNN
F 3 "http://keyelco.com/userAssets/file/M65p54.pdf" H 7025 2450 50  0001 C CNN
F 4 "Keystone " H 7025 2450 50  0001 C CNN "Manufacturer"
F 5 "5102" H 7025 2450 50  0001 C CNN "Manufacturer PN"
F 6 "0.22" H 7025 2450 50  0001 C CNN "Price 1 QTY"
F 7 "Digikey" H 7025 2450 50  0001 C CNN "Supplier"
F 8 "https://www.digikey.com/product-detail/en/keystone-electronics/5102/36-5102-ND/4780768" H 7025 2450 50  0001 C CNN "Supplier Link"
F 9 "36-5102-ND" H 7025 2450 50  0001 C CNN "Supplier PN"
	1    7025 2450
	1    0    0    -1  
$EndComp
Text Label 10725 1950 0    50   ~ 0
ISENSE
Wire Wire Line
	8100 2600 8575 2600
Connection ~ 8100 2600
Wire Wire Line
	7025 1750 7875 1750
Wire Wire Line
	10625 2550 10625 2425
$Comp
L power:GNDA #PWR023
U 1 1 5D501AF9
P 10625 2550
F 0 "#PWR023" H 10625 2300 50  0001 C CNN
F 1 "GNDA" H 10630 2377 50  0000 C CNN
F 2 "" H 10625 2550 50  0001 C CNN
F 3 "" H 10625 2550 50  0001 C CNN
	1    10625 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5D4EE1B9
P 10625 2275
F 0 "C9" H 10740 2321 50  0000 L CNN
F 1 "33nF" H 10740 2230 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10663 2125 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/400/lcc_automotive_general_en-843974.pdf" H 10625 2275 50  0001 C CNN
F 4 "TDK" H 10625 2275 50  0001 C CNN "Manufacturer"
F 5 "CGA3E2X7R1H333M080AA " H 10625 2275 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 10625 2275 50  0001 C CNN "Price 1 QTY"
F 7 "Mouser" H 10625 2275 50  0001 C CNN "Supplier"
F 8 "https://www.mouser.com/ProductDetail/TDK/CGA3E2X7R1H333M080AA?qs=sGAEpiMZZMvsSlwiRhF8qtKev7nvVKumKqcC%2FWMjzedOy0hAAevCbA%3D%3D" H 10625 2275 50  0001 C CNN "Supplier Link"
F 9 "810-CGA3E2X7R1H333MA" H 10625 2275 50  0001 C CNN "Supplier PN"
	1    10625 2275
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R14
U 1 1 5D4E9DB7
P 10325 1950
F 0 "R14" V 10120 1950 50  0000 C CNN
F 1 "1k" V 10211 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 10365 1940 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDO0000/AOA0000C331.pdf" H 10325 1950 50  0001 C CNN
F 4 "Panasonic" H 10325 1950 50  0001 C CNN "Manufacturer"
F 5 "ERJ-PA3J102V" H 10325 1950 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 10325 1950 50  0001 C CNN "Price 1 QTY"
F 7 "Digikey" H 10325 1950 50  0001 C CNN "Supplier"
F 8 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-PA3J102V/P1KBZCT-ND/5036236" H 10325 1950 50  0001 C CNN "Supplier Link"
F 9 "P1KBZCT-ND" H 10325 1950 50  0001 C CNN "Supplier PN"
	1    10325 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	9225 1850 9325 1850
Connection ~ 9225 1850
Wire Wire Line
	9225 1400 9225 1850
Connection ~ 8575 2350
Wire Wire Line
	8575 2050 8575 2350
Wire Wire Line
	8825 2050 8575 2050
Connection ~ 8575 1650
Wire Wire Line
	8575 1850 8575 1650
Wire Wire Line
	8825 1850 8575 1850
Wire Wire Line
	9125 1850 9225 1850
$Comp
L Device:R_US R13
U 1 1 5D4CADE5
P 9625 2450
F 0 "R13" V 9800 2445 50  0000 C CNN
F 1 "75k" V 9725 2445 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9665 2440 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDO0000/AOA0000C331.pdf" H 9625 2450 50  0001 C CNN
F 4 "Panasonic" H 9625 2450 50  0001 C CNN "Manufacturer"
F 5 "ERJ-PA3J753V" H 9625 2450 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 9625 2450 50  0001 C CNN "Price 1 QTY"
F 7 "Digikey" H 9625 2450 50  0001 C CNN "Supplier"
F 8 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-PA3J753V/P75KBZCT-ND/5036364" H 9625 2450 50  0001 C CNN "Supplier Link"
F 9 "P75KBZCT-ND" H 9625 2450 50  0001 C CNN "Supplier PN"
	1    9625 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	8575 1650 8475 1650
Wire Wire Line
	8575 1400 8575 1650
Wire Wire Line
	7775 1400 8575 1400
Wire Wire Line
	7775 1550 7775 1400
Wire Wire Line
	7875 1550 7775 1550
Wire Wire Line
	8575 2350 8475 2350
Wire Wire Line
	8575 2600 8575 2350
Wire Wire Line
	7775 2600 8100 2600
$Comp
L F1_OP_Amps:NCV2007x U2
U 3 1 5D4B6BBE
P 9575 1950
F 0 "U2" H 9625 2317 50  0000 C CNN
F 1 "NCV2007x" H 9625 2226 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 9575 1600 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/NCS20071-D.PDF" H 9575 1600 50  0001 C CNN
F 4 "ON Semiconductor" H 9575 1950 50  0001 C CNN "Manufacturer"
F 5 "NCV20074DR2G " H 9575 1950 50  0001 C CNN "Manufacturer PN"
F 6 "Mouser" H 9575 1950 50  0001 C CNN "Supplier"
F 7 "https://www.mouser.com/ProductDetail/ON-Semiconductor/NCV20074DR2G?qs=sGAEpiMZZMtCHixnSjNA6NXlPpRsFEjtp%252BTBls3ALHY%3D" H 9575 1950 50  0001 C CNN "Supplier Link"
F 8 " 863-NCV20074DR2G " H 9575 1950 50  0001 C CNN "Supplier PN"
F 9 "1.19" H 9575 1950 50  0001 C CNN "Price 1 QTY"
	3    9575 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7025 2550 7025 2650
Wire Wire Line
	7025 1450 7025 1350
Wire Wire Line
	7025 2250 7025 2350
Connection ~ 7025 2250
Wire Wire Line
	6675 2250 7025 2250
Wire Wire Line
	6675 2050 6675 2250
Wire Wire Line
	6375 2050 6675 2050
Wire Wire Line
	7025 1750 7025 1900
Connection ~ 7025 1750
Wire Wire Line
	6675 1750 7025 1750
Wire Wire Line
	6675 1950 6675 1750
Wire Wire Line
	6375 1950 6675 1950
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5D49D215
P 6175 1950
F 0 "J4" H 6283 2131 50  0000 C CNN
F 1 "Board Interconnect" H 6283 2040 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6175 1950 50  0001 C CNN
F 3 "~" H 6175 1950 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B07VNXL5BD/ref=ppx_yo_dt_b_asin_title_o04_s00?ie=UTF8&psc=1" H 6175 1950 50  0001 C CNN "Supplier Link"
	1    6175 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7025 2100 7025 2250
Wire Wire Line
	7025 1650 7025 1750
$Comp
L Device:R_Small_US R6
U 1 1 5D49A156
P 7025 1550
F 0 "R6" H 7093 1596 50  0000 L CNN
F 1 "0" H 7093 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_2816_7142Metric_Pad3.20x4.45mm_HandSolder" H 7025 1550 50  0001 C CNN
F 3 "http://keyelco.com/userAssets/file/M65p54.pdf" H 7025 1550 50  0001 C CNN
F 4 "Keystone " H 7025 1550 50  0001 C CNN "Manufacturer"
F 5 "5102" H 7025 1550 50  0001 C CNN "Manufacturer PN"
F 6 "0.22" H 7025 1550 50  0001 C CNN "Price 1 QTY"
F 7 "Digikey" H 7025 1550 50  0001 C CNN "Supplier"
F 8 "https://www.digikey.com/product-detail/en/keystone-electronics/5102/36-5102-ND/4780768" H 7025 1550 50  0001 C CNN "Supplier Link"
F 9 "36-5102-ND" H 7025 1550 50  0001 C CNN "Supplier PN"
	1    7025 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R8
U 1 1 5D498F82
P 7025 2000
F 0 "R8" H 7093 2046 50  0000 L CNN
F 1 "4m" H 7093 1955 50  0000 L CNN
F 2 "Resistor_SMD:R_4020_10251Metric_Pad1.65x5.30mm_HandSolder" H 7025 2000 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/427/wslp3921-536393.pdf" H 7025 2000 50  0001 C CNN
F 4 "Vishay" H 7025 2000 50  0001 C CNN "Manufacturer"
F 5 "WSLP39214L000FEB " H 7025 2000 50  0001 C CNN "Manufacturer PN"
F 6 "Mouser" H 7025 2000 50  0001 C CNN "Supplier"
F 7 "https://www.mouser.com/ProductDetail/Vishay-Dale/WSLP39214L000FEB?qs=sGAEpiMZZMtlleCFQhR%2FzQgA6HzdQSfq2cZRquULrVo%3D" H 7025 2000 50  0001 C CNN "Supplier Link"
F 8 " 71- 71-WSLP39214L000FEB " H 7025 2000 50  0001 C CNN "Supplier PN"
F 9 "2.18" H 7025 2000 50  0001 C CNN "Price 1 QTY"
	1    7025 2000
	1    0    0    -1  
$EndComp
Text Notes 6375 4425 0    50   ~ 0
These 0 ohm resistors should be unsoldered when used with the secondary high-current sensing board\n
Wire Wire Line
	8100 3500 8100 2600
Text Label 10700 3400 0    50   ~ 0
VSENSE
Wire Wire Line
	10600 3900 10600 3800
$Comp
L power:GNDA #PWR017
U 1 1 5D6D0338
P 10600 3900
F 0 "#PWR017" H 10600 3650 50  0001 C CNN
F 1 "GNDA" H 10605 3727 50  0000 C CNN
F 2 "" H 10600 3900 50  0001 C CNN
F 3 "" H 10600 3900 50  0001 C CNN
	1    10600 3900
	1    0    0    -1  
$EndComp
Connection ~ 10600 3400
Wire Wire Line
	10700 3400 10600 3400
Wire Wire Line
	10600 3400 10600 3500
Wire Wire Line
	10500 3400 10600 3400
Connection ~ 10075 3400
Wire Wire Line
	10200 3400 10075 3400
$Comp
L Device:C C16
U 1 1 5D6ABDC3
P 10600 3650
F 0 "C16" H 10715 3696 50  0000 L CNN
F 1 "33nF" H 10715 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10638 3500 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/400/lcc_automotive_general_en-843974.pdf" H 10600 3650 50  0001 C CNN
F 4 "TDK" H 10600 3650 50  0001 C CNN "Manufacturer"
F 5 "CGA3E2X7R1H333M080AA " H 10600 3650 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 10600 3650 50  0001 C CNN "Price 1 QTY"
F 7 "Mouser" H 10600 3650 50  0001 C CNN "Supplier"
F 8 "https://www.mouser.com/ProductDetail/TDK/CGA3E2X7R1H333M080AA?qs=sGAEpiMZZMvsSlwiRhF8qtKev7nvVKumKqcC%2FWMjzedOy0hAAevCbA%3D%3D" H 10600 3650 50  0001 C CNN "Supplier Link"
F 9 "810-CGA3E2X7R1H333MA" H 10600 3650 50  0001 C CNN "Supplier PN"
	1    10600 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R22
U 1 1 5D6A43A9
P 10350 3400
F 0 "R22" V 10145 3400 50  0000 C CNN
F 1 "1k" V 10236 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 10390 3390 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDO0000/AOA0000C331.pdf" H 10350 3400 50  0001 C CNN
F 4 "Panasonic" H 10350 3400 50  0001 C CNN "Manufacturer"
F 5 "ERJ-PA3J102V" H 10350 3400 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 10350 3400 50  0001 C CNN "Price 1 QTY"
F 7 "Digikey" H 10350 3400 50  0001 C CNN "Supplier"
F 8 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-PA3J102V/P1KBZCT-ND/5036236" H 10350 3400 50  0001 C CNN "Supplier Link"
F 9 "P1KBZCT-ND" H 10350 3400 50  0001 C CNN "Supplier PN"
	1    10350 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	10075 3400 10000 3400
Wire Wire Line
	10075 3125 10075 3400
Wire Wire Line
	9300 3125 10075 3125
Wire Wire Line
	9300 3300 9300 3125
Wire Wire Line
	9400 3300 9300 3300
Connection ~ 9125 3500
Wire Wire Line
	9125 3500 9400 3500
Wire Wire Line
	9125 3575 9125 3500
Wire Wire Line
	8975 3500 9125 3500
$Comp
L Device:R_US R17
U 1 1 5D60A810
P 8425 3500
F 0 "R17" V 8220 3500 50  0000 C CNN
F 1 "4.99k" V 8311 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8465 3490 50  0001 C CNN
F 3 "http://www.vishay.com/docs/20065/rcse3.pdf" H 8425 3500 50  0001 C CNN
F 4 "Vishay / Dale" H 8425 3500 50  0001 C CNN "Manufacturer"
F 5 "RCS06034K99FKEA" H 8425 3500 50  0001 C CNN "Manufacturer PN"
F 6 "0.14" H 8425 3500 50  0001 C CNN "Price 1 QTY"
F 7 "Digikey" H 8425 3500 50  0001 C CNN "Supplier"
F 8 "https://www.digikey.com/product-detail/en/vishay-dale/RCS06034K99FKEA/541-2794-1-ND/5867087" H 8425 3500 50  0001 C CNN "Supplier Link"
F 9 "541-2794-1-ND" H 8425 3500 50  0001 C CNN "Supplier PN"
	1    8425 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R18
U 1 1 5D60BBAB
P 8825 3500
F 0 "R18" V 8620 3500 50  0000 C CNN
F 1 "10k" V 8711 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8865 3490 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDO0000/AOA0000C331.pdf" H 8825 3500 50  0001 C CNN
F 4 "Panasonic" H 8825 3500 50  0001 C CNN "Manufacturer"
F 5 "ERJ-PA3J103V" H 8825 3500 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 8825 3500 50  0001 C CNN "Price 1 QTY"
F 7 "Digikey" H 8825 3500 50  0001 C CNN "Supplier"
F 8 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-PA3J103V/P10KBZCT-ND/5036237" H 8825 3500 50  0001 C CNN "Supplier Link"
F 9 "P10KBZCT-ND" H 8825 3500 50  0001 C CNN "Supplier PN"
	1    8825 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R19
U 1 1 5D60BC64
P 9125 3725
F 0 "R19" H 9057 3679 50  0000 R CNN
F 1 "4.99k" H 9057 3770 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9165 3715 50  0001 C CNN
F 3 "http://www.vishay.com/docs/20065/rcse3.pdf" H 9125 3725 50  0001 C CNN
F 4 "Vishay / Dale" H 9125 3725 50  0001 C CNN "Manufacturer"
F 5 "RCS06034K99FKEA" H 9125 3725 50  0001 C CNN "Manufacturer PN"
F 6 "0.14" H 9125 3725 50  0001 C CNN "Price 1 QTY"
F 7 "Digikey" H 9125 3725 50  0001 C CNN "Supplier"
F 8 "https://www.digikey.com/product-detail/en/vishay-dale/RCS06034K99FKEA/541-2794-1-ND/5867087" H 9125 3725 50  0001 C CNN "Supplier Link"
F 9 "541-2794-1-ND" H 9125 3725 50  0001 C CNN "Supplier PN"
	1    9125 3725
	-1   0    0    1   
$EndComp
Wire Wire Line
	8675 3500 8575 3500
Wire Wire Line
	8100 3500 8275 3500
$Comp
L power:GNDA #PWR0101
U 1 1 5D62FB9E
P 9125 3875
F 0 "#PWR0101" H 9125 3625 50  0001 C CNN
F 1 "GNDA" H 9130 3702 50  0000 C CNN
F 2 "" H 9125 3875 50  0001 C CNN
F 3 "" H 9125 3875 50  0001 C CNN
	1    9125 3875
	1    0    0    -1  
$EndComp
$Comp
L F1_OP_Amps:NCV2007x U2
U 4 1 5D4B7A85
P 9650 3400
F 0 "U2" H 9700 3767 50  0000 C CNN
F 1 "NCV2007x" H 9700 3676 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 9650 3050 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/NCS20071-D.PDF" H 9650 3050 50  0001 C CNN
F 4 "ON Semiconductor" H 9650 3400 50  0001 C CNN "Manufacturer"
F 5 "NCV20074DR2G " H 9650 3400 50  0001 C CNN "Manufacturer PN"
F 6 "Mouser" H 9650 3400 50  0001 C CNN "Supplier"
F 7 "https://www.mouser.com/ProductDetail/ON-Semiconductor/NCV20074DR2G?qs=sGAEpiMZZMtCHixnSjNA6NXlPpRsFEjtp%252BTBls3ALHY%3D" H 9650 3400 50  0001 C CNN "Supplier Link"
F 8 " 863-NCV20074DR2G " H 9650 3400 50  0001 C CNN "Supplier PN"
F 9 "1.19" H 9650 3400 50  0001 C CNN "Price 1 QTY"
	4    9650 3400
	1    0    0    1   
$EndComp
Text HLabel 7025 2650 3    50   Input ~ 0
MEASURE_OUT
Text HLabel 7025 1350 1    50   Input ~ 0
MEASURE_IN
Wire Notes Line
	5925 475  5925 6300
Text Notes 4050 6200 0    50   ~ 0
both pins 2 and 4 are connected to\nthe lid, so only need to connect one to\nground. After PCB layout, easier to connect\nonly pin 4.
NoConn ~ 4500 5375
Wire Wire Line
	5070 5200 5070 5350
Wire Wire Line
	5070 5350 5300 5350
Wire Wire Line
	5300 5350 5300 5625
Connection ~ 5070 5350
Wire Wire Line
	5070 5350 5070 5550
$Comp
L Device:C C24
U 1 1 5DFD1FA1
P 6050 7050
F 0 "C24" H 6165 7096 50  0000 L CNN
F 1 "0.01uF" H 6165 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6088 6900 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/212/KEM_C1002_X7R_SMD-1102033.pdf" H 6050 7050 50  0001 C CNN
F 4 "KEMET" H 6050 7050 50  0001 C CNN "Manufacturer"
F 5 "C0603C103J5RACTU " H 6050 7050 50  0001 C CNN "Manufacturer PN"
F 6 "0.10" H 6050 7050 50  0001 C CNN "Price 1 QTY"
F 7 "Mouser" H 6050 7050 50  0001 C CNN "Supplier"
F 8 "https://www.mouser.com/ProductDetail/KEMET/C0603C103J5RACTU?qs=sGAEpiMZZMs0AnBnWHyRQJxdEn2F2BG1SUc13Z4vudE%3D" H 6050 7050 50  0001 C CNN "Supplier Link"
F 9 "80-C0603C103J5R " H 6050 7050 50  0001 C CNN "Supplier PN"
	1    6050 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR038
U 1 1 5DFE653F
P 6300 7250
F 0 "#PWR038" H 6300 7000 50  0001 C CNN
F 1 "GNDA" H 6305 7077 50  0000 C CNN
F 2 "" H 6300 7250 50  0001 C CNN
F 3 "" H 6300 7250 50  0001 C CNN
	1    6300 7250
	1    0    0    -1  
$EndComp
$Comp
L power:VS #PWR035
U 1 1 5DFEFB45
P 6300 6825
F 0 "#PWR035" H 6100 6675 50  0001 C CNN
F 1 "VS" H 6317 6998 50  0000 C CNN
F 2 "" H 6300 6825 50  0001 C CNN
F 3 "" H 6300 6825 50  0001 C CNN
	1    6300 6825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5DF4DE04
P 1375 5800
F 0 "#PWR025" H 1375 5550 50  0001 C CNN
F 1 "GND" H 1380 5627 50  0000 C CNN
F 2 "" H 1375 5800 50  0001 C CNN
F 3 "" H 1375 5800 50  0001 C CNN
	1    1375 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5DF4EB03
P 1250 7125
F 0 "#PWR020" H 1250 6875 50  0001 C CNN
F 1 "GND" H 1255 6952 50  0000 C CNN
F 2 "" H 1250 7125 50  0001 C CNN
F 3 "" H 1250 7125 50  0001 C CNN
	1    1250 7125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5DF4F314
P 3400 7200
F 0 "#PWR027" H 3400 6950 50  0001 C CNN
F 1 "GND" H 3405 7027 50  0000 C CNN
F 2 "" H 3400 7200 50  0001 C CNN
F 3 "" H 3400 7200 50  0001 C CNN
	1    3400 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5DF4FC98
P 4275 5625
F 0 "#PWR031" H 4275 5375 50  0001 C CNN
F 1 "GND" H 4280 5452 50  0000 C CNN
F 2 "" H 4275 5625 50  0001 C CNN
F 3 "" H 4275 5625 50  0001 C CNN
	1    4275 5625
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 5DF5066C
P 5300 5625
F 0 "#PWR037" H 5300 5375 50  0001 C CNN
F 1 "GND" H 5305 5452 50  0000 C CNN
F 2 "" H 5300 5625 50  0001 C CNN
F 3 "" H 5300 5625 50  0001 C CNN
	1    5300 5625
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 5DF510E8
P 7075 5800
F 0 "#PWR039" H 7075 5550 50  0001 C CNN
F 1 "GND" H 7080 5627 50  0000 C CNN
F 2 "" H 7075 5800 50  0001 C CNN
F 3 "" H 7075 5800 50  0001 C CNN
	1    7075 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5DF526B8
P 10350 5725
F 0 "#PWR040" H 10350 5475 50  0001 C CNN
F 1 "GND" H 10355 5552 50  0000 C CNN
F 2 "" H 10350 5725 50  0001 C CNN
F 3 "" H 10350 5725 50  0001 C CNN
	1    10350 5725
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 5DF53141
P 10450 5250
F 0 "#PWR041" H 10450 5000 50  0001 C CNN
F 1 "GND" H 10455 5077 50  0000 C CNN
F 2 "" H 10450 5250 50  0001 C CNN
F 3 "" H 10450 5250 50  0001 C CNN
	1    10450 5250
	1    0    0    -1  
$EndComp
Text Label 7320 1750 0    50   ~ 0
SENSE+
Text Label 7330 2250 0    50   ~ 0
SENSE-
Wire Wire Line
	7025 2250 7875 2250
Wire Wire Line
	7775 2600 7775 2450
Wire Wire Line
	7775 2450 7875 2450
Wire Wire Line
	10475 1950 10625 1950
$Comp
L F1_Logo:LOGO #G1
U 1 1 5E098C04
P 10870 6835
F 0 "#G1" H 10870 6574 60  0001 C CNN
F 1 "LOGO" H 10870 7096 60  0001 C CNN
F 2 "" H 10870 6835 50  0001 C CNN
F 3 "" H 10870 6835 50  0001 C CNN
	1    10870 6835
	1    0    0    -1  
$EndComp
Wire Wire Line
	10625 2125 10625 1950
Connection ~ 10625 1950
Wire Wire Line
	10625 1950 10725 1950
Text Notes 3380 4940 0    50   ~ 0
C17 = C18 = 2(CL - CS)\nAssuming 5pF stray capacitance\nCL = 10pF
$Comp
L power:GND #PWR033
U 1 1 5DF4D23A
P 5150 2225
F 0 "#PWR033" H 5150 1975 50  0001 C CNN
F 1 "GND" H 5155 2052 50  0000 C CNN
F 2 "" H 5150 2225 50  0001 C CNN
F 3 "" H 5150 2225 50  0001 C CNN
	1    5150 2225
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5DF4C5A9
P 3575 950
F 0 "#PWR028" H 3575 700 50  0001 C CNN
F 1 "GND" H 3580 777 50  0000 C CNN
F 2 "" H 3575 950 50  0001 C CNN
F 3 "" H 3575 950 50  0001 C CNN
	1    3575 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5DF4B387
P 3025 4200
F 0 "#PWR026" H 3025 3950 50  0001 C CNN
F 1 "GND" H 3030 4027 50  0000 C CNN
F 2 "" H 3025 4200 50  0001 C CNN
F 3 "" H 3025 4200 50  0001 C CNN
	1    3025 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR024
U 1 1 5D516C00
P 2725 4200
F 0 "#PWR024" H 2725 3950 50  0001 C CNN
F 1 "GNDA" H 2730 4027 50  0000 C CNN
F 2 "" H 2725 4200 50  0001 C CNN
F 3 "" H 2725 4200 50  0001 C CNN
	1    2725 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5DF48E36
P 4425 3975
F 0 "#PWR029" H 4425 3725 50  0001 C CNN
F 1 "GND" H 4430 3802 50  0000 C CNN
F 2 "" H 4425 3975 50  0001 C CNN
F 3 "" H 4425 3975 50  0001 C CNN
	1    4425 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	3175 1250 3175 1350
Wire Wire Line
	1825 1750 1775 1750
Wire Wire Line
	3025 1150 3025 1350
Text Notes 1175 1100 0    50   ~ 0
Capacitor disconnected when programming\n
Connection ~ 1325 1750
Wire Wire Line
	1325 1750 1475 1750
Wire Wire Line
	1325 1650 1325 1750
$Comp
L Device:R_US R5
U 1 1 5D1B85DD
P 1625 1750
F 0 "R5" H 1693 1796 50  0000 L CNN
F 1 "470" H 1693 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1665 1740 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDO0000/AOA0000C331.pdf" H 1625 1750 50  0001 C CNN
F 4 "Panasonic" H 1625 1750 50  0001 C CNN "Manufacturer"
F 5 "ERJ-PA3J471V" H 1625 1750 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 1625 1750 50  0001 C CNN "Price 1 QTY"
F 7 "Digikey" H 1625 1750 50  0001 C CNN "Supplier"
F 8 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-PA3J471V/P470BZCT-ND/5036331" H 1625 1750 50  0001 C CNN "Supplier Link"
F 9 "P470BZCT-ND" H 1625 1750 50  0001 C CNN "Supplier PN"
	1    1625 1750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R4
U 1 1 5D1B51D5
P 1325 1500
F 0 "R4" H 1393 1546 50  0000 L CNN
F 1 "10k" H 1393 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1365 1490 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDO0000/AOA0000C331.pdf" H 1325 1500 50  0001 C CNN
F 4 "Panasonic" H 1325 1500 50  0001 C CNN "Manufacturer"
F 5 "ERJ-PA3J103V" H 1325 1500 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 1325 1500 50  0001 C CNN "Price 1 QTY"
F 7 "Digikey" H 1325 1500 50  0001 C CNN "Supplier"
F 8 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-PA3J103V/P10KBZCT-ND/5036237" H 1325 1500 50  0001 C CNN "Supplier Link"
F 9 "P10KBZCT-ND" H 1325 1500 50  0001 C CNN "Supplier PN"
	1    1325 1500
	1    0    0    -1  
$EndComp
Text Notes 3275 1250 0    50   ~ 0
tantalum, < 1 Ohm ESR\n
Wire Wire Line
	2875 900  2875 1150
Wire Wire Line
	2875 1150 2875 1350
Connection ~ 2875 1150
Wire Wire Line
	3025 1150 2875 1150
$Comp
L Device:CP1 C15
U 1 1 5D1B11E5
P 3175 1100
F 0 "C15" H 3060 1054 50  0000 R CNN
F 1 "10uF" H 3060 1145 50  0000 R CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-12_Kemet-T_Pad1.50x2.35mm_HandSolder" H 3175 1100 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/212/KEM_T2050_T491_AUTO-1093567.pdf" H 3175 1100 50  0001 C CNN
F 4 "KEMET" H 3175 1100 50  0001 C CNN "Manufacturer"
F 5 "T491B106K016ATAUTO " H 3175 1100 50  0001 C CNN "Manufacturer PN"
F 6 "0.57" H 3175 1100 50  0001 C CNN "Price 1 QTY"
F 7 "Mouser" H 3175 1100 50  0001 C CNN "Supplier"
F 8 "https://www.mouser.com/ProductDetail/KEMET/T491B106K016ATAUTO?qs=sGAEpiMZZMuEN2agSAc2pudakkFilzLf93Y6vEE%252BqPU%3D" H 3175 1100 50  0001 C CNN "Supplier Link"
F 9 "80-T491B106K016AUTO " H 3175 1100 50  0001 C CNN "Supplier PN"
	1    3175 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2725 4000 2725 4200
Wire Wire Line
	3025 4075 3025 4200
$Comp
L Device:R_Small_US R16
U 1 1 5D52A243
P 5150 2050
F 0 "R16" H 5218 2096 50  0000 L CNN
F 1 "10k" H 5218 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5150 2050 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDO0000/AOA0000C331.pdf" H 5150 2050 50  0001 C CNN
F 4 "Panasonic" H 5150 2050 50  0001 C CNN "Manufacturer"
F 5 "ERJ-PA3J103V" H 5150 2050 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 5150 2050 50  0001 C CNN "Price 1 QTY"
F 7 "Digikey" H 5150 2050 50  0001 C CNN "Supplier"
F 8 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-PA3J103V/P10KBZCT-ND/5036237" H 5150 2050 50  0001 C CNN "Supplier Link"
F 9 "P10KBZCT-ND" H 5150 2050 50  0001 C CNN "Supplier PN"
	1    5150 2050
	1    0    0    -1  
$EndComp
Text Notes 4600 1150 0    50   ~ 0
Only one soldered\n
Wire Wire Line
	3175 950  3175 875 
Wire Wire Line
	3175 875  3575 875 
Wire Wire Line
	3575 875  3575 950 
Wire Wire Line
	2875 4000 2875 4075
Wire Wire Line
	2875 4075 3025 4075
Wire Wire Line
	3025 4000 3025 4075
Connection ~ 3025 4075
$Comp
L power:+5V #PWR0103
U 1 1 5D4DBFC0
P 2875 900
F 0 "#PWR0103" H 2875 750 50  0001 C CNN
F 1 "+5V" H 2925 1050 50  0000 C CNN
F 2 "" H 2875 900 50  0001 C CNN
F 3 "" H 2875 900 50  0001 C CNN
	1    2875 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5D4EDBBD
P 1325 1350
F 0 "#PWR0104" H 1325 1200 50  0001 C CNN
F 1 "+5V" H 1375 1500 50  0000 C CNN
F 2 "" H 1325 1350 50  0001 C CNN
F 3 "" H 1325 1350 50  0001 C CNN
	1    1325 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4325 2650 4425 2650
Wire Wire Line
	4325 2750 4425 2750
Connection ~ 4425 2750
Wire Wire Line
	4425 2750 4425 2850
Wire Wire Line
	4325 2850 4425 2850
Connection ~ 4425 2850
Wire Wire Line
	4425 2850 4425 2950
Wire Wire Line
	4325 2950 4425 2950
Connection ~ 4425 2950
Wire Wire Line
	4325 3050 4425 3050
Wire Wire Line
	4425 2950 4425 3050
Connection ~ 4425 3050
Wire Wire Line
	4425 3050 4425 3150
Wire Wire Line
	4325 3150 4425 3150
Connection ~ 4425 3150
Connection ~ 4425 2650
Wire Wire Line
	4425 2650 4425 2750
Wire Wire Line
	4325 2150 4425 2150
Wire Wire Line
	4425 2150 4425 2650
Text Notes 4575 1050 0    50   ~ 0
Configuration resistors
$Comp
L power:+5V #PWR032
U 1 1 5D5394EC
P 5150 1450
F 0 "#PWR032" H 5150 1300 50  0001 C CNN
F 1 "+5V" H 5165 1623 50  0000 C CNN
F 2 "" H 5150 1450 50  0001 C CNN
F 3 "" H 5150 1450 50  0001 C CNN
	1    5150 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R15
U 1 1 5D529372
P 5150 1650
F 0 "R15" H 5218 1696 50  0000 L CNN
F 1 "10k" H 5218 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5150 1650 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDO0000/AOA0000C331.pdf" H 5150 1650 50  0001 C CNN
F 4 "Panasonic" H 5150 1650 50  0001 C CNN "Manufacturer"
F 5 "ERJ-PA3J103V" H 5150 1650 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 5150 1650 50  0001 C CNN "Price 1 QTY"
F 7 "Digikey" H 5150 1650 50  0001 C CNN "Supplier"
F 8 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-PA3J103V/P10KBZCT-ND/5036237" H 5150 1650 50  0001 C CNN "Supplier Link"
F 9 "P10KBZCT-ND" H 5150 1650 50  0001 C CNN "Supplier PN"
	1    5150 1650
	1    0    0    -1  
$EndComp
$Comp
L F1_Microchip_MCUs:dsPIC33EV32GM102 U3
U 1 1 5D3ED3E3
P 3075 5000
F 0 "U3" H 2025 6050 50  0000 R CNN
F 1 "dsPIC33EV32GM102" H 2600 5925 50  0000 R CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 3075 5000 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/dsPIC33EVXXXGM00X-10X-Family-Data-Sheet-DS70005144H.pdf" H 3075 5000 50  0001 C CNN
F 4 "Microchip" H 3075 5000 50  0001 C CNN "Manufacturer"
F 5 "dsPIC33EV32GM102-E/SS" H 3075 5000 50  0001 C CNN "Manufacturer PN"
F 6 "3.04" H 3075 5000 50  0001 C CNN "Price 1 QTY"
F 7 "Mouser" H 3075 5000 50  0001 C CNN "Supplier"
F 8 "https://www.mouser.com/ProductDetail/Microchip-Technology/dsPIC33EV32GM102-E-SS?qs=sGAEpiMZZMvt8PIZHrwfMh2yGkphHpwrjAuM9fzLf5ybGoYsGfYIMw%3D%3D" H 3075 5000 50  0001 C CNN "Supplier Link"
F 9 " 579-33EV32GM102ESS " H 3075 5000 50  0001 C CNN "Supplier PN"
	1    3075 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4325 2350 4575 2350
Wire Wire Line
	4575 2550 4325 2550
Wire Wire Line
	4325 2450 4575 2450
Wire Wire Line
	4425 3150 4425 3975
Wire Wire Line
	4575 2250 4325 2250
Wire Wire Line
	4575 1950 4325 1950
Wire Wire Line
	4575 2050 4325 2050
Wire Wire Line
	4575 3350 4325 3350
Wire Wire Line
	4575 3450 4325 3450
Wire Wire Line
	4575 3650 4325 3650
Wire Wire Line
	4575 3750 4325 3750
Wire Wire Line
	5150 1850 5150 1750
Wire Wire Line
	4325 1850 5150 1850
Wire Wire Line
	5150 1850 5150 1950
Connection ~ 5150 1850
Wire Wire Line
	5150 2225 5150 2150
Wire Wire Line
	5150 1450 5150 1550
Wire Wire Line
	4575 3550 4325 3550
Text HLabel 4900 3250 2    50   Input ~ 0
PWM
Text Label 4575 1950 0    50   ~ 0
OSC1
Text Label 4575 2050 0    50   ~ 0
OSC2
Text Label 4575 2250 0    50   ~ 0
ISENSE
Text Label 4575 2350 0    50   ~ 0
VSENSE
Text Label 4575 2450 0    50   ~ 0
PGEC
Text Label 4575 2550 0    50   ~ 0
PGED
Text Label 4575 3350 0    50   ~ 0
CAN_TX
Text Label 4575 3450 0    50   ~ 0
CAN_RX
Text Label 4575 3550 0    50   ~ 0
CAN_STBY
Text Label 4575 3650 0    50   ~ 0
LED1
Text Label 4575 3750 0    50   ~ 0
LED2
Wire Wire Line
	4325 3250 4900 3250
Text Label 1275 1750 2    50   ~ 0
MCLR
Wire Wire Line
	1275 1750 1325 1750
Text Notes 4500 650  0    50   ~ 0
Use internal pull down for pin 1
$Comp
L Device:D_TVS D?
U 1 1 5E2177B7
P 2525 5800
AR Path="/5E2177B7" Ref="D?"  Part="1" 
AR Path="/5D226D6E/5E2177B7" Ref="D8"  Part="1" 
F 0 "D8" V 2525 5600 50  0000 L CNN
F 1 "SMBJ9.0CA-13-F" V 2975 5100 50  0000 L CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 2525 5800 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds19002.pdf" H 2525 5800 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/diodes-incorporated/SMBJ9.0CA-13-F/SMBJ9.0CA-FDICT-ND/775877" H 2525 5800 50  0001 C CNN "Supplier Link"
F 5 "Diodes Incorporated " H 2525 5800 50  0001 C CNN "Manufacturer"
F 6 "SMBJ9.0CA-13-F" H 2525 5800 50  0001 C CNN "Manufacturer PN"
F 7 "0.36" H 2525 5800 50  0001 C CNN "Price 1 QTY"
F 8 "Digikey" H 2525 5800 50  0001 C CNN "Supplier"
F 9 "SMBJ9.0CA-FDICT-ND" H 2525 5800 50  0001 C CNN "Supplier PN"
	1    2525 5800
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS D?
U 1 1 5E220A19
P 2750 5800
AR Path="/5E220A19" Ref="D?"  Part="1" 
AR Path="/5D226D6E/5E220A19" Ref="D9"  Part="1" 
F 0 "D9" V 2750 5900 50  0000 L CNN
F 1 "SMBJ9.0CA-13-F" V 3125 4875 50  0000 L CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 2750 5800 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds19002.pdf" H 2750 5800 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/diodes-incorporated/SMBJ9.0CA-13-F/SMBJ9.0CA-FDICT-ND/775877" H 2750 5800 50  0001 C CNN "Supplier Link"
F 5 "Diodes Incorporated " H 2750 5800 50  0001 C CNN "Manufacturer"
F 6 "SMBJ9.0CA-13-F" H 2750 5800 50  0001 C CNN "Manufacturer PN"
F 7 "0.36" H 2750 5800 50  0001 C CNN "Price 1 QTY"
F 8 "Digikey" H 2750 5800 50  0001 C CNN "Supplier"
F 9 "SMBJ9.0CA-FDICT-ND" H 2750 5800 50  0001 C CNN "Supplier PN"
	1    2750 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	2525 5650 2525 5250
Connection ~ 2525 5250
Wire Wire Line
	2525 5250 2875 5250
Wire Wire Line
	2750 5650 2750 5550
Connection ~ 2750 5550
Wire Wire Line
	2750 5550 2875 5550
Wire Wire Line
	2525 5950 2525 6000
Wire Wire Line
	2525 6000 2650 6000
Wire Wire Line
	2750 6000 2750 5950
$Comp
L power:GND #PWR0105
U 1 1 5E247786
P 2650 6000
F 0 "#PWR0105" H 2650 5750 50  0001 C CNN
F 1 "GND" H 2655 5827 50  0000 C CNN
F 2 "" H 2650 6000 50  0001 C CNN
F 3 "" H 2650 6000 50  0001 C CNN
	1    2650 6000
	1    0    0    -1  
$EndComp
Connection ~ 2650 6000
Wire Wire Line
	2650 6000 2750 6000
$Comp
L Device:C C26
U 1 1 5E2B29A4
P 6525 7050
F 0 "C26" H 6640 7096 50  0000 L CNN
F 1 "0.1uF" H 6640 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6563 6900 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/400/lcc_automotive_general_en-843974.pdf" H 6525 7050 50  0001 C CNN
F 4 "TDK" H 6525 7050 50  0001 C CNN "Manufacturer"
F 5 "CGA3E2X7R1H104K080AA " H 6525 7050 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 6525 7050 50  0001 C CNN "Price 1 QTY"
F 7 "Mouser" H 6525 7050 50  0001 C CNN "Supplier"
F 8 "https://www.mouser.com/ProductDetail/TDK/CGA3E2X7R1H104K080AA?qs=sGAEpiMZZMs0AnBnWHyRQEWjzA2rN6H9nJklEYEm1tg%3D" H 6525 7050 50  0001 C CNN "Supplier Link"
F 9 "810-CGA3E2X7R1H104K " H 6525 7050 50  0001 C CNN "Supplier PN"
	1    6525 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 7200 6300 7200
Wire Wire Line
	6300 7200 6300 7250
Wire Wire Line
	6300 7200 6525 7200
Connection ~ 6300 7200
Wire Wire Line
	6050 6900 6300 6900
Wire Wire Line
	6300 6900 6300 6825
Wire Wire Line
	6525 6900 6300 6900
Connection ~ 6300 6900
Wire Wire Line
	4325 1750 4425 1750
Wire Wire Line
	4425 1750 4425 2150
Connection ~ 4425 2150
Wire Wire Line
	4275 5625 4275 5375
Wire Wire Line
	4275 5375 4300 5375
Wire Wire Line
	9925 1950 10025 1950
$Comp
L power:GNDA #PWR0106
U 1 1 5E254739
P 10050 1450
F 0 "#PWR0106" H 10050 1200 50  0001 C CNN
F 1 "GNDA" H 10055 1277 50  0000 C CNN
F 2 "" H 10050 1450 50  0001 C CNN
F 3 "" H 10050 1450 50  0001 C CNN
	1    10050 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10025 2450 10025 1950
Connection ~ 10025 1950
Wire Wire Line
	10025 1950 10175 1950
Wire Wire Line
	9125 2050 9225 2050
Wire Wire Line
	10025 2450 9775 2450
Wire Wire Line
	9475 2450 9225 2450
Wire Wire Line
	9225 2450 9225 2050
Connection ~ 9225 2050
Wire Wire Line
	9225 2050 9325 2050
Wire Wire Line
	10050 1400 10050 1450
$Comp
L Device:R_US R12
U 1 1 5D4D53DE
P 9625 1400
F 0 "R12" H 9693 1446 50  0000 L CNN
F 1 "75k" H 9693 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9665 1390 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDO0000/AOA0000C331.pdf" H 9625 1400 50  0001 C CNN
F 4 "Panasonic" H 9625 1400 50  0001 C CNN "Manufacturer"
F 5 "ERJ-PA3J753V" H 9625 1400 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 9625 1400 50  0001 C CNN "Price 1 QTY"
F 7 "Digikey" H 9625 1400 50  0001 C CNN "Supplier"
F 8 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-PA3J753V/P75KBZCT-ND/5036364" H 9625 1400 50  0001 C CNN "Supplier Link"
F 9 "P75KBZCT-ND" H 9625 1400 50  0001 C CNN "Supplier PN"
	1    9625 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9475 1400 9225 1400
Wire Wire Line
	9775 1400 10050 1400
$Comp
L F1_OP_Amps:NCV2007x U2
U 2 1 5D4B605F
P 8125 1650
F 0 "U2" H 8175 2017 50  0000 C CNN
F 1 "NCV2007x" H 8175 1926 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 8125 1300 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/NCS20071-D.PDF" H 8125 1300 50  0001 C CNN
F 4 "ON Semiconductor" H 8125 1650 50  0001 C CNN "Manufacturer"
F 5 "NCV20074DR2G " H 8125 1650 50  0001 C CNN "Manufacturer PN"
F 6 "Mouser" H 8125 1650 50  0001 C CNN "Supplier"
F 7 "https://www.mouser.com/ProductDetail/ON-Semiconductor/NCV20074DR2G?qs=sGAEpiMZZMtCHixnSjNA6NXlPpRsFEjtp%252BTBls3ALHY%3D" H 8125 1650 50  0001 C CNN "Supplier Link"
F 8 " 863-NCV20074DR2G " H 8125 1650 50  0001 C CNN "Supplier PN"
F 9 "1.19" H 8125 1650 50  0001 C CNN "Price 1 QTY"
	2    8125 1650
	1    0    0    1   
$EndComp
$Comp
L F1_OP_Amps:NCV2007x U2
U 1 1 5D4B495F
P 8125 2350
F 0 "U2" H 8175 1983 50  0000 C CNN
F 1 "NCV2007x" H 8175 2074 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 8125 2000 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/NCS20071-D.PDF" H 8125 2000 50  0001 C CNN
F 4 "ON Semiconductor" H 8125 2350 50  0001 C CNN "Manufacturer"
F 5 "NCV20074DTBR2G" H 8125 2350 50  0001 C CNN "Manufacturer PN"
F 6 "Digikey" H 8125 2350 50  0001 C CNN "Supplier"
F 7 "https://www.digikey.com/product-detail/en/on-semiconductor/NCV20074DTBR2G/NCV20074DTBR2GOSCT-ND/9087194" H 8125 2350 50  0001 C CNN "Supplier Link"
F 8 "NCV20074DTBR2GOSCT-ND" H 8125 2350 50  0001 C CNN "Supplier PN"
F 9 "1.01" H 8125 2350 50  0001 C CNN "Price 1 QTY"
	1    8125 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R11
U 1 1 5D4CA856
P 8975 2050
F 0 "R11" V 9075 2050 50  0000 C CNN
F 1 "1.2k" V 9175 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9015 2040 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDO0000/AOA0000C331.pdf" H 8975 2050 50  0001 C CNN
F 4 "Panasonic" H 8975 2050 50  0001 C CNN "Manufacturer"
F 5 "ERJ-PA3J122V" H 8975 2050 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 8975 2050 50  0001 C CNN "Price 1 QTY"
F 7 "Digikey" H 8975 2050 50  0001 C CNN "Supplier"
F 8 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-PA3J122V/P1.2KBZCT-ND/5036247" H 8975 2050 50  0001 C CNN "Supplier Link"
F 9 "P1.2KBZCT-ND" H 8975 2050 50  0001 C CNN "Supplier PN"
	1    8975 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R10
U 1 1 5D4CA065
P 8975 1850
F 0 "R10" V 8770 1850 50  0000 C CNN
F 1 "1.2k" V 8861 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9015 1840 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDO0000/AOA0000C331.pdf" H 8975 1850 50  0001 C CNN
F 4 "Panasonic" H 8975 1850 50  0001 C CNN "Manufacturer"
F 5 "ERJ-PA3J122V" H 8975 1850 50  0001 C CNN "Manufacturer PN"
F 6 "0.1" H 8975 1850 50  0001 C CNN "Price 1 QTY"
F 7 "Digikey" H 8975 1850 50  0001 C CNN "Supplier"
F 8 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-PA3J122V/P1.2KBZCT-ND/5036247" H 8975 1850 50  0001 C CNN "Supplier Link"
F 9 "P1.2KBZCT-ND" H 8975 1850 50  0001 C CNN "Supplier PN"
	1    8975 1850
	0    1    1    0   
$EndComp
$EndSCHEMATC
