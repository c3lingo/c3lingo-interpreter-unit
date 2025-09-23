# Bill of Materials

List of major components (resistors and capacitors are left out).

All prices without VAT unless otherwise noted and without discount for higher order volume.

## Power Supply

When 48V phantom power is not urgently needed, just use a Mean Well RT-50C power supply to provide +15V, -15V and +5V.
Otherwise a way to create clean 48V from one of these power rails is needed, but we want to use dynamic microphones anyways.

## Housing
All components fit in the off-the-shelf Hammond Manufacturing 1456PH3 housing.
But drilling and routing the holes in already bent metal sheets may be difficult


### Custom Housing
The Design is based on the Hammond Manufacturing 1456PH3 with a reduced width and increased hight of the Channel I/O Section

| Count | Manufacturer + Art. No.   | Description                       | €/ pc.| Distributor Order No.
|-------|---------------------------|-----------------------------------|-------|----------------------
| 1     | Housing Shell             | Aluminium Sheet 1.5mm             | ??    | 
| 1     | Housing Bottom            | Aluminium Sheet 2mm               | ??    | 
| 4     | Self Tapping Screw        | ISO 14585-F ST 2.9 x 9.5 TX       | 0.07  | Wegertseder 4671-006, Würth 421012995
| 4     | Rubber Feet 14x11x9mm D3  |                                   | 0.12  | Aliexpress 1005006347586608


## Boards

### Line I/O Board Components
BOM for one PCB, needed 1x for whole assembly.
Electrolytic capacitors should have 25 V voltage rating, unless otherwise specified.

| Count | Manufacturer + Art. No.   | Description                       | €/ pc.| Distributor Order No.
|-------|---------------------------|-----------------------------------|-------|----------------------
| 1     | Neutrik NCJ6FA-H          | Stage Line Input                  | 1.70  | Voelkner D21915, Thomann 250931
| 1     | Neutrik NC3MAAH           | Mix Line Output                   | 1.00  | Voelkner X39973, Mouser 568-NC3MAAH
| 1     | SPTAF 1/ 4-3,5-EL         | PCB PowerSupply                   | 1.26  | Mouser 651-1862068
| 3     | WE WR-BHD 61201021621     | IDC socket, Interconn. to channel | 0.37  | Mouser 710-61201021621
| 1     | CTS 195-2MST              | DIP switch vertical               | 0.47  | Mouser 774-1952MST
| 1     | Keystone test point 5006  | TEST POINT BLK .063               | 0.32  | Mouser 534-5006
| 1     | LM833-N                   | Generic Op-Amp                    | PCBA  | JLC C473907
| 1     | DRV135UA                  | Line Driver                       | PCBA  | JLC C431073
| 1     | Mean Well RT-50C          | Power Suppy                       | 18.50 | Voelkner A246532
| 1     | TC-10475840               | IEC C14 Socket, screwed, M3, 40mm | 1.50  | Voelkner X960872 (alternative. D28684)


#### Channel Strip Components
BOM for one PCB, needed 3x for whole assembly.
Electrolytic capacitors should have 25 V voltage rating, unless otherwise specified.

| Count | Model or Art. No.         | Description                       | €/ pc.| Distributor Order No.
|-------|---------------------------|-----------------------------------|-------|----------------------
| 1     | Neutrik NC3FAAH2          | Microphone Input                  | 1.20  | Voelkner X39703, Mouser 568-NC3FAAH-2
| 1     | Rean NYS 216 or 216G      | Headphone Output                  | 0.64  | Mouser 568-NYS216-U
| 1     | WE WR-BHD 61201021721     | Mix Interconn. to Line I/O, horiz.| 0.49  | Mouser 710-61201021721
| 1     | WE WR-BHD 61200821721     | Mix Interconn. to Ch. I/O, horiz. | 0.89  | Mouser 710-61200821721
| 1     | WE WR-BHD 61200821621     | I/O Interconn. to mixer, vert.    | 0.83  | Mouser 710-61200821621
| 1     | BKL 10120667              | IDC cable 8-pole, 25cm            | 2.20  | Reichelt
| 1     | BKL 10120668              | IDC cable 10-pole, 25cm           | 2.25  | Reichelt
| 1     | Molex 22-28-8024          | Pin header to Mute btn. , horiz.  | 0.09  | Mouser 538-22-28-8024
| 4     | CUI PTN091-V50115K1A      | 50K log. (vert.) Heads. Mix +Gain | 1.64  | Mouser 179-PTN091V50115K1A
| 1     | Alps RK09K1110B1R         | 50K log. (horiz.) Vol.            | 0.67  | Mouser 688-RK09K1110B1R
| 3     | Davies Molding 1106-A/WA  | Potentiometer Knob f. Mix         | 0.88  | Mouser 5164-1106-A
| 2     | Re'an F311                | Potentiometer Knob f. Vol.+Gain   | 0.35  | Voelkner D18429
| 1     | APEM MHPS2273             | OnAir Switch                      | 0.41  | Mouser 642-MHPS2273
| 1     | APEM MH15 (alt. U4535)    | On-Air Button yellow cap          | 0.17  | Mouser 642-MH12
| 1     | Adafruit 3488 (alt. 3489) | Adafruit Arcade button.           | 2.15  | Mouser 485-3488 (yellow), 485-3489 (red)
| 1     | Keystone test point 5006  | TEST POINT BLK .063               | 0.32  | Mouser 534-5006
| 3     | LM339                     | Quad Diff. Comparators            | PCBA  | JLC C7948
| 1     | LM833-N                   | Generic Op-Amp                    | PCBA  | JLC C473907
| 1     | NE5534                    | Low-noise bipolar Op-Amp          | PCBA  | JLC C9916
| 1     | TL072{C,I,HI}DR           | Low-noise FET Op-Amp              | PCBA  | JLC C67473
| 1     | TPA6111A2                 | Headphone Amp                     | PCBA  | JLC C497472
| 3     | Kingbright WP113GDT       | 2x5mm Rectangular LED, green      | 0.20  | Mouser 604-WP113GDT (alternative: 859-LTL-433G)
| 6     | Kingbright WP113YDT       | 2x5mm Rectangular LED, yellow     | 0.17  | Mouser 604-WP113YDT (alternative: 859-LTL-433Y)
| 3     | Kingbright WP113IDT       | 2x5mm Rectangular LED, red        | 0.22  | Mouser 604-WP113IDT (alternative: 859-LTL-433HR)
| 12    | Fischer RAH 504           | 4mm spacer, square                | 0.30  | Reichelt FIS RAH 504
| 1     | Kingbright WP710A10LID    | 3mm diffused LED, red             | 0.15  | Mouser 604-WP710A10LID
| 1     | Fischer MAH 307           | 7mm spacer, 3mm round             | 0.07  | Reichelt FIS MAH 307
| 7     | 1N4148                    | Signal Diode SOD-123              | PCBA  | JLC C7420318
| 1     | J113                      | SMD J-FET SOT-23                  | PCBA  | JLC C891686
