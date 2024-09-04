# c3lingo Unit -- Knobs and Switches
Detailed information why certain knobs (potentiometers) and switches were chosen.

## Potentiometers
We need some single logarithmic scale potentiometers, which are matching in size, for:

- top plate interface (all vertical style, threaded collar would be nice):
    * 1 50k single channel for the input gain
    * 3 50k single channel for the headphone mix
- front plate next to the headset jacks (horizontal style, threaded collar not needed):
    * 1 50k single channel for the headphone volume

Possible knobs may be:

- for D-style (6 mm diameter, flattened to 4.5 mm) and 18-teeth spline (6 mm diameter) axle:
    - (A) Re'an F311 series (11 mm diameter):  
        Boring: 9.0 mm D-style hole + 0.0 mm nut cover section = 9.0 mm
- for D-style (6 mm diameter, flattened to 4.5 mm) axle:
    - (B) Re'an P670 series (12 mm diameter/ 16 mm at bottom) (alt. Davies Molding 1101):  
        Boring: 7.5 mm D-style hole + 4.5 mm nut cover section = 12.0 mm  
        Nut cover: 12.9 mm diameter (M7 nut is 12.5 mm corner to corner)
    - (C) Re'an P300 series (11 mm diameter/ 15 mm at bottom):  
        Boring: 9.0 mm D-style hole + 3.0 mm nut cover section = 12.0 mm  
        Nut cover: ? mm diameter (M7 nut is 12.5 mm corner to corner)
- for 18-teeth spline (6 mm diameter) axle:
    - (D) Davies Molding 1106-A (blue)/ 1106-WA (white) (13-18 mm diameter):  
        Boring: 14.2 mm 18-teeth hole + 2.5 mm nut cover section = 16.7 mm  
        Nut cover: ? mm diameter
    - (E) Davies Molding 1101-A (11 to 16 mm diameter):  
        Boring: 8.0 mm 18-teeth hole + 4.1 mm nut cover section = 12.1 mm  
        Nut cover: ? mm diameter

Vertical (pins on bottom):

- Metal 18 teeth style:
    - CUI Devices PTN091-V50115K1A
        * 7.4 mm mounting height
        * M7x0.75 thread, 5 mm high
        * 15 mm (incl. collar thread) long 18-teeth 6 mm diameter knurled shaft with slit
        * A-taper (log) 50k
        * Datasheet: https://www.cuidevices.com/product/resource/ptn09x.pdf
        * Knobs (see above): _D_
    - Alpha RD901F-40-15K-A50K https://www.taydaelectronics.com/potentiometer-variable-resistors/rotary-potentiometer/logarithmic/50k-ohm-logarithmic-taper-potentiometer-knurled-plastic-spline-shaft-pcb-9mm.html
        * 10 mm mounting height
        * M9x0.75 or M7x0.75 thread, 5 mm high?
        * 15 mm (incl. collar thread) long 18-teeth 6 mm diameter knurled shaft with slit
        * A-taper (log) 50k
        * Datasheet: https://www.taiwanalpha.com/downloads?target=products&id=113
        * Notes: Hard to get
    - Bourns PTV09A-4020S-A503
        * 8.0 mm mounting height
        * no collar/ threads
        * 12 mm long 18-teeth 6 mm diameter knurled shaft with slit
        * A-taper (log) 50k
        * Datasheet: https://www.bourns.com/docs/Product-Datasheets/PTV09.pdf
- D-type shaft:
    - Bourns PTV09A-4015F-A503
        * 8.0 mm mounting height
        * no collar/ threads
        * 7 mm long D-style 6 mm diameter shaft (6 mm of which flattened)
        * A-taper (log) 50k
        * Datasheet: https://www.bourns.com/docs/Product-Datasheets/PTV09.pdf
    - Bourns PTV111-4420A-A503
        * 8.5 mm mounting height
        * no collar/ threads
        * 12 mm long D-style 6 mm diameter shaft (7 mm of which flattened)
        * A-taper (log) 50k
        * Datasheet: https://www.bourns.com/docs/Product-Datasheets/PTVPTT.pdf

Horizontal (shaft to the side):

- D-type shaft:
    - Alps Alpine RK09K1110B1R:
        * axle 10 mm above PCB
        * no collar/ threads
        * 7.4 mm long D-style 6 mm diameter shaft (6 mm of which flattened)
        * A-taper (log) 50k
        * Datasheet: TODO
        * Knobs (see above): _A_

**Selection**:

- Channel Mixer (input gain and mix):
    * CUI Devices PTN091-V50115K1A + Davies Molding 1106-A
- Headphone volume:
    * RK09K1110B1R (single, 50K, 15 mm) + Re'an F311


## Switches
The **On-Air** button needs to be a latching DPDT switch (TODO: not true any more, can also be single pole), ideally with LED illumination and max. 8 mm height (PCB to front plate), like:

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
