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
- [ ] ESD protection and galvanic isolation of line inputs and outputs
- [x] VU meter (own PCB)
- [x] VU meter (integrated in front panel PCB)
- [x] Mute and On-Air buttons



## Electrical Design
This chapter contains some notes on the electrical design.
Currently just the sources of the used circuit designs.


### Microphone Input
#### Preamplifier
For the microphone preamp, we are using the NE5534 low-noise opamp with a circuit design from [circuitlib microphone pre-amp](https://www.circuitlib.com/index.php/schematics/product/29-balanced-microphone-preamplifier).

#### Controllable Amplification
In a normal mixer, you would be able to lower the microphone's volume to zero.
But in our case we just need on/ off and some gain range to adjust for different microphones and loudness of different people.

TODO: Integrate the On-Air button with it's LEDs


### Line Input/ Input Module
The line input must not be amplified at all, because loudness control of the headphones is done by the headphone amplifier section.
But the differential line-level signal must be converted to a single-ended signal by the input stage.

The current design uses a LM833N opamp to convert the balanced signal into a single ended signal and has a second LM833N to provide some degree (+- 6 dB) of "factory" adjustment.
The second part of that circuit was taken from the [circuitlib audio mixer tutorial](https://www.circuitlib.com/index.php/tutorials/product/39-how-to-build-an-audio-mixer).

TODO: How to achieve galvanic isolation?


### Summing
Summing is needed in two places: Creating the sum of all microphones (not adjustable, fixed output gain) and for the headphone mix (one input level adjustable).
A simple summing circuit using one operational amplifier is enough for our application, like in [circuitlib audio mixer tutorial](https://www.circuitlib.com/index.php/tutorials/product/39-how-to-build-an-audio-mixer).

The mixer design uses inverting op-amp circuits, because they require less components and signal routing.
Normally an audio mixer should take care of adding signals in-phase, because otherwise two microphones might cancel each other out.
In our case, there are just two types of summing: All microphones for the interpreter unit's line-out and the individual headphone mixes.
Because the stage input is quite independent of the interpreter's microphones, no special phase/ inversion considerations are needed.
And the microphones connected to our unit will experience the same inversions anyways.


### Line Output Driver
Line Output conversion is done by the [DRV134](https://www.ti.com/product/DRV134) IC.

TODO: How to achieve galvanic isolation?


### Headphone Output Driver
The headphone output needs a maximum output power of about 0.1 W and should put the mono signal on both stereo channels of the TRS jack.

For the first draft, we're using one LM386 audio power amplifier even though it has a quite high minimal amplification of factor 20.


### VU Meter
When searching for VU meter circuits, many use the LM3916 LED bar graph driver, which already has the right scaling built in.
But this chip is obsolete and not produced any more, so we designed our own chain of comparators to drive a set of LEDs.



## User Interface
The user interface should enable the interpreters to adjust their microphone gain and headphone mix on their own.
Additionally, a (permanent) on/off switch, as well as a (temporary) mute button should be present.

A possible UI layout might look like this: ![](docs/ui-layout.jpg)


### Potentiometers
We need some single and dual channel logarithmic scale potentiometers, which are matching in size, for:
- top plate interface (all vertical style, threaded collar would be nice):
    * 1 single channel for the input gain (resistance doesn't matter)
    * 2 single and 1 stereo channel for the headphone mix (ideally 50K, b/c 3 will be in parallel)
- front plate next to the headset jacks (horizontal style, threaded collar not needed):
    * 1 single channel for the headphone volume (ideally 50K, b/c that's already tested)

Possible knobs may be:
- (A) Re'an F311/ F313 series (11/ 13 mm diameter) -- 0.40 €/ 0.55 €:  
    Boring: 9.0 mm D-style hole + 0.0 mm nut cover section = 9.0 mm
- (B) Re'an P670 series (12 mm diameter/ 16 mm at bottom) (alt. Davies Molding 1101) -- 0.78 €:  
    Boring: 7.5 mm D-style hole + 4.5 mm nut cover section = 12.0 mm  
    Nut cover: 12.9 mm diameter (M7 nut is 12.5 mm corner to corner)
- (C) Re'an P300 series (11 mm diameter/ 15 mm at bottom):  
    Boring: 9.0 mm D-style hole + 3.0 mm nut cover section = 12.0 mm  
    Nut cover: ? mm diameter (M7 nut is 12.5 mm corner to corner)
- ~~(D) Cliff K87MAR series/ RS Pro 777-73xx: 7.5 mm hole depth + 4.5 mm skirt = 12 mm, inner size of skirt 12 mm (measured)~~  
~~Notes: D-style boring has wrong size (5 mm instead of 4.5 mm flatted)~~

Potentiometers from Alps Alpine seem to have a decent quality in a small package size and quite affordable price.
From their lineup, the RK09K/D, RK11/12/14, RK09L and RK097 series are left considering our requirements (mouser prices without VAT, shortlist marked bold):
- Alps Alpine Series RK09K/D (6 mm D-style (4.5 mm) shaft):
    * vertical (top plate):
        + **single channel: 10K, 15 mm -- RK09K1130AJ3 -- 0.91 €**  
            actual shaft length (dwg. 2): 7.4 mm (6 mm flattened)  
            _matching knobs: A_
        + dual channel: 10K, 15 mm -- RK09K12C0A19 -- 1.23 €  
            actual shaft length (dwg. 10): 7.4 mm (6 mm flattened)  
            _matching knobs: A_
        + **dual channel: 50K, 20 mm -- RK09K12C0A2S -- 1.44 €**  
            actual shaft length (dwg. 10): 12.4 mm (7 mm flattened)  
            _matching knobs: C, B (depending on front plate thickness)_
    * horizontal (front plate):
        * single channel: 10K, 15 mm -- RK09K1110A2S -- 0.67 €  
            actual shaft length (dwg. 1): 7.4 mm (6 mm flattened)  
            _matching knobs: A_
        * **single channel: 50K, 15 mm -- RK09K1110B1R -- 0.67 €**  
            actual shaft length (dwg. 6): 7.4 mm (6 mm flattened)  
            _matching knobs: A_
- Alps Alpine Series RK09L (6 mm D-style (4.5 mm) shaft, collar with M7 thread):  
    * vertical (top plate):
        + **single channel: 10K, 12.5 mm -- RK09L1140A5E -- 1.61 €**  
            actual shaft length (dwg. 2): 7.5 mm (7 mm flattened) + 5 mm thread length  
            _matching knobs: A_
        + **dual channel: 10K, 15 mm -- RK09L12D0A1W -- 1.64 €**  
            actual shaft length (dwg. 4): 10 mm (7 mm flattened) + 7 mm thread length  
            _matching knobs: C, B (depending on front plate thickness)_
        + dual channel: 10K, 20 mm -- RK09L12D0A1T -- 1.64 €  
            actual shaft length (dwg. 4): 15 mm (12 mm flattened) + 7 mm thread length  
            _matching knobs: Unknown, b/c of quite long shaft_
    * horizontal (front plate):
        + **single channel: 10K, 15 mm -- RK09L1120A2S -- 1.62 €**  
            actual shaft length (dwg. 1): 10 mm (7 mm flattened) + 5 mm thread length  
            _matching knobs: C, B (depending on front plate thickness)_
        + single channel: 10K, 20 mm -- RK09L1120A69 -- 1.30 €  
            actual shaft length (dwg. 1): 15 mm (12 mm flattened) + 7 mm thread length  
            _matching knobs: Unknown, b/c of quite long shaft_
        + dual channel: 50K, 15 mm -- RK09L12B0A31 -- 1.78 €  
            actual shaft length (dwg. 3): 10 mm (7 mm flattened) + 5 mm thread length  
            _matching knobs: C, B (depending on front plate thickness)_
- ~~Alps Alpine Series RK11K/12L/14K~~: no suitable options
- ~~Alps Alpine Series RK097 (6 mm D-style (4.5 mm) shaft, collar with M7 thread)~~: Only horizontal style and quite expensive (2.16 €/ 2.96 €)

**Selection**:
- Input gain:
    * RK09K1130AJ3 (single, 10K, 15 mm) + Re'an F311/ F313 (diameter TBD)
    * or RK09K12C0A2S (dual, 50K, 20 mm) + Re'an P670 or similar
- Headphone mix:
    * RK09K12C0A2S (dual, 50K, 20 mm) + Re'an P670
- Headphone volume:
    * RK09K1110B1R (single, 50K, 15 mm) + Re'an F311/ F313 (diameter TBD)


### Switches
The **On-Air** button needs to be a latching DPDT switch, ideally with LED illumination and max. 8 mm height (PCB to front plate), like:
- E-Switch TL2230EEF140, no illumination -- 0.60 €  
    DPDT, PCB mount  
    Height: 7.0 mm + 5.5 mm plunger (2x3 mm cap terminal)  
    Cap: see APEM models
- **APEM MHPS2273 (EU version: PHAP4673), no illumination, no audible click -- 0.41 €**  
    DPDT, PCB mount  
    Height: 7.0 mm + 5.5 mm plunger (2x3 mm cap terminal)  
    Cap: U542x (11.5 mm square, 4 mm height), **U453x (9.4 mm dia., 6.65 mm height) -- 0.64 €**  
    Cap color codes: **2 Black**, 4 Grey, 5 Yellow, 6 Red

The **mute** button needs to be a momentary SPST (normally open) or SPDT push button, like:
- E-Switch TL2230OAF140, no illumination -- 0.53 €  
    DPDT, PCB mount  
    Height: 7.0 mm + 5.5 mm plunger (2x3 mm cap terminal)  
    Cap: see APEM models
- **APEM 1413NC6/ 1415NC6 -- 3.72 €**  
    SPST/ SPDT, front plate snap-in mount, solder lugs  
    Button size: 12 mm square, Color: Red (color code 6)  
    Cap: U542x (11.5 mm square, 4 mm height), **U453x (9.4 mm dia., 6.65 mm height) -- 0.64 €**  
    Cap color codes: 2 Black, 4 Grey, 5 Yellow, 6 Red  
    Depth: 13 mm + 6 mm for contacts = 19 mm
- NKK Switches LP0115C{C,M}KW01-C -- 7.91 €  
    SPDT, front plate bushing/ snap-in mount, solder lugs  
    Button size: 13.6 mm dia., Color: Red (color code C)  
    Depth: 22 mm


### Casing
The casing should be a desk console (angled surface), ideally with space at the front to mount the headset ports (XLR and 6.3 mm jack), like:
- [Bopla ATPH 1865-0250](https://www.bopla.de/gehaeusetechnik/product/alu-topline/gehaeuse-18/atph-1865-0250.html) (front might not have enough space for the connectors)
- Design our own casing to laser cut/ 3D print

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
| 1     | Neutrik NC3MAAH           | Mix Line Output                   | 0.78  | Voelkner X39973
| 1     | PTSM 0,5/ 2-2,5-V THR     | PCB Output                        | 0.50  | Mouser 651-1770953, DigiKey 277-2086-1-ND
| 1     | PTSM 0,5/ 3-2,5-H THR     | PCB PowerSupply                   | 0.70  | Mouser 651-1770898, DigiKey 277-2080-1-ND
| 1     | PTSM 0,5/ 4-2,5-V THR     | PCB Inputs                        | 0.80  | Mouser 651-1770979, DigiKey 277-2088-1-ND
| 1     | Vishay M64Y104            | 100K trim pot: Line input adj.    | 0.83  | Reichelt VIS M64Y104KB40
| 2     | LM833N                    | Generic Op-Amp                    | 0.75  | Mouser 926-LM833N/NOPB, DigiKey 296-44419-5-ND
| 1     | DRV134PA                  | Line Driver                       | 4.75  | Mouser 595-DRV134PA, DigiKey DRV134PA-ND
| 3     | DIP-8 Socket              | for LM833N, DRV134PA              | 0.03  | Reichelt GS 8
| 1     | Cer. Cap. 22pF            | C_Disc_D5.0mm_W2.5mm_P5.00mm      | 0.33  | DigiKey 399-9723-ND, Mouser TODO
| 1     | Cer. Cap. 47pF            | C_Disc_D5.0mm_W2.5mm_P5.00mm      | 0.33  | DigiKey 399-C315C470K5G5TA-ND, Mouser TODO
| 1     | Cer. Cap. 220pF           | C_Disc_D5.0mm_W2.5mm_P5.00mm      | 0.31  | DigiKey 399-9802-ND, Mouser TODO
| 4     | Cer. Cap. 100nF           | C_Disc_D5.0mm_W2.5mm_P5.00mm      | 0.20  | DigiKey 399-4329-ND, Mouser TODO
| 2     | Cer. Cap. 1uF             | C_Disc_D5.0mm_W2.5mm_P5.00mm      |       | (TODO: just use 100 nF or an el. cap.)
| 6     | 10K                       | Metal film resistor               | 0.02  | Average price at 100 pcs
| 5     | 22K                       | Metal film resistor               | 0.02  | Average price at 100 pcs
| 1     | 3.3K                      | Metal film resistor               | 0.02  | Average price at 100 pcs
| 1     | 47K                       | Metal film resistor               | 0.02  | Average price at 100 pcs
|       |                           | **SUM**                           | 13.48 | (1uF calculated as 100nF)


#### Channel Strip Components
BOM for one PCB, needed 3x for whole assembly.
Electrolytic capacitors should have 25 V voltage rating, unless otherwise specified.

| Count | Model or Art. No.         | Description                       | €/ pc.| Distributor Order No.
|-------|---------------------------|-----------------------------------|-------|----------------------
| 1     | Neutrik NC3FAAH2          | Microphone Input                  | 0.93  | Mouser 568-NC3FAAH-2
| 1     | Rean NYS 216 or 216G      | Headphone Output                  | 0.51  | Mouser 568-NYS216-U
| 1     | PTSM 0,5/ 2-2,5-H THR     | PCB Output                        | 0.48  | DigiKey 277-2079-1-ND, Mouser 651-1770885
| 2     | PTSM 0,5/ 3-2,5-H THR     | PCB Interconnect                  | 0.70  | DigiKey 277-2080-1-ND, Mouser 651-1770898
| 2     | PTSM 0,5/ 4-2,5-H THR     | PCB PowerSupply                   | 0.80  | DigiKey 277-2081-1-ND, Mouser 651-1770908
| 1     | PTSM 0,5/ 4-2,5-H THR     | PCB Inputs                        | 0.80  | DigiKey 277-2081-1-ND, Mouser 651-1770908
| 3     | Alps RK09K12C0A2S         | 50K log. (dual, vert.) Heads. Mix | 1.44  | Mouser 688-RK09K12C0A2S
| 3     | Davies Molding 1101       | Potentiometer Knob f. Mix         | 0.65  | Mouser 5164-1101, DigiKey 1722-1393-ND
| 1     | Alps RK09K1130AJ3         | 10K log. (single, vert.) Gain     | 0.91  | Mouser 688-RK09K1130AJ3
| 1     | Re'an F311                | Potentiometer Knob f. Gain        | 0.35  | Voelkner D18429
| 1     | Alps RK09K1110B1R         | 50K log. (single, horiz.) Vol.    | 0.67  | Mouser 688-RK09K1110B1R
| 1     | Re'an F311                | Potentiometer Knob f. Vol.        | 0.35  | Voelkner D18429
| 1     | Vishay M64Y503            | 50K trim pot: VU meter adj.       | 0.83  | Reichelt VIS M64Y503KB40
| 1     | APEM MHPS2273             | OnAir Switch                      | 0.41  | Mouser 642-MHPS2273, DigiKey 679-4050-ND
| 1     | APEM MH15 (alt. U4535)    | On-Air Button yellow cap          | 0.17  | Mouser 642-MH12
| 1     | APEM 1415NC6              | Mute Button (red cap, snap-in)    | 3.87  | Mouser 642-1415NC6, DigiKey 679-3946-ND
| 1     | NE5534                    | Low-noise Op-Amp                  | 0.46  | Reichelt NE 5534 DIP
| 1     | LM386N-4                  | Audio Power Amp                   | 0.80  | Reichelt LM 386N-4 TEX
| 2     | LM833N                    | Generic Op-Amp                    | 0.75  | DigiKey 296-44419-5-ND, Mouser 926-LM833N/NOPB
| 4     | DIP-8 Socket              | for NE5534, LM386N-4, LM833N      | 0.03  | Reichelt GS 8
| 3     | LM339                     | Quad Diff. Comparators            | 0.26  | Reichelt LM 339 DIL, Mouser 595-LM339N, DigiKey 296-1393-5-ND
| 1     | DIP-14 Socket             | for LM339                         | 0.04  | Reichelt GS 14
| 1     | Cer. Cap. 22pF            | C_Disc_D5.0mm_W2.5mm_P5.00mm      | 0.33  | DigiKey 399-9723-ND, Mouser TODO
| 1     | Cer. Cap. 47nF            | C_Disc_D5.0mm_W2.5mm_P5.00mm      | 0.34  | DigiKey 399-14064-ND, Mouser TODO
| 11    | Cer. Cap. 100nF           | C_Disc_D5.0mm_W2.5mm_P5.00mm      | 0.20  | DigiKey 399-4329-ND, Mouser TODO
| 3     | El. Cap. 1uF              | CP_Radial_D5.0mm_P2.00mm          | TODO  | TODO
| 2     | El. Cap. 1uF/ 63V, lowESR | CP_Radial_D5.0mm_P2.00mm          | TODO  | TODO
| 1     | El. Cap. 47uF             | CP_Radial_D6.3mm_P2.50mm          | TODO  | TODO
| 4     | El. Cap. 100uF            | CP_Radial_D6.3mm_P2.50mm          | TODO  | TODO
| 1     | El. Cap. 100uF/ 63V       | CP_Radial_D10.0mm_P5.00mm         | TODO  | TODO
| 1     | El. Cap. 220uF, lowESR    | CP_Radial_D6.3mm_P2.50mm          | TODO  | TODO
| 3     | Vishay TLHG5405           | LED 5mm, green                    | 0.14  | Reichelt VIS TLHG 5405
| 4     | Vishay TLHY5405           | LED 5mm, yellow                   | 0.21  | Reichelt VIS TLHY 5405
| 5     | Vishay TLHR5405           | LED 5mm, red                      | 0.16  | Reichelt VIS TLHR 5405
| 1     | Vishay TLHR5405           | LED 5mm, On-Air (red)             | 0.16  | Reichelt VIS TLHR 5405
| 6     | 1N4148                    | Signal Diode                      | 0.02  | Reichelt 1N 4148, DigiKey 1N4148FS-ND, Mouser 512-1N4148
| 5     | 22K                       | Metal film resistor               | 0.02  | Average price at 100 pcs
| 2     | 330K 1%                   | Metal film resistor               | 0.02  | Average price at 100 pcs
| 1     | 56R                       | Metal film resistor               | 0.02  | Average price at 100 pcs
| 1     | 27K 1%                    | Metal film resistor               | 0.02  | Average price at 100 pcs
| 1     | 330R                      | Metal film resistor               | 0.02  | Average price at 100 pcs
| 2     | 680R 1%                   | Metal film resistor               | 0.02  | Average price at 100 pcs
| 1     | 820R                      | Metal film resistor               | 0.02  | Average price at 100 pcs
| 1     | 330K                      | Metal film resistor               | 0.02  | Average price at 100 pcs
| 2     | 1K 1%                     | Metal film resistor               | 0.02  | Average price at 100 pcs
| 1     | 12R                       | Metal film resistor               | 0.02  | Average price at 100 pcs
| 1     | 2.2K                      | Metal film resistor               | 0.02  | Average price at 100 pcs
| 2     | 3.9K                      | Metal film resistor               | 0.02  | Average price at 100 pcs
| 2     | 1K                        | Metal film resistor               | 0.02  | Average price at 100 pcs
| 2     | 68R                       | Metal film resistor               | 0.02  | Average price at 100 pcs
| 1     | 39R                       | Metal film resistor               | 0.02  | Average price at 100 pcs
| 1     | 100R                      | Metal film resistor               | 0.02  | Average price at 100 pcs
| 1     | 150R                      | Metal film resistor               | 0.02  | Average price at 100 pcs
| 1     | 270R                      | Metal film resistor               | 0.02  | Average price at 100 pcs
| 14    | 390R                      | Metal film resistor               | 0.02  | Average price at 100 pcs
| 1     | 680R                      | Metal film resistor               | 0.02  | Average price at 100 pcs
| 1     | 1.5K                      | Metal film resistor               | 0.02  | Average price at 100 pcs
| 2     | 2.7K                      | Metal film resistor               | 0.02  | Average price at 100 pcs
| 1     | 100K                      | Metal film resistor               | 0.02  | Average price at 100 pcs
|       |                           | **SUM**                           | 29.40 | (without CP for now)
