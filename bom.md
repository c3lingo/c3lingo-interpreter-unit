# Bill of Materials

List of major components (resistors and capacitors are left out).

All prices without VAT unless otherwise noted and without discount for higher order volume.

## Power Supply
When 48V phantom power is not urgently needed, just use a Mean Well RT-50C power supply to provide +15V, -15V and +5V.
Otherwise a way to create clean 48V from one of these power rails is needed, but we want to only use dynamic microphones anyways.


## Housing
All components fit in the off-the-shelf Hammond Manufacturing 1456PH3 housing.
But drilling and routing the holes in already bent metal sheets may be difficult

### Custom Housing
The Design is based on the Hammond Manufacturing 1456PH3 with a reduced width and increased hight of the Channel I/O Section

| Count | Manufacturer + Art. No.   | Description                               | Distributor Order No.
|-------|---------------------------|-------------------------------------------|----------------------
| 1     | Housing Shell             | Aluminium Sheet 1.5mm                     | _custom made_
| 1     | Housing Bottom            | Aluminium Sheet 2mm                       | _custom made_
| 4     | 2.9x9.5 ISO 7049 (PZ)     | Self Tapping Screw (for feet)             | Wegertseder 4003-317 (alt. ISO 14585 (TX) 4671-006)
| 4     | M3x10 ISO 7045 (PH)       | M3x10 Pan Head Screw (alt. for feet)      | Wegertseder 1118-038 (alt. ISO 14583 (TX) 3840-514)
| 4     | Rubber Feet 14x11x9mm D3  | Rubber Feet 14x11x9mm D3                  | Aliexpress 1005006347586608
| 2     | PEM FH-M4-10ZI.           | PEM M4 Stud 10mm                          | Mouser 153-FH-M4-10ZI, eBay
| 2     | Wegertseder 1776-794      | M4 Kontaktscheibe (for grounding)         | Wegertseder 1776-794
| 2     | M4 DIN 6923               | M4 Hex Nut with toothed Flange (gnd.)     | Wegertseder 3995-101
| 3     | _generic_                 | Ring Cable Lug 0.75 mm2 (for grounding)   | Voelkner D28838
| 2     | M3x5 ISO 7380             | M3x5 Flat Head Screw (for power supply)   | Wegertseder 2570-578
| 2     | M3x10 ISO 14581 (TX)      | M3x10 Counter Sunk Screw (for C14 socket) | Wegertseder 4663-108 (alt. ISO 7046 (PZ) 4456-239)
| 2     | M3 DIN 934                | M3 Nut (for C14 socket)                   | Wegertseder 2888-006


## Boards
The PCBs with all SMD components cost about 40€ per console (depending on order volume and shipping option).
Additional components like power supply, connectors, etc. add up to about 100€ per console.

### Line I/O Board Components
BOM for one PCB, needed 1x for whole assembly.
Electrolytic capacitors should have 25 V voltage rating, unless otherwise specified.

| Count | Manufacturer + Art. No.   | Description                       | Distributor Order No.
|-------|---------------------------|-----------------------------------|----------------------
| 1     | Neutrik NCJ6FA-H          | Stage Line Input                  | Voelkner D21915, Thomann 250931
| 1     | Neutrik NC3MAAH           | Mix Line Output                   | Voelkner X39973, Mouser 568-NC3MAAH
| 1     | SPTAF 1/ 4-3,5-EL         | PCB PowerSupply                   | Mouser 651-1862068
| 3     | WE WR-BHD 61201021621     | IDC socket, Interconn. to channel | Mouser 710-61201021621
| 1     | CTS 195-2MST              | DIP switch vertical               | Mouser 774-1952MST
| 1     | Keystone test point 5006  | TEST POINT BLK .063               | Mouser 534-5006
| 1     | Mean Well RT-50C          | Power Suppy                       | Voelkner A246532
| 1     | TC-10475840               | IEC C14 Socket, screwed, M3, 40mm | Voelkner X960872 (alternative. D28684)
| 1     | LM833-N                   | Generic Op-Amp                    | JLC C473907 (usually ordered with PCB assembly)
| 1     | DRV135UA                  | Line Driver                       | JLC C431073 (usually ordered with PCB assembly)


