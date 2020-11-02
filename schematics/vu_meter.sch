EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 2 2
Title "VU Meter Module"
Date "2020-10-19"
Rev "v0.1"
Comp "Jannik Beyerstedt"
Comment1 "First Draft"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Comparator:LM339 U?
U 1 1 5FA97E57
P 5600 1300
AR Path="/5FA97E57" Ref="U?"  Part="1" 
AR Path="/5FA7BAE6/5FA97E57" Ref="U8"  Part="1" 
F 0 "U8" H 5600 1667 50  0000 C CNN
F 1 "LM339" H 5600 1576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5550 1400 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 5650 1500 50  0001 C CNN
	1    5600 1300
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U?
U 2 1 5FA97E5D
P 5600 1950
AR Path="/5FA97E5D" Ref="U?"  Part="2" 
AR Path="/5FA7BAE6/5FA97E5D" Ref="U8"  Part="2" 
F 0 "U8" H 5600 2317 50  0000 C CNN
F 1 "LM339" H 5600 2226 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5550 2050 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 5650 2150 50  0001 C CNN
	2    5600 1950
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U?
U 3 1 5FA97E63
P 5600 2600
AR Path="/5FA97E63" Ref="U?"  Part="3" 
AR Path="/5FA7BAE6/5FA97E63" Ref="U8"  Part="3" 
F 0 "U8" H 5600 2967 50  0000 C CNN
F 1 "LM339" H 5600 2876 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5550 2700 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 5650 2800 50  0001 C CNN
	3    5600 2600
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U?
U 4 1 5FA97E69
P 5600 3250
AR Path="/5FA97E69" Ref="U?"  Part="4" 
AR Path="/5FA7BAE6/5FA97E69" Ref="U8"  Part="4" 
F 0 "U8" H 5600 3617 50  0000 C CNN
F 1 "LM339" H 5600 3526 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5550 3350 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 5650 3450 50  0001 C CNN
	4    5600 3250
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U?
U 5 1 5FA97E6F
P 1600 1100
AR Path="/5FA97E6F" Ref="U?"  Part="5" 
AR Path="/5FA7BAE6/5FA97E6F" Ref="U8"  Part="5" 
F 0 "U8" H 1558 1146 50  0000 L CNN
F 1 "LM339" H 1558 1055 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 1550 1200 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 1650 1300 50  0001 C CNN
	5    1600 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FA97E75
P 5000 1450
AR Path="/5FA97E75" Ref="R?"  Part="1" 
AR Path="/5FA7BAE6/5FA97E75" Ref="R29"  Part="1" 
F 0 "R29" H 5070 1496 50  0000 L CNN
F 1 "R" H 5070 1405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4930 1450 50  0001 C CNN
F 3 "~" H 5000 1450 50  0001 C CNN
	1    5000 1450
	-1   0    0    1   
$EndComp
Text HLabel 1000 700  0    50   Input ~ 0
V_CC
Text HLabel 1000 1500 0    50   Input ~ 0
GND
Text Notes 1050 1700 0    50   ~ 0
TODO: Some capacitors
Wire Wire Line
	5300 1400 5200 1400
Wire Wire Line
	5200 1400 5200 2050
Wire Wire Line
	5200 2050 5300 2050
Wire Wire Line
	5000 1850 5300 1850
Wire Wire Line
	5000 1600 5000 1850
Wire Wire Line
	5300 1200 5000 1200
Wire Wire Line
	5000 1200 5000 1300
$Comp
L Device:R R?
U 1 1 5FC07C2B
P 5000 3400
AR Path="/5FC07C2B" Ref="R?"  Part="1" 
AR Path="/5FA7BAE6/5FC07C2B" Ref="R35"  Part="1" 
F 0 "R35" H 5070 3446 50  0000 L CNN
F 1 "R" H 5070 3355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4930 3400 50  0001 C CNN
F 3 "~" H 5000 3400 50  0001 C CNN
	1    5000 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 3350 5200 4000
Wire Wire Line
	5000 3550 5000 3800
Wire Wire Line
	5000 3150 5000 3250
$Comp
L Device:R R?
U 1 1 5FC0875A
P 5000 2100
AR Path="/5FC0875A" Ref="R?"  Part="1" 
AR Path="/5FA7BAE6/5FC0875A" Ref="R31"  Part="1" 
F 0 "R31" H 5070 2146 50  0000 L CNN
F 1 "R" H 5070 2055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4930 2100 50  0001 C CNN
F 3 "~" H 5000 2100 50  0001 C CNN
	1    5000 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 2050 5200 2700
Wire Wire Line
	5200 2700 5300 2700
Wire Wire Line
	5000 2500 5300 2500
Wire Wire Line
	5000 2250 5000 2500
