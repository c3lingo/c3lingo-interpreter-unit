# c3lingo Unit -- Electrical Design
This file contains some notes on the electrical design.
Currently just the sources of the used circuit designs.


## Microphone Input
### Preamplifier
For the microphone preamp, we are using the NE5534 low-noise opamp with a circuit design from circuitlib.com (29-balanced-microphone-preamplifier).

### Controllable Amplification
In a normal mixer, you would be able to lower the microphone's volume to zero.
But in our case we just need on/ off and some gain range to adjust for different microphones and loudness of different people.


## Line Input/ Input Module
The line input must not be amplified at all, because loudness control of the headphones is done by the headphone amplifier section.
But the differential line-level signal must be converted to a single-ended signal by the input stage.

The current design uses a LM833-N opamp to convert the balanced signal into a single ended signal and has a second LM833-N to provide some degree (+- 6 dB) of "factory" adjustment.
The second part of that circuit was taken from the circuitlib.com audio mixer tutorial (39-how-to-build-an-audio-mixer).


## Summing
Summing is needed in two places: Creating the sum of all microphones (not adjustable, fixed output gain) and for the headphone mix (one input level adjustable).
A simple summing circuit using one operational amplifier is enough for our application.

The mixer design uses inverting op-amp circuits, because they require less components and signal routing.
Normally an audio mixer should take care of adding signals in-phase, because otherwise two microphones might cancel each other out.
In our case, there are just two types of summing: All microphones for the interpreter unit's line-out and the individual headphone mixes.
Because the stage input is quite independent of the interpreter's microphones, no special phase/ inversion considerations are needed.
And the microphones connected to our unit will experience the same inversions anyways.


## Line Output Driver
Line Output conversion is done by the [DRV134](https://www.ti.com/product/DRV134) IC.


## Headphone Output Driver
The headphone output needs a maximum output power of about 100 mW and should put the mono signal on both stereo channels of the TRS jack.
For example the DT 700 Pro (250 Ohms) need about 63 mW (4 V RMS, 16 mA), which seems to be the worst required voltage of all headphones (and not actually possible at 5V supply voltage).
Since the whole channel is desinged to use 0 dBu as target, the headphone amp needs to have an amplification of up to 5.

~~For the first draft, we're using one LM386 audio power amplifier even though it has a quite high minimal amplification of factor 20.~~
A better headphone amp seems to the the TI TPA6111A2.


## VU Meter
When searching for VU meter circuits, many use the LM3916 LED bar graph driver, which already has the right scaling built in.
But this chip is obsolete and not produced any more, so we designed our own chain of comparators to drive a set of LEDs.


## Phantom Power
The cheap but still decent Superlux HMC-660 headset is known to sound quite bad with standard 48 V phantom power (which can be easily fixed by adding some resistors inside the XLR connector).
But when I bought one in April 2021, it worked just fine with 48 V and didn't really work with 12 or 15 V.
So, if phantom power should be a feature of the interpreter unit, it probably best to have standard 48 V instead of any special treatment for one special headset.
