# Conference Interpreter Unit
[c3lingo.org](https://c3lingo.org) is doing the great job of translating many talks of the Chaos Communication Congress and other CCC-related events to multiple languages.
But the required hardware for simultaneous translation is quite expensive to rent, even if it's "just" a specialized analog audio mixer.

So the idea was born to design an easy to use hardware with the special requirements of our interpreters in mind.



## Requirements
The hardware unit should deliver the native audio (stage/ hall mix) to the interpreter's headset and provide a sum of all interpreter's microphone to the input of the video streaming/ recording chain.
Mixing of the final translated audio (ducking the native audio with the translation) will be done as part of the streaming/ recording chain, so the interpreter unit should just provide the sum of all microphones.

Normally just 2 interpreters will provide one translation, but demanding talks might require 3 people.
So either 3 headphone inputs/ outputs should be provided or it must be possible to daisy-chain multiple units.

The user interface of the unit should be as simple, as possible to decrease the risk of mis-configuration.
This means, that no compressor and equalizer will be added in the input group.

General requirements:
- Line input of stage/ hall mix (native language) (XLR/ 6.3 mm balanced jack combo connector)
- 3x Microphone input (XLR) (at first just dynamic microphones)
    * VU-Meter for each input channel. (Perhaps with special color scheme: too quiet, good, too loud, clipping)
    * Fader/ Potentiometer for gain control
    * On-Air switch (on/ off position, with state LED)
    * Temporary mute button (momentary switch)
- 3x Headphone output (6.3 mm mono/ stereo (2x mono) jack)
    * Should output mix of native audio, own microphone and other translator's microphone
    * Potentiometer for output volume
    * Potentiometer for volume of own microphone in the mix
    * Potentiometer for volume of other two microphones in the mix
- Outputs:
    * Sum of all translators (XLR/ 6.3 mm balanced jack combo connector)

All inputs (besides the microphones) and outputs should:
- expect/ deliver a nominal level of +6dBu (german TV broadcast standard, 0 dBu = 0,775 Veff)
- be transformer balanced and galvanically isolated

This results in a signal flow like this: ![](docs/signal-flow.jpg)



## Status

### Tasks
- [x] Requirements collection
- [x] Electrical design draft/ proof of concept (breadboard)
- [x] Proof of concept validation
- [x] First PCB layout (prototyping modules)
- [x] More testing/ validation
- [ ] Second PCB layout + casing prototype
    * [x] Channel strip schematic and PCB design
    * [x] Line I/O schematic and PCB design
    * [ ] Power supply
- [ ] More testing/ validation

Help is always appreciated!

### Implemented Requirements
- [x] Microphone input
- [x] Line input
- [x] Microphone summing and line output driver
- [x] Adjustable headphone mix and output volume
- [ ] ESD protection of line inputs and outputs
- [x] VU meter (own PCB)
- [x] VU meter (integrated in front panel PCB)
- [x] Mute and On-Air buttons



## Electrical Design
See [electrical-design.md](electrical-design.md).


## User Interface
The user interface should enable the interpreters to adjust their microphone gain and headphone mix on their own.
Additionally, a (permanent) on/off switch, as well as a (temporary) mute button should be present.

A possible UI layout might look like this: ![](docs/ui-layout.jpg)

See [hardware-selection.md](hardware-selection.md) for the selection of potentiometers and switches.

### Casing
The casing should be a desk console (angled surface), ideally with space at the front to mount the headset ports (XLR and 6.3 mm jack), like [Bopla Alu-Topline](https://www.bopla.de/gehaeusetechnik/alu-topline) (but they don't have enough space for an XLR connector at the front).

The electrical design consists of three identical channel strips, a line I/O board and a power supply.
Each channel strip is separated in two boards, one for the top plate with the VU meter and main controls and one for the front panel with the headset jacks and headphone volume knob.

The distance between top plate and PCB is 7 mm (determined by the potentiometers and on-air switch), which should also be suitable for standard 5 mm LEDs.
Connectors and larger components will be mounted on the back side, so enough space behind the PCB is needed.
The top plate should not exceed 2 mm thickness because of the potentiometer knobs, 1 to 1.5 mm would be ideal.

The I/O boards (headphone and line signals) will just have components on the top side and might be steady enough by the XLR and 6.3 mm jack connectors.
The plate thickness should not exceed 2.5 mm.



## Notes
A dynamic microphone needs at least 50-60 dB gain in the pre-amp, because a typical signal is at about 1 - 100 uV (-118 to -78 dBu or -120 to -80 dBV).

Line level in professional audio gear is at +4 dBu, which is 1.228 V (RMS).
Because 0 dBu is defined as 1 mW at a load of 600 Ohm, which needs a voltage of 0.77 V.
Increasing the voltage by a factor of 10 is an amplification of 20 dB.



## BoM
All prices without VAT and for one piece unless otherwise noted, even if the BOM already asks for more.
So it's expected to get lower when ordering a full set for multiple units.

#### Line I/O Board Components
BOM for one PCB, needed 1x for whole assembly.
Electrolytic capacitors should have 25 V voltage rating, unless otherwise specified.

| Count | Manufacturer + Art. No.   | Description                       | €/ pc.| Distributor Order No.
|-------|---------------------------|-----------------------------------|-------|----------------------
| 1     | Neutrik NCJ6FA-H          | Stage Line Input                  | 1.10  | Thomann 250931
| 1     | Neutrik NC3MAAH           | Mix Line Output                   | 0.78  | Voelkner X39973, Mouser 568-NC3MAAH
| 1     | PTSM 0,5/ 3-2,5-V THR     | PCB PowerSupply                   | TODO  | TODO
| 3     | PTSM 0,5/ 5-2,5-V THR     | Interconnect to channel           | TODO  | TODO
| 1     | Bourns PV36Y104C01B00     | 100K trim pot: Line input adj.    | 1.20  | Mouser/ DigiKey, alt. Reichelt VIS M64Y104KB40
| 2     | LM833-N                   | Generic Op-Amp                    |       | JLC PCB
| 1     | DRV135UA                  | Line Driver                       |       | JLC PCB
| 1     | Cer. Cap. 22pF            |                                   |       | JLC PCB
| 1     | Cer. Cap. 47pF            |                                   |       | JLC PCB
| 1     | Cer. Cap. 220pF           |                                   |       | JLC PCB
| 6     | Cer. Cap. 100nF           |                                   |       | JLC PCB
| 2     | El. Cap. 10uF             |                                   |       | JLC PCB
| 1     | Resistor 3.3K             |                                   |       | JLC PCB
| 6     | Resistor 10K              |                                   |       | JLC PCB
| 5     | Resistor 22K              |                                   |       | JLC PCB
| 1     | Resistor 47K              |                                   |       | JLC PCB
|       |                           | **SUM**                           | TODO  |


#### Channel Strip Components
BOM for one PCB, needed 3x for whole assembly.
Electrolytic capacitors should have 25 V voltage rating, unless otherwise specified.

| Count | Model or Art. No.         | Description                       | €/ pc.| Distributor Order No.
|-------|---------------------------|-----------------------------------|-------|----------------------
| 1     | Neutrik NC3FAAH2          | Microphone Input                  | 0.93  | Mouser 568-NC3FAAH-2
| 1     | Rean NYS 216 or 216G      | Headphone Output                  | 0.51  | Mouser 568-NYS216-U
| 2     | PTSM 0,5/ 3-2,5-H THR     | PCB Interconnect (main board)     | 0.70  | DigiKey 277-2080-1-ND, Mouser 651-1770898
| 1     | PTSM 0,5/ 4-2,5-H THR     | PCB PowerSupply (main board)      | 0.70  | DigiKey 277-2080-1-ND, Mouser 651-1770898
| 1     | PTSM 0,5/ 5-2,5-H THR     | Interconnect to Line I/O          | TODO  | TODO
| 1     | PTSM 0,5/ 3-2,5-V THR     | PCB Interconnect (I/O board)      | TODO  | TODO
| 1     | PTSM 0,5/ 5-2,5-V THR     | PCB PowerSupply (I/O board)       | TODO  | TODO
| 3     | Alps RK09K12C0A2S         | 50K log. (dual, vert.) Heads. Mix | 1.44  | Mouser 688-RK09K12C0A2S
| 3     | Davies Molding 1101       | Potentiometer Knob f. Mix         | 0.65  | Mouser 5164-1101, DigiKey 1722-1393-ND
| 1     | Alps RK09K1130AJ3         | 10K log. (single, vert.) Gain     | 0.91  | Mouser 688-RK09K1130AJ3
| 1     | Re'an F311                | Potentiometer Knob f. Gain        | 0.35  | Voelkner D18429
| 1     | Alps RK09K1110B1R         | 50K log. (single, horiz.) Vol.    | 0.67  | Mouser 688-RK09K1110B1R
| 1     | Re'an F311                | Potentiometer Knob f. Vol.        | 0.35  | Voelkner D18429
| 1     | APEM MHPS2273             | OnAir Switch                      | 0.41  | Mouser 642-MHPS2273, DigiKey 679-4050-ND
| 1     | APEM MH15 (alt. U4535)    | On-Air Button yellow cap          | 0.17  | Mouser 642-MH12
| 1     | APEM 1415NC6              | Mute Button (red cap, snap-in)    | 3.87  | Mouser 642-1415NC6, DigiKey 679-3946-ND
| 1     | 2.54mm pin header /w jmp  | Phantom power disconnect          | TODO  | TODO
| 1     | NE5534                    | Low-noise Op-Amp                  |       | JLC PCB
| 1     | TPA6111A2                 | Headphone Amp                     | 0.80  | Mouser TODO
| 2     | LM833-N                   | Generic Op-Amp                    |       | JLC PCB
| 3     | LM339                     | Quad Diff. Comparators            |       | JLC PCB
| 1     | Cer. Cap. 22pF            | SMD 0603                          |       | JLC PCB
| 1     | Cer. Cap. 10nF            | SMD 0603                          |       | JLC PCB
| 7     | Cer. Cap. 100nF           | SMD 0603                          |       | JLC PCB
| 3     | Cer. Cap. 100nF, lowESR   | SMD 0603                          |       | JLC PCB
| 6     | El. Cap. 1uF              | SMD C_Elec_4x5.8                  |       | JLC PCB
| 2     | El. Cap. 68uF, lowESR     | SMD C_Elec_6.3x5.8                |       | JLC PCB
| 2     | El. Cap. 100uF            | SMD C_Elec_6.3x7.7                |       | JLC PCB
| 3     | Generic SMD LED           | SMD LED 0805, green               |       | JLC PCB
| 4     | Generic SMD LED           | SMD LED 0805, yellow              |       | JLC PCB
| 6     | Generic SMD LED           | SMD LED 0805, red                 |       | JLC PCB
| 6     | 1N4148                    | Signal Diode SOD-123              |       | JLC PCB
| 1     | Resistor 39R              | SMD resistor                      |       | JLC PCB
| 1     | Resistor 56R              | SMD resistor                      |       | JLC PCB
| 2     | Resistor 68R              | SMD resistor                      |       | JLC PCB
| 1     | Resistor 100R             | SMD resistor                      |       | JLC PCB
| 3     | Resistor 110R             | SMD resistor                      |       | JLC PCB
| 11    | Resistor 150R             | SMD resistor                      |       | JLC PCB
| 1     | Resistor 270R             | SMD resistor                      |       | JLC PCB
| 1     | Resistor 330R             | SMD resistor                      |       | JLC PCB
| 1     | Resistor 390R             | SMD resistor                      |       | JLC PCB
| 1     | Resistor 680R             | SMD resistor                      |       | JLC PCB
| 4     | Resistor 1K               | SMD resistor                      |       | JLC PCB
| 1     | Resistor 1.5K             | SMD resistor                      |       | JLC PCB
| 2     | Resistor 2.7K             | SMD resistor                      |       | JLC PCB
| 1     | Resistor 3.9K             | SMD resistor                      |       | JLC PCB
| 2     | Resistor 6.8K             | SMD resistor                      |       | JLC PCB
| 2     | Resistor 10k              | SMD resistor                      |       | JLC PCB
| 1     | Resistor 12K              | SMD resistor                      |       | JLC PCB
| 5     | Resistor 22K              | SMD resistor                      |       | JLC PCB
| 1     | Resistor 27K              | SMD resistor                      |       | JLC PCB
| 2     | Resistor 39k              | SMD resistor                      |       | JLC PCB
| 2     | Resistor 330K             | SMD resistor                      |       | JLC PCB
|       |                           | **SUM**                           | TODO  |