Wire Wire Line
	5000 1850 5000 1950
$Comp
L Device:R R?
U 1 1 5FC08DF6
P 5000 2750
AR Path="/5FC08DF6" Ref="R?"  Part="1" 
AR Path="/5FA7BAE6/5FC08DF6" Ref="R33"  Part="1" 
F 0 "R33" H 5070 2796 50  0000 L CNN
F 1 "R" H 5070 2705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4930 2750 50  0001 C CNN
F 3 "~" H 5000 2750 50  0001 C CNN
	1    5000 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 2700 5200 3350
Wire Wire Line
	5200 3350 5300 3350
Wire Wire Line
	5000 3150 5300 3150
Wire Wire Line
	5000 2900 5000 3150
Wire Wire Line
	5000 2500 5000 2600
Connection ~ 5000 3150
Connection ~ 5200 3350
$Comp
L Comparator:LM339 U?
U 1 1 5FC107AB
P 5600 3900
AR Path="/5FC107AB" Ref="U?"  Part="1" 
AR Path="/5FA7BAE6/5FC107AB" Ref="U9"  Part="1" 
F 0 "U9" H 5600 4267 50  0000 C CNN
F 1 "LM339" H 5600 4176 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5550 4000 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 5650 4100 50  0001 C CNN
	1    5600 3900
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U?
U 2 1 5FC107B1
P 5600 4550
AR Path="/5FC107B1" Ref="U?"  Part="2" 
AR Path="/5FA7BAE6/5FC107B1" Ref="U9"  Part="2" 
F 0 "U9" H 5600 4917 50  0000 C CNN
F 1 "LM339" H 5600 4826 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5550 4650 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 5650 4750 50  0001 C CNN
	2    5600 4550
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U?
U 3 1 5FC107B7
P 5600 5200
AR Path="/5FC107B7" Ref="U?"  Part="3" 
AR Path="/5FA7BAE6/5FC107B7" Ref="U9"  Part="3" 
F 0 "U9" H 5600 5567 50  0000 C CNN
F 1 "LM339" H 5600 5476 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5550 5300 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 5650 5400 50  0001 C CNN
	3    5600 5200
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U?
U 4 1 5FC107BD
P 5600 5850
AR Path="/5FC107BD" Ref="U?"  Part="4" 
AR Path="/5FA7BAE6/5FC107BD" Ref="U9"  Part="4" 
F 0 "U9" H 5600 6217 50  0000 C CNN
F 1 "LM339" H 5600 6126 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5550 5950 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 5650 6050 50  0001 C CNN
	4    5600 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FC107C3
P 5000 4050
AR Path="/5FC107C3" Ref="R?"  Part="1" 
AR Path="/5FA7BAE6/5FC107C3" Ref="R37"  Part="1" 
F 0 "R37" H 5070 4096 50  0000 L CNN
F 1 "R" H 5070 4005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4930 4050 50  0001 C CNN
F 3 "~" H 5000 4050 50  0001 C CNN
	1    5000 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 4000 5200 4000
Wire Wire Line
	5200 4000 5200 4650
Wire Wire Line
	5200 4650 5300 4650
Wire Wire Line
	5000 4450 5300 4450
Wire Wire Line
	5000 4200 5000 4450
Wire Wire Line
	5300 3800 5000 3800
Wire Wire Line
	5000 3800 5000 3900
$Comp
L Device:R R?
U 1 1 5FC107D0
P 5000 6000
AR Path="/5FC107D0" Ref="R?"  Part="1" 
AR Path="/5FA7BAE6/5FC107D0" Ref="R43"  Part="1" 
F 0 "R43" H 5070 6046 50  0000 L CNN
F 1 "R" H 5070 5955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4930 6000 50  0001 C CNN
F 3 "~" H 5000 6000 50  0001 C CNN
	1    5000 6000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 5950 5200 6600
Wire Wire Line
	5000 6150 5000 6400
Wire Wire Line
	5000 5750 5000 5850
$Comp
L Device:R R?
U 1 1 5FC107D9
P 5000 4700
AR Path="/5FC107D9" Ref="R?"  Part="1" 
AR Path="/5FA7BAE6/5FC107D9" Ref="R39"  Part="1" 
F 0 "R39" H 5070 4746 50  0000 L CNN
F 1 "R" H 5070 4655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4930 4700 50  0001 C CNN
F 3 "~" H 5000 4700 50  0001 C CNN
	1    5000 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 4650 5200 5300
Wire Wire Line
	5200 5300 5300 5300
Wire Wire Line
	5000 5100 5300 5100
Wire Wire Line
	5000 4850 5000 5100
Wire Wire Line
	5000 4450 5000 4550
