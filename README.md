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
- [ ] Electrical design draft/ proof of concept (breadboard)
- [ ] Proof of concept validation
- [ ] First PCB layout
- [ ] More testing/ validation

Help is always appreciated!

### Implemented Requirements
- [x] Microphone input
- [x] Line input
- [x] Microphone summing and line output driver
- [x] Adjustable headphone mix and output volume
- [ ] ESD protection and galvanic isolation of line inputs and outputs
- [ ] VU meter
- [ ] Mute and On-Air buttons


## Electrical Design
This chapter contains some notes on the electrical design.
Currently just the sources of the used circuit designs.


### Sources and Design Considerations

#### Microphone Input
##### Preamplifier
For the microphone preamp, we are using the NE5534 low-noise opamp with a circuit design from [circuitlib microphone pre-amp](https://www.circuitlib.com/index.php/schematics/product/29-balanced-microphone-preamplifier).

##### Controllable Amplification
In a normal mixer, you would be able to lower the microphone's volume to zero.
But in our case we just need on/ off and some gain range to adjust for different microphones and loudness of different people.

TODO: Integrate the On-Air button with it's LEDs

For long-lasting endurance of the microphone level potentiometer, we're using one with conductive plastic as resistor element (Bourns model 91).

#### Line Input/ Input Module
The line input must not be amplified at all, because loudness control of the headphones is done by the headphone amplifier section.
But the differential line-level signal must be converted to a single-ended signal by the input stage.

The current design uses a LM833N opamp to convert the balanced signal into a single ended signal and has a second LM833N to provide some degree (+- 6 dB) of "factory" adjustment.
The second part of that circuit was taken from the [circuitlib audio mixer tutorial](https://www.circuitlib.com/index.php/tutorials/product/39-how-to-build-an-audio-mixer).

TODO: How to achieve galvanic isolation?

TODO: Use https://www.ti.com/product/INA134 for input conversion?

#### Summing
Summing is needed in two places: Creating the sum of all microphones (not adjustable, fixed output gain) and for the headphone mix (one input level adjustable).
A simple summing circuit using one operational amplifier is enough for our application, like in [circuitlib audio mixer tutorial](https://www.circuitlib.com/index.php/tutorials/product/39-how-to-build-an-audio-mixer).

#### Line Output Driver
TODO: Either use https://www.ti.com/product/DRV134 or http://www.thatcorp.com/1600-series_Balanced_Line_Driver_ICs.shtml.

TODO: How to achieve galvanic isolation?

#### Headphone Output Driver
The headphone output needs a maximum output power of about 0.1 W and should put the mono signal on both stereo channels of the TRS jack.

For the first draft, we're using one LM386 audio power amplifier even though it has a quite high minimal amplification of factor 20.

#### VU Meter
Because the LM3916 LED bar graph driver is obsolete, we either have to re-create it's function with some comperators or have to use a microcontroller.



## Notes
A dynamic microphone needs at least 50-60 dB gain in the pre-amp, because a typical signal is at about 1 - 100 uV (-118 to -78 dBu or -120 to -80 dBV).

Line level in professional audio gear is at +4 dBu, which is 1.228 V (RMS).
Because 0 dBu is defined as 1 mW at a load of 600 Ohm, which needs a voltage of 0.77 V.
Increasing the voltage by a factor of 10 is an amplification of 20 dB.



## BoM
Approximate prices in Euro.

Connectors and Buttons (User Interface)

| Count | Art. No.           | Description      | Price |
|-------|--------------------|------------------|-------|
| 1     | Neutrik NCJ 6 FAH  | Line Input       | 1,27  |
| 1     | Neutrik NC3 FD-LX  | Microphone Input | 3,44  |
| 1     | Neutrik NJ3 FP-6-C | Headphone Output | 5,40  |
| 1     | Neutrik NC3 MD-LX  | Line Output      | 3,22  |
| 1     | Neutrik NAC3 MPA-1 | Main Power Input | 3,33  |

Sub-Components

| Count | Art. No.           | Description      | Price  |
|-------|--------------------|------------------|--------|
| 1     | Traco Power TXL 035-1515D or TOP 60533 | Power Supply     | ~48,00 |

PCB Components: TODO when schematic is finished
