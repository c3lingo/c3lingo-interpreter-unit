EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title "c3lingo interpeter unit"
Date "2021-05-23"
Rev "v0.2"
Comp "Jannik Beyerstedt"
Comment1 "Prototyping Modules Rev2"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4500 3000 1500 500 
U 60AE0DAE
F0 "Stage Line In + Microphone Mix and Line Out" 50
F1 "c3lingo_unit-mix_io/c3lingo_unit-mix_io.sch" 50
F2 "StageSignal" O R 6000 3250 50 
F3 "Mix_Ch1" I L 4500 3100 50 
F4 "Mix_Ch2" I L 4500 3250 50 
F5 "Mix_Ch3" I L 4500 3400 50 
$EndSheet
$Sheet
S 1500 1000 1500 750 
U 60AA662F
F0 "Mic1 Channel Strip and IO" 50
F1 "c3lingo_unit-channel/c3lingo_unit-channel.sch" 50
F2 "PreampOut" O R 3000 1300 50 
F3 "Monitor_Own" I L 1500 1250 50 
F4 "Monitor_OthersA" I L 1500 1400 50 
F5 "Monitor_OthersB" I L 1500 1550 50 
F6 "Monitor_Stage" I L 1500 1100 50 
$EndSheet
$Sheet
S 4500 1000 1500 750 
U 60AE7597
F0 "Mic2 Channel Strip and IO" 50
F1 "c3lingo_unit-channel/c3lingo_unit-channel.sch" 50
F2 "PreampOut" O R 6000 1300 50 
F3 "Monitor_Own" I L 4500 1250 50 
F4 "Monitor_OthersA" I L 4500 1400 50 
F5 "Monitor_OthersB" I L 4500 1550 50 
F6 "Monitor_Stage" I L 4500 1100 50 
$EndSheet
$Sheet
S 7500 1000 1500 750 
U 60AE80F3
F0 "Mic3 Channel Strip and IO" 50
F1 "c3lingo_unit-channel/c3lingo_unit-channel.sch" 50
F2 "PreampOut" O R 9000 1250 50 
F3 "Monitor_Own" I L 7500 1250 50 
F4 "Monitor_OthersA" I L 7500 1400 50 
F5 "Monitor_OthersB" I L 7500 1550 50 
F6 "Monitor_Stage" I L 7500 1100 50 
$EndSheet
$Comp
L power:GND #PWR?
U 1 1 60AC8130
P 2750 5750
AR Path="/60AA662F/60AC8130" Ref="#PWR?"  Part="1" 
AR Path="/60AC8130" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 2750 5500 50  0001 C CNN
F 1 "GND" H 2755 5577 50  0000 C CNN
F 2 "" H 2750 5750 50  0001 C CNN
F 3 "" H 2750 5750 50  0001 C CNN
	1    2750 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 60AC8136
P 2450 5450
AR Path="/60AA662F/60AC8136" Ref="#PWR?"  Part="1" 
AR Path="/60AC8136" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 2450 5300 50  0001 C CNN
F 1 "+15V" H 2465 5623 50  0000 C CNN
F 2 "" H 2450 5450 50  0001 C CNN
F 3 "" H 2450 5450 50  0001 C CNN
	1    2450 5450
	1    0    0    -1  
$EndComp
$Comp
L power:-15V #PWR?
U 1 1 60AC813C
P 2450 5850
AR Path="/60AA662F/60AC813C" Ref="#PWR?"  Part="1" 
AR Path="/60AC813C" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 2450 5950 50  0001 C CNN
F 1 "-15V" H 2465 6023 50  0000 C CNN
F 2 "" H 2450 5850 50  0001 C CNN
F 3 "" H 2450 5850 50  0001 C CNN
	1    2450 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2450 5750 2450 5850
Wire Wire Line
	2450 5550 2450 5450
Wire Wire Line
	2750 5650 2750 5750
$Comp
L power:PWR_FLAG #FLG?
U 1 1 60AC8148
P 1650 5550
AR Path="/60AA662F/60AC8148" Ref="#FLG?"  Part="1" 
AR Path="/60AC8148" Ref="#FLG0104"  Part="1" 
F 0 "#FLG0104" H 1650 5625 50  0001 C CNN
F 1 "PWR_FLAG" H 1650 5723 50  0000 C CNN
F 2 "" H 1650 5550 50  0001 C CNN
F 3 "~" H 1650 5550 50  0001 C CNN
	1    1650 5550
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 60AC814E
P 1650 5650
AR Path="/60AA662F/60AC814E" Ref="#FLG?"  Part="1" 
AR Path="/60AC814E" Ref="#FLG0105"  Part="1" 
F 0 "#FLG0105" H 1650 5725 50  0001 C CNN
F 1 "PWR_FLAG" V 1650 5777 50  0000 L CNN
F 2 "" H 1650 5650 50  0001 C CNN
F 3 "~" H 1650 5650 50  0001 C CNN
	1    1650 5650
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 60AC8154
P 1650 5750
AR Path="/60AA662F/60AC8154" Ref="#FLG?"  Part="1" 
AR Path="/60AC8154" Ref="#FLG0106"  Part="1" 
F 0 "#FLG0106" H 1650 5825 50  0001 C CNN
F 1 "PWR_FLAG" H 1650 5923 50  0000 C CNN
F 2 "" H 1650 5750 50  0001 C CNN
F 3 "~" H 1650 5750 50  0001 C CNN
	1    1650 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 5550 2450 5550
Wire Wire Line
	1650 5650 2750 5650
Wire Wire Line
	1650 5750 2450 5750
$EndSCHEMATC