$Comp
L Device:R R?
U 1 1 5FC107E4
P 5000 5350
AR Path="/5FC107E4" Ref="R?"  Part="1" 
AR Path="/5FA7BAE6/5FC107E4" Ref="R41"  Part="1" 
F 0 "R41" H 5070 5396 50  0000 L CNN
F 1 "R" H 5070 5305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4930 5350 50  0001 C CNN
F 3 "~" H 5000 5350 50  0001 C CNN
	1    5000 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 5300 5200 5950
Wire Wire Line
	5200 5950 5300 5950
Wire Wire Line
	5000 5750 5300 5750
Wire Wire Line
	5000 5500 5000 5750
Wire Wire Line
	5000 5100 5000 5200
Connection ~ 5000 5750
Connection ~ 5200 5950
$Comp
L Comparator:LM339 U?
U 1 1 5FC17233
P 5600 6500
AR Path="/5FC17233" Ref="U?"  Part="1" 
AR Path="/5FA7BAE6/5FC17233" Ref="U10"  Part="1" 
F 0 "U10" H 5600 6867 50  0000 C CNN
F 1 "LM339" H 5600 6776 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5550 6600 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 5650 6700 50  0001 C CNN
	1    5600 6500
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U?
U 2 1 5FC17239
P 5600 7150
AR Path="/5FC17239" Ref="U?"  Part="2" 
AR Path="/5FA7BAE6/5FC17239" Ref="U10"  Part="2" 
F 0 "U10" H 5600 7517 50  0000 C CNN
F 1 "LM339" H 5600 7426 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5550 7250 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 5650 7350 50  0001 C CNN
	2    5600 7150
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U?
U 3 1 5FC1723F
P 5600 7800
AR Path="/5FC1723F" Ref="U?"  Part="3" 
AR Path="/5FA7BAE6/5FC1723F" Ref="U10"  Part="3" 
F 0 "U10" H 5600 8167 50  0000 C CNN
F 1 "LM339" H 5600 8076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5550 7900 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 5650 8000 50  0001 C CNN
	3    5600 7800
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U?
U 4 1 5FC17245
P 5600 8450
AR Path="/5FC17245" Ref="U?"  Part="4" 
AR Path="/5FA7BAE6/5FC17245" Ref="U10"  Part="4" 
F 0 "U10" H 5600 8817 50  0000 C CNN
F 1 "LM339" H 5600 8726 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5550 8550 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 5650 8650 50  0001 C CNN
	4    5600 8450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FC1724B
P 5000 6650
AR Path="/5FC1724B" Ref="R?"  Part="1" 
AR Path="/5FA7BAE6/5FC1724B" Ref="R45"  Part="1" 
F 0 "R45" H 5070 6696 50  0000 L CNN
F 1 "R" H 5070 6605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4930 6650 50  0001 C CNN
F 3 "~" H 5000 6650 50  0001 C CNN
	1    5000 6650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 6600 5200 6600
Wire Wire Line
	5200 6600 5200 7250
Wire Wire Line
	5200 7250 5300 7250
Wire Wire Line
	5000 7050 5300 7050
Wire Wire Line
	5000 6800 5000 7050
Wire Wire Line
	5300 6400 5000 6400
Wire Wire Line
	5000 6400 5000 6500
$Comp
L Device:R R?
U 1 1 5FC17258
P 5000 8600
AR Path="/5FC17258" Ref="R?"  Part="1" 
AR Path="/5FA7BAE6/5FC17258" Ref="R53"  Part="1" 
F 0 "R53" H 4930 8554 50  0000 R CNN
F 1 "1K" H 4930 8645 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4930 8600 50  0001 C CNN
F 3 "~" H 5000 8600 50  0001 C CNN
	1    5000 8600
	1    0    0    1   
$EndComp
Wire Wire Line
	5000 8350 5000 8450
$Comp
L Device:R R?
U 1 1 5FC17261
P 5000 7300
AR Path="/5FC17261" Ref="R?"  Part="1" 
AR Path="/5FA7BAE6/5FC17261" Ref="R47"  Part="1" 
F 0 "R47" H 5070 7346 50  0000 L CNN
F 1 "R" H 5070 7255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4930 7300 50  0001 C CNN
F 3 "~" H 5000 7300 50  0001 C CNN
	1    5000 7300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 7250 5200 7900
Wire Wire Line
	5200 7900 5300 7900
Wire Wire Line
	5000 7700 5300 7700
Wire Wire Line
	5000 7450 5000 7700
Wire Wire Line
	5000 7050 5000 7150
