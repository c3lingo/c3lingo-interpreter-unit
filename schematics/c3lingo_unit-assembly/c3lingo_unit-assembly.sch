EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title "c3lingo interpeter unit"
Date "2021-05-28"
Rev "v0.2"
Comp "Jannik Beyerstedt (jtbx)"
Comment1 "Prototype 1"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5000 1000 1500 700 
U 60AE0DAE
F0 "Stage Line In + Microphone Mix and Line Out" 50
F1 "c3lingo_unit-mix_io/c3lingo_unit-mix_io.sch" 50
F2 "StageSignal" O L 5000 1100 50 
F3 "Mix_Ch1" I L 5000 1300 50 
F4 "Mix_Ch2" I L 5000 1450 50 
F5 "Mix_Ch3" I L 5000 1600 50 
$EndSheet
$Sheet
S 5000 2250 1500 750 
U 60AA662F
F0 "Mic1 Channel Strip and IO" 50
F1 "c3lingo_unit-channel/c3lingo_unit-channel.sch" 50
F2 "PreampOut" O L 5000 2350 50 
F3 "Monitor_OthersA" I L 5000 2750 50 
F4 "Monitor_OthersB" I L 5000 2900 50 
F5 "Monitor_Stage" I L 5000 2550 50 
$EndSheet
$Sheet
S 5000 3350 1500 750 
U 60AE7597
F0 "Mic2 Channel Strip and IO" 50
F1 "c3lingo_unit-channel/c3lingo_unit-channel.sch" 50
F2 "PreampOut" O L 5000 3450 50 
F3 "Monitor_OthersA" I L 5000 3850 50 
F4 "Monitor_OthersB" I L 5000 4000 50 
F5 "Monitor_Stage" I L 5000 3650 50 
$EndSheet
$Sheet
S 5000 4450 1500 750 
U 60AE80F3
F0 "Mic3 Channel Strip and IO" 50
F1 "c3lingo_unit-channel/c3lingo_unit-channel.sch" 50
F2 "PreampOut" O L 5000 4550 50 
F3 "Monitor_OthersA" I L 5000 4950 50 
F4 "Monitor_OthersB" I L 5000 5100 50 
F5 "Monitor_Stage" I L 5000 4750 50 
$EndSheet
$Comp
L power:GND #PWR0103
U 1 1 60AC8130
P 6000 7200
F 0 "#PWR0103" H 6000 6950 50  0001 C CNN
F 1 "GND" H 6005 7027 50  0000 C CNN
F 2 "" H 6000 7200 50  0001 C CNN
F 3 "" H 6000 7200 50  0001 C CNN
	1    6000 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0101
U 1 1 60AC8136
P 5500 6800
F 0 "#PWR0101" H 5500 6650 50  0001 C CNN
F 1 "+15V" H 5515 6973 50  0000 C CNN
F 2 "" H 5500 6800 50  0001 C CNN
F 3 "" H 5500 6800 50  0001 C CNN
	1    5500 6800
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR0102
U 1 1 60AC813C
P 5500 7200
F 0 "#PWR0102" H 5500 7300 50  0001 C CNN
F 1 "-15V" H 5515 7373 50  0000 C CNN
F 2 "" H 5500 7200 50  0001 C CNN
F 3 "" H 5500 7200 50  0001 C CNN
	1    5500 7200
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60AC8148
P 5400 7000
F 0 "#FLG0101" H 5400 7075 50  0001 C CNN
F 1 "PWR_FLAG" V 5400 7127 50  0000 L CNN
F 2 "" H 5400 7000 50  0001 C CNN
F 3 "~" H 5400 7000 50  0001 C CNN
	1    5400 7000
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 60AC8154
P 6500 7000
F 0 "#FLG0103" H 6500 7075 50  0001 C CNN
F 1 "PWR_FLAG" H 6500 7173 50  0000 C CNN
F 2 "" H 6500 7000 50  0001 C CNN
F 3 "~" H 6500 7000 50  0001 C CNN
	1    6500 7000
	1    0    0    -1  
$EndComp
Text Notes 5600 7650 0    50   ~ 0
Make the ERC happy
$Comp
L power:GNDREF #PWR0104
U 1 1 632B5377
P 6500 7200
F 0 "#PWR0104" H 6500 6950 50  0001 C CNN
F 1 "GNDREF" H 6505 7027 50  0000 C CNN
F 2 "" H 6500 7200 50  0001 C CNN
F 3 "" H 6500 7200 50  0001 C CNN
	1    6500 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 7200 6500 7000
Wire Wire Line
	6000 7000 6000 7200
Wire Wire Line
	5500 6800 5500 7000
Wire Wire Line
	5500 7000 5400 7000
Wire Wire Line
	5500 7000 5500 7200
Connection ~ 5500 7000
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60AC814E
P 6000 7000
F 0 "#FLG0102" H 6000 7075 50  0001 C CNN
F 1 "PWR_FLAG" V 6000 7127 50  0000 L CNN
F 2 "" H 6000 7000 50  0001 C CNN
F 3 "~" H 6000 7000 50  0001 C CNN
	1    6000 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1100 4500 1100
Wire Wire Line
	4500 1100 4500 2550
Wire Wire Line
	4500 2550 5000 2550
Wire Wire Line
	4500 2550 4500 3650
Wire Wire Line
	4500 3650 5000 3650
Connection ~ 4500 2550
Wire Wire Line
	4500 3650 4500 4750
Wire Wire Line
	4500 4750 5000 4750
Connection ~ 4500 3650
Wire Wire Line
	5000 2350 4200 2350
Wire Wire Line
	4200 2350 4200 1300
Wire Wire Line
	4200 1300 5000 1300
Wire Wire Line
	5000 3450 4050 3450
Wire Wire Line
	4050 3450 4050 2750
Wire Wire Line
	4050 1450 5000 1450
Wire Wire Line
	5000 4550 3900 4550
Wire Wire Line
	3900 4550 3900 4000
Wire Wire Line
	3900 1600 5000 1600
Wire Wire Line
	4200 2350 4200 3850
Wire Wire Line
	4200 3850 5000 3850
Connection ~ 4200 2350
Wire Wire Line
	4200 3850 4200 4950
Wire Wire Line
	4200 4950 5000 4950
Connection ~ 4200 3850
Wire Wire Line
	4050 3450 4050 5100
Wire Wire Line
	4050 5100 5000 5100
Connection ~ 4050 3450
Wire Wire Line
	4050 2750 5000 2750
Connection ~ 4050 2750
Wire Wire Line
	4050 2750 4050 1450
Wire Wire Line
	3900 2900 5000 2900
Connection ~ 3900 2900
Wire Wire Line
	3900 2900 3900 1600
Wire Wire Line
	5000 4000 3900 4000
Connection ~ 3900 4000
Wire Wire Line
	3900 4000 3900 2900
$EndSCHEMATC
