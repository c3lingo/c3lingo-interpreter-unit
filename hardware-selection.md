# c3lingo Unit -- Knobs and Switches
Detailed information why certain knobs (potentiometers) and switches were chosen.

## Potentiometers
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


## Switches
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