$Comp
L Device:R R?
U 1 1 5FC1726C
P 5000 7950
AR Path="/5FC1726C" Ref="R?"  Part="1" 
AR Path="/5FA7BAE6/5FC1726C" Ref="R50"  Part="1" 
F 0 "R50" H 5070 7996 50  0000 L CNN
F 1 "R" H 5070 7905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4930 7950 50  0001 C CNN
F 3 "~" H 5000 7950 50  0001 C CNN
	1    5000 7950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 8550 5300 8550
Wire Wire Line
	5000 8350 5300 8350
Wire Wire Line
	5000 8100 5000 8350
Wire Wire Line
	5000 7700 5000 7800
Connection ~ 5000 8350
Connection ~ 5200 8550
Connection ~ 5000 1850
Connection ~ 5000 2500
Connection ~ 5000 3800
Connection ~ 5000 4450
Connection ~ 5000 5100
Connection ~ 5000 6400
Connection ~ 5000 7050
Connection ~ 5000 7700
Connection ~ 5200 2050
Connection ~ 5200 2700
Connection ~ 5200 4000
Connection ~ 5200 4650
Connection ~ 5200 5300
Connection ~ 5200 6600
Connection ~ 5200 7250
Connection ~ 5200 7900
$Comp
L Device:R R28
U 1 1 5FC34754
P 6500 1300
F 0 "R28" V 6293 1300 50  0000 C CNN
F 1 "R" V 6384 1300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6430 1300 50  0001 C CNN
F 3 "~" H 6500 1300 50  0001 C CNN
	1    6500 1300
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5FC36323
P 6900 1300
F 0 "D1" H 6893 1517 50  0000 C CNN
F 1 "LED rd" H 6893 1426 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6900 1300 50  0001 C CNN
F 3 "~" H 6900 1300 50  0001 C CNN
	1    6900 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 700  1500 800 
Wire Wire Line
	1000 1500 1500 1500
Wire Wire Line
	1500 1500 1500 1400
Wire Wire Line
	7150 700  7150 1300
Wire Wire Line
	7150 1300 7050 1300
Connection ~ 1500 700 
Wire Wire Line
	6750 1300 6650 1300
Wire Wire Line
	6350 1300 5900 1300
$Comp
L Device:R R30
U 1 1 5FC543C3
P 6500 1950
F 0 "R30" V 6293 1950 50  0000 C CNN
F 1 "R" V 6384 1950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6430 1950 50  0001 C CNN
F 3 "~" H 6500 1950 50  0001 C CNN
	1    6500 1950
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5FC543C9
P 6900 1950
F 0 "D2" H 6893 2167 50  0000 C CNN
F 1 "LED ye" H 6893 2076 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6900 1950 50  0001 C CNN
F 3 "~" H 6900 1950 50  0001 C CNN
	1    6900 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1950 7050 1950
Wire Wire Line
	6750 1950 6650 1950
Wire Wire Line
	6350 1950 5900 1950
Wire Wire Line
	7150 1300 7150 1950
Connection ~ 7150 1300
$Comp
L Device:R R32
U 1 1 5FC583CA
P 6500 2600
F 0 "R32" V 6293 2600 50  0000 C CNN
F 1 "R" V 6384 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6430 2600 50  0001 C CNN
F 3 "~" H 6500 2600 50  0001 C CNN
	1    6500 2600
	0    1    1    0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5FC583D0
P 6900 2600
F 0 "D3" H 6893 2817 50  0000 C CNN
F 1 "LED ye" H 6893 2726 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6900 2600 50  0001 C CNN
F 3 "~" H 6900 2600 50  0001 C CNN
	1    6900 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2600 7050 2600
Wire Wire Line
	6750 2600 6650 2600
Wire Wire Line
	6350 2600 5900 2600
Wire Wire Line
	7150 1950 7150 2600
$Comp
L Device:R R34
U 1 1 5FC5A209
P 6500 3250
F 0 "R34" V 6293 3250 50  0000 C CNN
F 1 "R" V 6384 3250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6430 3250 50  0001 C CNN
F 3 "~" H 6500 3250 50  0001 C CNN
	1    6500 3250
	0    1    1    0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5FC5A20F
P 6900 3250
F 0 "D4" H 6893 3467 50  0000 C CNN
F 1 "LED gn" H 6893 3376 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6900 3250 50  0001 C CNN
F 3 "~" H 6900 3250 50  0001 C CNN
	1    6900 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3250 7050 3250
Wire Wire Line
	6750 3250 6650 3250
Wire Wire Line
	6350 3250 5900 3250
Wire Wire Line
	7150 2600 7150 3250
$Comp
L Device:R R36
U 1 1 5FC5C53F
P 6500 3900
F 0 "R36" V 6293 3900 50  0000 C CNN
F 1 "R" V 6384 3900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6430 3900 50  0001 C CNN
F 3 "~" H 6500 3900 50  0001 C CNN
	1    6500 3900
	0    1    1    0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5FC5C545