#### Channel Strip Components
BOM for one PCB, needed 3x for whole assembly.
Electrolytic capacitors should have 25 V voltage rating, unless otherwise specified.

| Count | Model or Art. No.         | Description                       | Distributor Order No.
|-------|---------------------------|-----------------------------------|----------------------
|  1    | Neutrik NC3FAAH2          | Microphone Input                  | Voelkner X39703, Mouser 568-NC3FAAH-2
|  1    | Rean NYS 216 or 216G      | Headphone Output                  | Mouser 568-NYS216-U
|  1    | WE WR-BHD 61201021721     | Mix Interconn. to Line I/O, horiz.| Mouser 710-61201021721
|  2    | WE WR-BHD 61200821721     | Mix Interconn. w/ Ch. I/O, horiz. | Mouser 710-61200821721
|  1    | BKL 10120667              | IDC cable 8-pole, 25cm            | Reichelt
|  1    | BKL 10120668              | IDC cable 10-pole, 25cm           | Reichelt
|  1    | Molex 22-28-8024          | Pin header to Mute btn. , horiz.  | Mouser 538-22-28-8024
|  4    | CUI PTN091-V50115K1A      | 50K log. (vert.) Heads. Mix +Gain | Mouser 179-PTN091V50115K1A
|  1    | Alps RK09K1110B1R         | 50K log. (horiz.) Vol.            | Mouser 688-RK09K1110B1R
|  3    | Davies Molding 1106-WA    | Potentiometer Knob f. Mix (star)  | Mouser 5164-1106-WA
|  1    | Davies Molding 1108       | Potentiometer Knob f. Vol. (D)    | Mouser 5164-1108
|  1    | Cliff CL170842CR (red)    | Potentiometer Knob f. Gain (star) | Voelkner D71805
|  1    | APEM MHPS2273             | OnAir Switch                      | Mouser 642-MHPS2273
|  1    | APEM MH15 (alt. U4535)    | On-Air Button yellow cap          | Mouser 642-MH12
|  1    | Adafruit 3430             | Adafruit Arcade button (red)      | Mouser 485-3430
|  3    | Kingbright WP113GDT       | 2x5mm Rectangular LED, green      | Mouser 604-WP113GDT (alternative: 859-LTL-433G)
|  6    | Kingbright WP113YDT       | 2x5mm Rectangular LED, yellow     | Mouser 604-WP113YDT (alternative: 859-LTL-433Y)
|  3    | Kingbright WP113IDT       | 2x5mm Rectangular LED, red        | Mouser 604-WP113IDT (alternative: 859-LTL-433HR)
| 12    | Fischer RAH 504           | 4mm spacer, square                | Reichelt FIS RAH 504
|  1    | Kingbright WP710A10LID    | 3mm diffused LED, red             | Mouser 604-WP710A10LID
|  1    | Fischer MAH 308           | 8mm spacer, 3mm round             | Reichelt FIS MAH 308
|  3    | LM339                     | Quad Diff. Comparators            | JLC C7948 (usually ordered with PCB assembly)
|  1    | LM833-N                   | Generic Op-Amp                    | JLC C473907 (usually ordered with PCB assembly)
|  1    | NE5534                    | Low-noise bipolar Op-Amp          | JLC C9916 (usually ordered with PCB assembly)
|  1    | TL072{C,I,HI}DR           | Low-noise FET Op-Amp              | JLC C67473 (usually ordered with PCB assembly)
|  1    | TPA6111A2                 | Headphone Amp                     | JLC C497472 (usually ordered with PCB assembly)
|  7    | 1N4148                    | Signal Diode SOD-123              | JLC C7420318 (usually ordered with PCB assembly)
|  1    | J113                      | SMD J-FET SOT-23                  | JLC C891686 (usually ordered with PCB assembly)
