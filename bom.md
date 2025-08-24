# Bill of Materials

List of major components (resistors and capacitors are left out).

All prices without VAT unless otherwise noted and without discount for higher order volume.

## Housing and Power Supply

TODO

## Boards

### Line I/O Board Components
BOM for one PCB, needed 1x for whole assembly.
Electrolytic capacitors should have 25 V voltage rating, unless otherwise specified.

| Count | Manufacturer + Art. No.   | Description                       | €/ pc.| Distributor Order No.
|-------|---------------------------|-----------------------------------|-------|----------------------
| 1     | Neutrik NCJ6FA-H          | Stage Line Input                  | 1.42  | Voelkner D21915 Thomann 250931
| 1     | Neutrik NC3MAAH           | Mix Line Output                   | 1.25  | Voelkner X39973, Mouser 568-NC3MAAH
| 1     | PTSM 0,5/ 3-2,5-V THR     | PCB PowerSupply                   | 0.70  | Mouser 651-1770966
| 3     | PTSM 0,5/ 5-2,5-V THR     | Interconnect to channel           | 1.02  | Mouser 651-1770982
| 1     | CTS 195-2MST              | DIP switch vertical               | 0.47  | Mouser 774-1952MST
| 1     | Keystone test point 5006  | TEST POINT BLK .063               | 0.32  | Mouser 534-5006
| 2     | LM833-N                   | Generic Op-Amp                    | PCBA  | JLC C473907
| 1     | DRV135UA                  | Line Driver                       | PCBA  | JLC C431073


#### Channel Strip Components
BOM for one PCB, needed 3x for whole assembly.
Electrolytic capacitors should have 25 V voltage rating, unless otherwise specified.

| Count | Model or Art. No.         | Description                       | €/ pc.| Distributor Order No.
|-------|---------------------------|-----------------------------------|-------|----------------------
| 1     | Neutrik NC3FAAH2          | Microphone Input                  | 1.18  | Mouser 568-NC3FAAH-2
| 1     | Rean NYS 216 or 216G      | Headphone Output                  | 0.64  | Mouser 568-NYS216-U
| 2     | PTSM 0,5/ 3-2,5-H THR     | PCB Interconnect (main board)     | 0.70  | Mouser 651-1770898
| 1     | PTSM 0,5/ 4-2,5-H THR     | PCB PowerSupply (main board)      | 0.75  | Mouser 651-1770908
| 1     | PTSM 0,5/ 5-2,5-H THR     | Interconnect to Line I/O          | 0.86  | Mouser 651-1770911
| 1     | PTSM 0,5/ 3-2,5-V THR     | PCB Interconnect (I/O board)      | 0.70  | Mouser 651-1770966
| 1     | PTSM 0,5/ 5-2,5-V THR     | PCB PowerSupply (I/O board)       | 1.02  | Mouser 651-1770982
| 4     | CUI PTN091-V50115K1A      | 50K log. (vert.) Heads. Mix +Gain | 1.64  | Mouser 179-PTN091V50115K1A
| 1     | Alps RK09K1110B1R         | 50K log. (horiz.) Vol.            | 0.67  | Mouser 688-RK09K1110B1R
| 3     | Davies Molding 1106-A/WA  | Potentiometer Knob f. Mix         | 0.88  | Mouser 5164-1106-A
| 2     | Re'an F311                | Potentiometer Knob f. Vol.+Gain   | 0.35  | Voelkner D18429
| 1     | APEM MHPS2273             | OnAir Switch                      | 0.41  | Mouser 642-MHPS2273
| 1     | APEM MH15 (alt. U4535)    | On-Air Button yellow cap          | 0.17  | Mouser 642-MH12
| 1     | APEM 1415NC6              | Mute Button (red cap, snap-in)    | 3.87  | Mouser 642-1415NC6
| 1     | Keystone test point 5006  | TEST POINT BLK .063               | 0.32  | Mouser 534-5006
| 1     | 2.54mm pin header /w jmp  | Phantom power disconnect          | TODO  | TODO
| 3     | LM339                     | Quad Diff. Comparators            | PCBA  | JLC C7948
| 1     | LM833-N                   | Generic Op-Amp                    | PCBA  | JLC C473907
| 1     | NE5534                    | Low-noise bipolar Op-Amp          | PCBA  | JLC C9916
| 1     | TL072{C,I,HI}DR           | Low-noise FET Op-Amp              | PCBA  | JLC C67473
| 1     | TPA6111A2                 | Headphone Amp                     | 0.80  | JLC C497472
| 3     | Kingbright WP113GDT       | 2x5mm Rectangular LED, green      | 0.20  | Mouser 604-WP113GDT (alternative: 859-LTL-433G)
| 6     | Kingbright WP113YDT       | 2x5mm Rectangular LED, yellow     | 0.17  | Mouser 604-WP113YDT (alternative: 859-LTL-433Y)
| 3     | Kingbright WP113IDT       | 2x5mm Rectangular LED, red        | 0.22  | Mouser 604-WP113IDT (alternative: 859-LTL-433HR)
| 1     | Generic SMD LED           | SMD LED 0805, red                 | PCBA  | JLC C84256
| 7     | 1N4148                    | Signal Diode SOD-123              | PCBA  | JLC C7420318
| 1     | J113                      | SMD J-FET SOT-23                  | PCBA  | JLC C891686