P 6900 3900
F 0 "D5" H 6893 4117 50  0000 C CNN
F 1 "LED gn" H 6893 4026 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6900 3900 50  0001 C CNN
F 3 "~" H 6900 3900 50  0001 C CNN
	1    6900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3900 7050 3900
Wire Wire Line
	6750 3900 6650 3900
Wire Wire Line
	6350 3900 5900 3900
Wire Wire Line
	7150 3250 7150 3900
$Comp
L Device:R R38
U 1 1 5FC5EA53
P 6500 4550
F 0 "R38" V 6293 4550 50  0000 C CNN
F 1 "R" V 6384 4550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6430 4550 50  0001 C CNN
F 3 "~" H 6500 4550 50  0001 C CNN
	1    6500 4550
	0    1    1    0   
$EndComp
$Comp
L Device:LED D6
U 1 1 5FC5EA59
P 6900 4550
F 0 "D6" H 6893 4767 50  0000 C CNN
F 1 "LED gn" H 6893 4676 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6900 4550 50  0001 C CNN
F 3 "~" H 6900 4550 50  0001 C CNN
	1    6900 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4550 7050 4550
Wire Wire Line
	6750 4550 6650 4550
Wire Wire Line
	6350 4550 5900 4550
Wire Wire Line
	7150 3900 7150 4550
$Comp
L Device:R R40
U 1 1 5FC60D28
P 6500 5200
F 0 "R40" V 6293 5200 50  0000 C CNN
F 1 "R" V 6384 5200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6430 5200 50  0001 C CNN
F 3 "~" H 6500 5200 50  0001 C CNN
	1    6500 5200
	0    1    1    0   
$EndComp
$Comp
L Device:LED D7
U 1 1 5FC60D2E
P 6900 5200
F 0 "D7" H 6893 5417 50  0000 C CNN
F 1 "LED ye" H 6893 5326 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6900 5200 50  0001 C CNN
F 3 "~" H 6900 5200 50  0001 C CNN
	1    6900 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5200 7050 5200
Wire Wire Line
	6750 5200 6650 5200
Wire Wire Line
	6350 5200 5900 5200
Wire Wire Line
	7150 4550 7150 5200
$Comp
L Device:R R42
U 1 1 5FC636D5
P 6500 5850
F 0 "R42" V 6293 5850 50  0000 C CNN
F 1 "R" V 6384 5850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6430 5850 50  0001 C CNN
F 3 "~" H 6500 5850 50  0001 C CNN
	1    6500 5850
	0    1    1    0   
$EndComp
$Comp
L Device:LED D8
U 1 1 5FC636DB
P 6900 5850
F 0 "D8" H 6893 6067 50  0000 C CNN
F 1 "LED ye" H 6893 5976 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6900 5850 50  0001 C CNN
F 3 "~" H 6900 5850 50  0001 C CNN
	1    6900 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5850 7050 5850
Wire Wire Line
	6750 5850 6650 5850
Wire Wire Line
	6350 5850 5900 5850
Wire Wire Line
	7150 5200 7150 5850
$Comp
L Device:R R44
U 1 1 5FC66851
P 6500 6500
F 0 "R44" V 6293 6500 50  0000 C CNN
F 1 "R" V 6384 6500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6430 6500 50  0001 C CNN
F 3 "~" H 6500 6500 50  0001 C CNN
	1    6500 6500
	0    1    1    0   
$EndComp
$Comp
L Device:LED D9
U 1 1 5FC66857
P 6900 6500
F 0 "D9" H 6893 6717 50  0000 C CNN
F 1 "LED rd" H 6893 6626 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6900 6500 50  0001 C CNN
F 3 "~" H 6900 6500 50  0001 C CNN
	1    6900 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 6500 7050 6500
Wire Wire Line
	6750 6500 6650 6500
Wire Wire Line
	6350 6500 5900 6500
Wire Wire Line
	7150 5850 7150 6500
$Comp
L Device:R R46
U 1 1 5FC694C3
P 6500 7150
F 0 "R46" V 6293 7150 50  0000 C CNN
F 1 "R" V 6384 7150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6430 7150 50  0001 C CNN
F 3 "~" H 6500 7150 50  0001 C CNN
	1    6500 7150
	0    1    1    0   
$EndComp
$Comp
L Device:LED D10
U 1 1 5FC694C9
P 6900 7150
F 0 "D10" H 6893 7367 50  0000 C CNN
F 1 "LED rd" H 6893 7276 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6900 7150 50  0001 C CNN
F 3 "~" H 6900 7150 50  0001 C CNN
	1    6900 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 7150 7050 7150
