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
- expect/ deliver a nominal level of +6dBu (~1.5 V RMS/ 4.3 V (p-p), german TV broadcast standard, 0 dBu = 0.775 V RMS)
- be transformer balanced and galvanically isolated

This results in a signal flow like this: ![](docs/signal-flow.jpg)



## Status

### Tasks
- [x] Requirements collection
- [x] Electrical design draft/ proof of concept (breadboard)
- [x] Proof of concept validation
- [x] First PCB layout (prototyping modules)
- [x] More testing/ validation
- [x] Second PCB layout + casing prototype
    * [x] Channel strip schematic and PCB design
    * [x] Line I/O schematic and PCB design
    * [x] Power supply
- [x] More testing/ validation

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

Components marked as DNP (do not populate) are needed and need to be added.
The mark is just to generate the right BOM for ordering an assembled PBC with all SMD components, but no though-hole parts.


## User Interface
The user interface should enable the interpreters to adjust their microphone gain and headphone mix on their own.
Additionally, a (permanent) on/off switch, as well as a (temporary) mute button should be present.

A possible UI layout might look like this: ![](docs/ui-layout.jpg)

See [hardware-selection.md](hardware-selection.md) for the selection of potentiometers and switches.

### Casing
The casing should be a desk console (angled surface), ideally with space at the front to mount the headset ports (XLR and 6.3 mm jack).
Since it can be quite difficult to drill holes and make the appropriate cutouts on the angled surface, we designed our own housing from bent sheet metal.
See the [mechanical/](mechanical/README.md) directory for additional information.

PCBs are split up by channel and mounting surface, so that dimensional tolerancen between the surfaces are not that critical.
The top plate should have a maximum thickness of 1.5 mm, the front and back can be slightly thicker at 2 mm.
All LEDs need to be mounted with some space to the PCB surface so that they can cover the 9 mm gap to the front plate and still stick through.
A mounting guide can be found at [mechanical/assembly-helpers](mechanical/assembly-helpers/vumeter-leds.scad).



## Notes
A dynamic microphone needs at least 50-60 dB gain in the pre-amp, because a typical signal is at about 1 - 100 uV (-118 to -78 dBu or -120 to -80 dBV).

Line level in professional audio gear is at +4 dBu, which is 1.228 V (RMS).
Because 0 dBu is defined as 1 mW at a load of 600 Ohm, which needs a voltage of 0.77 V.
Increasing the voltage by a factor of 10 is an amplification of 20 dB.