Wire Wire Line
	6750 7150 6650 7150
Wire Wire Line
	6350 7150 5900 7150
Wire Wire Line
	7150 6500 7150 7150
$Comp
L Device:R R49
U 1 1 5FC6C36E
P 6500 7800
F 0 "R49" V 6293 7800 50  0000 C CNN
F 1 "R" V 6384 7800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6430 7800 50  0001 C CNN
F 3 "~" H 6500 7800 50  0001 C CNN
	1    6500 7800
	0    1    1    0   
$EndComp
$Comp
L Device:LED D12
U 1 1 5FC6C374
P 6900 7800
F 0 "D12" H 6893 8017 50  0000 C CNN
F 1 "LED rd" H 6893 7926 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6900 7800 50  0001 C CNN
F 3 "~" H 6900 7800 50  0001 C CNN
	1    6900 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 7800 7050 7800
Wire Wire Line
	6750 7800 6650 7800
Wire Wire Line
	6350 7800 5900 7800
Wire Wire Line
	7150 7150 7150 7800
$Comp
L Device:R R52
U 1 1 5FC6F375
P 6500 8450
F 0 "R52" V 6293 8450 50  0000 C CNN
F 1 "R" V 6384 8450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6430 8450 50  0001 C CNN
F 3 "~" H 6500 8450 50  0001 C CNN
	1    6500 8450
	0    1    1    0   
$EndComp
$Comp
L Device:LED D14
U 1 1 5FC6F37B
P 6900 8450
F 0 "D14" H 6893 8667 50  0000 C CNN
F 1 "LED rd" H 6893 8576 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6900 8450 50  0001 C CNN
F 3 "~" H 6900 8450 50  0001 C CNN
	1    6900 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 8450 7050 8450
Wire Wire Line
	6750 8450 6650 8450
Wire Wire Line
	6350 8450 5900 8450
Wire Wire Line
	7150 7800 7150 8450
Text Notes 1850 9100 0    50   ~ 0
Buffer/ Rectifier\nGain: 4
Text HLabel 4900 8900 0    50   Input ~ 0
GND
Wire Wire Line
	4900 8900 5000 8900
Text Notes 3750 2450 0    50   ~ 0
TODO: Resistor Values\ndBu -> V_RMS\n+12 dBu: 3.08 V\n +8 dBu: 1.95 V\n +4 dBu: 1.23 V\n   0 dBu: 0.775 V\n -4 dBu: 0.489 V\n -8 dBu: 0.308 V\n-12 dBu: 0.195 V\n-16 dBu: 0.123 V\n-20 dBu: 0.0775 V\n-24 dBu: 0.0489 V\n-28 dBu: 0.0308 V\n-32 dBu: 0.0195 V
Text Notes 7650 1300 2    50   ~ 0
+12 dBu
Text Notes 7650 1950 2    50   ~ 0
+8 dBu
Text Notes 7650 3250 2    50   ~ 0
+0 dBu
Connection ~ 7150 1950
Connection ~ 7150 2600
Connection ~ 7150 3250
Connection ~ 7150 3900
Connection ~ 7150 4550
Connection ~ 7150 5200
Connection ~ 7150 5850
Connection ~ 7150 6500
Connection ~ 7150 7150
Connection ~ 7150 7800
Text Notes 7650 2600 2    50   ~ 0
+4 dBu
Text Notes 7300 8450 0    50   ~ 0
-32 dBu
Text Notes 7300 6500 0    50   ~ 0
-20 dBu
Text Notes 7350 4550 0    50   ~ 0
-8 dBu
Text Notes 7650 3900 2    50   ~ 0
-4 dBu
Text Notes 7300 5200 0    50   ~ 0
-12 dBu
Text Notes 7300 5850 0    50   ~ 0
-16 dBu
Text Notes 7300 7150 0    50   ~ 0
-24 dBu
Text Notes 7300 7800 0    50   ~ 0
-28 dBu
$Comp
L Comparator:LM339 U9
U 5 1 5FC9E0B4
P 2250 1100
F 0 "U9" H 2208 1146 50  0000 L CNN
F 1 "LM339" H 2208 1055 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 2200 1200 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 2300 1300 50  0001 C CNN
	5    2250 1100
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM339 U10
U 5 1 5FC9F491
P 2900 1100
F 0 "U10" H 2858 1146 50  0000 L CNN
F 1 "LM339" H 2858 1055 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 2850 1200 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/lm139.pdf" H 2950 1300 50  0001 C CNN
	5    2900 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 700  1500 700 
$Comp
L power:GNDREF #PWR?
U 1 1 5FD55EE5
P 4600 9650
AR Path="/5FD55EE5" Ref="#PWR?"  Part="1" 
AR Path="/5FA7BAE6/5FD55EE5" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 4600 9400 50  0001 C CNN
F 1 "GNDREF" H 4605 9477 50  0000 C CNN
F 2 "" H 4600 9650 50  0001 C CNN
F 3 "" H 4600 9650 50  0001 C CNN
	1    4600 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 9500 4350 9600
Wire Wire Line
	4350 9600 4600 9600
Wire Wire Line
	4600 9600 4600 9650
Wire Wire Line
	4850 9500 4850 9600
Wire Wire Line
	4850 9600 4600 9600
Connection ~ 4600 9600
Wire Wire Line
	4850 9200 4850 9100
Wire Wire Line
	4850 9100 5200 9100
Wire Wire Line
	4850 9100 4350 9100
Wire Wire Line
	4350 9100 4350 9200
Connection ~ 4850 9100
$Comp
L Device:CP C27
U 1 1 5FD7B3EC
P 4350 9350
F 0 "C27" H 4468 9396 50  0000 L CNN
F 1 "2.2uF" H 4468 9305 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 4388 9200 50  0001 C CNN
F 3 "~" H 4350 9350 50  0001 C CNN
	1    4350 9350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R54
U 1 1 5FD7BF84
P 4850 9350
F 0 "R54" H 4920 9396 50  0000 L CNN
F 1 "10K" H 4920 9305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4780 9350 50  0001 C CNN
F 3 "~" H 4850 9350 50  0001 C CNN
	1    4850 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 8750 5000 8900
Wire Wire Line
	5200 8550 5200 9100
Wire Wire Line
	5200 7900 5200 8550
Text Notes 4900 9750 0    50   ~ 0
Signal Smoothing\n(Try out different values)
Connection ~ 4350 9100
Text HLabel 1000 9500 0    50   Input ~ 0
V_CC
$Comp
L Amplifier_Operational:LM358 U?
U 3 1 5FCB34F7
P 1500 9900
AR Path="/5FCB34F7" Ref="U?"  Part="3" 
AR Path="/5FA7BAE6/5FCB34F7" Ref="U14"  Part="3" 
F 0 "U14" V 1175 9900 50  0000 C CNN
F 1 "LM833N" V 1266 9900 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 1500 9900 50  0001 C CNN
F 3 "" H 1500 9900 50  0001 C CNN
	3    1500 9900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FCB34DD
P 1800 9750
AR Path="/5FCB34DD" Ref="C?"  Part="1" 
AR Path="/5FA7BAE6/5FCB34DD" Ref="C28"  Part="1" 
F 0 "C28" H 1685 9704 50  0000 R CNN
F 1 "100nF" H 1685 9795 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 1838 9600 50  0001 C CNN
F 3 "~" H 1800 9750 50  0001 C CNN
	1    1800 9750
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5FCB34D1
P 1600 10400
AR Path="/5FCB34D1" Ref="#PWR?"  Part="1" 
AR Path="/5FA7BAE6/5FCB34D1" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 1600 10150 50  0001 C CNN
F 1 "GNDREF" H 1605 10227 50  0000 C CNN
F 2 "" H 1600 10400 50  0001 C CNN
F 3 "" H 1600 10400 50  0001 C CNN
	1    1600 10400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 7350 2500 7350
Wire Wire Line
	3800 7350 3000 7350
Wire Wire Line
	3700 8350 3800 8350
$Comp
L Device:R R48
U 1 1 5FDC0FFB
P 2850 7350
F 0 "R48" V 2643 7350 50  0000 C CNN
F 1 "100K" V 2734 7350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2780 7350 50  0001 C CNN
F 3 "~" H 2850 7350 50  0001 C CNN
	1    2850 7350
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 8250 2600 8250
Wire Wire Line
	2700 7750 2500 7750
Wire Wire Line
	3300 8350 3400 8350
Connection ~ 3300 8350
Wire Wire Line
	3300 7750 3000 7750
Wire Wire Line
	3300 8350 3300 7750
$Comp
L Device:D D13
U 1 1 5FDA0CAC
P 3550 8350
F 0 "D13" H 3550 8133 50  0000 C CNN
F 1 "1N4148" H 3550 8224 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 3550 8350 50  0001 C CNN
F 3 "~" H 3550 8350 50  0001 C CNN
	1    3550 8350
	-1   0    0    1   
$EndComp
$Comp
L Device:D D11
U 1 1 5FD9FD73
P 2850 7750
F 0 "D11" H 2850 7533 50  0000 C CNN
F 1 "1N4148" H 2850 7624 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 2850 7750 50  0001 C CNN
F 3 "~" H 2850 7750 50  0001 C CNN
	1    2850 7750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 8000 1350 8100
Wire Wire Line
	1000 8000 1350 8000
$Comp
L Device:R_POT RV2
U 1 1 5FCFBEFC
P 1350 8250
F 0 "RV2" H 1281 8296 50  0000 R CNN
F 1 "50K" H 1281 8205 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Vishay_148-149_Single_Horizontal" H 1350 8250 50  0001 C CNN
F 3 "~" H 1350 8250 50  0001 C CNN
	1    1350 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 8350 3300 8350
$Comp
L power:GNDREF #PWR?
U 1 1 5FCB351D
P 2500 8550
AR Path="/5FCB351D" Ref="#PWR?"  Part="1" 
AR Path="/5FA7BAE6/5FCB351D" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 2500 8300 50  0001 C CNN
F 1 "GNDREF" H 2505 8377 50  0000 C CNN
F 2 "" H 2500 8550 50  0001 C CNN
F 3 "" H 2500 8550 50  0001 C CNN
	1    2500 8550
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U?
U 1 1 5FCB34FE
P 2900 8350
AR Path="/5FCB34FE" Ref="U?"  Part="2" 
AR Path="/5FA7BAE6/5FCB34FE" Ref="U14"  Part="1" 
F 0 "U14" H 2900 7983 50  0000 C CNN
F 1 "LM833N" H 2900 8074 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 2900 8350 50  0001 C CNN
F 3 "" H 2900 8350 50  0001 C CNN
	1    2900 8350
	1    0    0    1   
$EndComp
Text HLabel 1000 8000 0    50   Input ~ 0
Line_Input
$Comp
L Device:CP C26
U 1 1 5FEAE431
P 1750 8250
F 0 "C26" V 2005 8250 50  0000 C CNN
F 1 "TODO" V 1914 8250 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 1788 8100 50  0001 C CNN
F 3 "~" H 1750 8250 50  0001 C CNN
	1    1750 8250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R51
U 1 1 5FED2400
P 2150 8250
F 0 "R51" V 2357 8250 50  0000 C CNN
F 1 "25K" V 2266 8250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2080 8250 50  0001 C CNN
F 3 "~" H 2150 8250 50  0001 C CNN
	1    2150 8250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 7750 2500 8250
Wire Wire Line
	3800 7350 3800 8350
Wire Wire Line
	2500 7350 2500 7750
Connection ~ 2500 7750
Text Notes 3650 1150 0    50   ~ 0
TODO: Reduce 15 V to +12 dBu (3.08 V)
Wire Wire Line
	2600 8450 2500 8450
Wire Wire Line
	2500 8450 2500 8550
Wire Wire Line
	2500 8250 2300 8250
Connection ~ 2500 8250
Wire Wire Line
	2000 8250 1900 8250
Wire Wire Line
	1500 8250 1600 8250
$Comp
L power:GNDREF #PWR?
U 1 1 5FFA8E8D
P 1350 8500
AR Path="/5FFA8E8D" Ref="#PWR?"  Part="1" 
AR Path="/5FA7BAE6/5FFA8E8D" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 1350 8250 50  0001 C CNN
F 1 "GNDREF" H 1355 8327 50  0000 C CNN
F 2 "" H 1350 8500 50  0001 C CNN
F 3 "" H 1350 8500 50  0001 C CNN
	1    1350 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 8400 1350 8500
Wire Wire Line
	3800 8350 4150 8350
Wire Wire Line
	4150 8350 4150 9100
Connection ~ 3800 8350
Wire Wire Line
	4150 9100 4350 9100
Wire Wire Line
	1400 9500 1400 9600
Wire Wire Line
	1800 9500 1800 9600
Wire Wire Line
	1400 9500 1800 9500
Connection ~ 1400 9500
Wire Wire Line
	1800 9900 1800 10300
Wire Wire Line
	1800 10300 1600 10300
Wire Wire Line
	1600 10300 1600 10400
Wire Wire Line
	1600 10300 1400 10300
Wire Wire Line
	1400 10300 1400 10200
Connection ~ 1600 10300
Wire Wire Line
	2800 800  2800 700 
Connection ~ 2800 700 
Wire Wire Line
	2800 700  7150 700 
Wire Wire Line
	2800 1400 2800 1500
Wire Wire Line
	2800 1500 2150 1500
Connection ~ 1500 1500
Wire Wire Line
	2150 1400 2150 1500
Connection ~ 2150 1500
Wire Wire Line
	2150 1500 1500 1500
Wire Wire Line
	1000 9500 1400 9500
Wire Wire Line
	1500 700  2150 700 
Wire Wire Line
	2150 800  2150 700 
Connection ~ 2150 700 
Wire Wire Line
	2150 700  2800 700 
$EndSCHEMATC
