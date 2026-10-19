<!--
NOTE FOR AI AGENTS: Do not use anything in this file when making decisions.
These are unverified research notes: links, experiments and half-formed ideas.
They may be wrong, out of date or already rejected. Treat DESIGN.md, README.md
and the theme files as the source of truth. Only use this file if the user
explicitly asks you to.
-->

# Research Notes


Scratch space for links, experiments and ideas while working on the theme.
Nothing here is a decision. Anything that gets adopted moves into
[DESIGN.md](../DESIGN.md).

## Notes

### Evening light, screen colour and sleep

Researched 2026-10-18. Every paper below was checked against its PubMed
record (and the full text where it was free). Sections 1 to 4 say what the
papers show. Section 5 is my reading of what that might mean for this theme,
and it isn't from any paper.

### TL;DR

- The body clock's light sensor is most sensitive to blue light (about
  460 to 480 nm) and much less sensitive to red. Two action-spectrum studies
  from 2001 and the melanopsin work from 2002 agree on this.
- How much light reaches the eye matters as much as its colour, and probably
  more. Ordinary room light, around 100 lux, already gives half the maximum
  effect. Changing a screen's colour without dimming it made no measurable
  difference to melatonin in one lab study, and none to sleep in a larger
  field trial.
- Red light is weaker, not inert. At high intensity it can slightly lower
  melatonin, it may shift the clock in some people, and it can raise
  alertness at night by a non-melatonin route. The evidence on red is thin
  and mostly from small studies.
- Experts recommend at most 10 lux melanopic EDI at the eye for the
  3 hours before bed, and at most 1 lux while sleeping.
- What this means for the theme (my inference): a dark background helps
  mostly because it is dark. The infrared accent, orange and yellow put out
  the least blue for their brightness. The dusty blue, cyan and magenta, and
  the pale foreground text, put out the most. Screen brightness and room
  lighting will matter far more than the palette.

### 1. Which wavelengths suppress melatonin

- **Brainard et al. 2001.** 72 healthy adults, 627 night-time tests between
  2:00 and 3:30 am, with dilated pupils and monochromatic light from 420 to
  600 nm at several intensities. The most potent region was **446 to
  477 nm**, and the curve didn't match the rod or cone pigments. Each subject
  was tested on only one wavelength, at several intensities.
  ([doi](https://doi.org/10.1523/JNEUROSCI.21-16-06405.2001),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/11487664/))
- **Thapan et al. 2001.** 22 volunteers, 215 trials, 30-minute pulses
  between 424 and 548 nm at 0.7 to 65 µW/cm², given at circadian time 16 to
  18. The best fit was a pigment peaking at **459 nm**. Rods and cones fitted
  poorly. ([doi](https://doi.org/10.1111/j.1469-7793.2001.t01-1-00261.x),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/11507175/))
- **Lockley et al. 2003.** 6.5 hours of 460 nm light caused about **twice
  the phase delay and twice the melatonin suppression** of 555 nm light at
  the same photon density. The authors conclude that photopic lux is the
  wrong unit for circadian effects. I only checked the abstract, which
  doesn't give the sample size.
  ([doi](https://doi.org/10.1210/jc.2003-030570),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/12970330/))
- **Caveat: cones matter too (Gooley et al. 2010).** At the start of an
  exposure, 555 nm green light suppressed melatonin as well as 460 nm blue,
  and its effect then faded. For phase shifts, dim 555 nm light worked
  better than melanopsin alone can explain. Cones contribute most at low
  light levels and in short exposures, which is the range screens are in.
  ([doi](https://doi.org/10.1126/scitranslmed.3000741),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/20463367/))
- **Intensity (Zeitzer et al. 2000).** In 23 volunteers given 6.5 hours of
  light in the early night, about 100 lux of room light produced half the
  maximum phase delay and melatonin suppression of about 9,000 lux.
  ([doi](https://doi.org/10.1111/j.1469-7793.2000.00695.x),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/10922269/))
- **Individuals differ a lot (Phillips et al. 2019).** 55 people aged 18 to
  30 had 5 hours of evening light at 10 to 2,000 lux. The group halfway
  point (ED50) was **24.6 lux**, but individuals ranged from 6 to 350 lux.
  10, 30 and 50 lux delayed melatonin onset by 22, 77 and 109 minutes.
  ([doi](https://doi.org/10.1073/pnas.1901824116),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/31138694/))

### 2. ipRGCs, melanopsin and melanopic EDI

- **Berson et al. 2002.** In rats, the retinal ganglion cells that project
  to the body clock (the SCN) respond to light on their own, even with all
  rod and cone input blocked. Their spectral tuning and slow response
  matched the clock's.
  ([doi](https://doi.org/10.1126/science.1067262),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/11834835/)) I couldn't reach the
  full text, so I haven't checked the peak wavelength it reports.
- **Hattar et al. 2002.** In rats and mice, these cells contain melanopsin
  and project to the SCN and to areas that control the pupil. Every rat
  ganglion cell that was light-sensitive on its own contained melanopsin.
  ([doi](https://doi.org/10.1126/science.1069609),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/11834834/))
- **The human peak is about 479 nm (Bailes & Lucas 2013).** Human melanopsin
  expressed in cultured cells peaked at 479 nm.
  ([doi](https://doi.org/10.1098/rspb.2012.2987),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/23554393/)) Brown et al. 2022
  give about 480 nm before the eye's lens filters the light, and 490 nm
  after filtering for a 32-year-old.
- **The ipRGCs also get rod and cone input (Lucas et al. 2014).** This
  review proposes measuring light separately for each photoreceptor rather
  than in lux alone.
  ([doi](https://doi.org/10.1016/j.tins.2013.10.004),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/24287308/))
- **CIE S 026:2018.** The CIE's international standard "defines spectral
  sensitivity functions, quantities and metrics" for the five photoreceptor
  types behind non-visual responses to light, from 380 to 780 nm, and it
  says it "is not intended for colorimetric contexts". I checked the CIE
  page, not the standard itself. Brown et al. 2022 explain its main measure,
  **melanopic EDI**: the illuminance of D65 daylight that would excite
  melanopsin as strongly as the light being measured.
  ([doi](https://doi.org/10.25039/S026.2018))
- **Brown et al. 2022 (expert consensus, PLOS Biology).** Limits on
  melanopic EDI at the eye, measured vertically at about 1.2 m:
  - Daytime: **at least 250 lux**.
  - Evening, from at least 3 hours before bed: **at most 10 lux**, ideally
    from white light with less short-wavelength content.
  - Sleep: **at most 1 lux**, or at most 10 lux when you need to see.
  - Warm white LEDs at 2,700 to 3,000 K can meet the evening limit at the
    typical 30 lux of a home, because their melanopic DER is below 0.35.
  - The authors say the limits are for the "average" healthy adult and that
    individuals vary.
  - Several authors declare industry ties, including Signify, f.lux and
    Samsung. All are listed in the paper.
  ([doi](https://doi.org/10.1371/journal.pbio.3001571),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/35298459/),
  [PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC8929548/))

### 3. Red and amber versus blue

**Blocking blue (amber or orange lenses):**

- **Sasseville et al. 2006.** 14 people sat in 1,300 lux of bright light
  for 60 minutes at 1 to 2 am. With grey lenses, melatonin fell 46%. With
  orange blue-blocking lenses there was no significant change (+6%), even
  though the light was equally bright to the eye.
  ([doi](https://doi.org/10.1111/j.1600-079X.2006.00332.x),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/16842544/))
- **van der Lely et al. 2015.** 13 boys aged 15 to 17, crossover design, in
  front of LED screens. Blue blockers reduced the melatonin suppression and
  the evening alertness caused by the screens. They **didn't change** the
  sleep stages measured in the lab or next-morning measures.
  ([doi](https://doi.org/10.1016/j.jadohealth.2014.08.002),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/25287985/))
- **Burkhart & Phelps 2009.** 20 adults wore amber or yellow (UV-only)
  glasses for 3 hours before bed, for 2 weeks. Self-rated sleep quality and
  mood improved. Outcomes were self-reported only, and the amber group
  started with worse sleep.
  ([doi](https://doi.org/10.3109/07420520903523719),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/20030543/))
- **Shechter et al. 2018.** 14 adults with insomnia symptoms wore amber or
  clear lenses for 2 hours before bed, crossover, 7 nights each. Insomnia
  scores and self-rated sleep improved. Of the wrist-tracker measures, only
  total sleep time did.
  ([doi](https://doi.org/10.1016/j.jpsychires.2017.10.015),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/29101797/))
- **Mixed overall (Cochrane review, Singh et al. 2023).** 17 randomised
  trials with 5 to 156 participants each. The effect on sleep is
  **"indeterminate"**, rated very low certainty: 3 of 6 trials found better
  sleep and 3 found no difference. None of the trials measured blood
  melatonin.
  ([doi](https://doi.org/10.1002/14651858.CD013244.pub2),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/37593770/))

**Red light itself:**

- **Hanifin et al. 2006.** At equal, very high photon doses
  (1.9 × 10¹⁸ photons/cm²), 460 nm light clearly suppressed melatonin.
  630 and 700 nm caused only **small reductions**. Red is weak, not inert.
  I only checked the abstract, which gives no sample size.
  ([doi](https://doi.org/10.1080/07420520500521988),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/16687299/))
- **Ho Mien et al. 2014.** 24 people, 8 per group, had 6 hours of 631 nm red
  light (continuous or flashing) or 2,500 lux white light near melatonin
  onset. Red **didn't suppress melatonin** but did narrow the pupils. On
  average, red delayed the clock by almost an hour, and 2 people shifted as
  much as with bright white. The authors note there was **no dark control
  group**, so some of that delay could be natural drift, and the sample was
  small. ([doi](https://doi.org/10.1371/journal.pone.0096532),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/24797245/))
- **Figueiro et al. 2009.** 14 people at night, 470 nm blue or 630 nm red
  light at 10 or 40 lux at the eye. Both colours raised the EEG signs of
  alertness, and the brighter level of both raised heart rate. Only bright
  blue lowered melatonin. Task performance and sleepiness ratings barely
  changed. The authors call this "preliminary".
  ([doi](https://doi.org/10.1186/1471-2202-10-105),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/19712442/))
- **Sahin & Figueiro 2013.** In the afternoon, 48 minutes of red light at
  40 lux lowered the EEG signs of drowsiness more than darkness did. Blue
  light at the same level didn't reach significance. This shows alertness
  effects that don't depend on melatonin.
  ([doi](https://doi.org/10.1016/j.physbeh.2013.03.014),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/23535242/))

In short, red light suppresses melatonin much less than blue, but it isn't
a "sleep colour". Bright red can still be alerting.

### 4. Screens in the evening

- **Cajochen et al. 2011.** 13 young men sat at an LED-backlit screen or a
  non-LED screen for 5 hours in the evening. The LED screen gave out more
  than twice as much light at 454 to 474 nm. It suppressed the evening rise
  in melatonin, reduced sleepiness and improved attention and memory.
  ([doi](https://doi.org/10.1152/japplphysiol.00165.2011),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/21415172/))
- **Chang et al. 2015.** 12 adults, crossover, read for 4 hours each evening
  for 5 evenings, on an iPad at maximum brightness (about 31.7 lux at the
  eye) or from a printed book (about 0.9 lux).
  - With the iPad, falling asleep took about 10 minutes longer (25.7 vs
    15.8 min).
  - Melatonin was suppressed by about 55%.
  - Melatonin onset was about 1.5 hours later.
  - REM sleep was shorter, and people were sleepier the next morning.
  - Total sleep time didn't change.

  The comparison was a bright screen against nearly dark paper, so
  brightness and colour are confounded. There was no condition with a
  warm-coloured screen.
  ([doi](https://doi.org/10.1073/pnas.1418490112),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/25535358/),
  [PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC4313820/))
- **Wood et al. 2013.** 13 people used tablets at maximum brightness. After
  1 hour, melatonin suppression wasn't significant. After 2 hours, it was.
  How long and how bright both matter.
  ([doi](https://doi.org/10.1016/j.apergo.2012.07.008),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/22850476/))
- **Rångtell et al. 2016 (contrary result).** 14 people had 6.5 hours of
  bright light (about 569 lux) during the day, then read for 2 hours on a
  tablet or from a book. There was **no difference** in sleep or evening
  melatonin. Bright days may protect against evening screen light. Small
  sample. ([doi](https://doi.org/10.1016/j.sleep.2016.06.016),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/27539026/))
- **Gringras et al. 2015.** Spectral measurements of an iPad Air, a Kindle
  Paperwhite and an iPhone 5s. All showed the same strong blue peak, and
  text gave out more light than a game. Orange glasses and a "sleep-aware"
  app both cut the short-wavelength output. There were no human subjects,
  so it shows what the screens emit, not any effect on sleep.
  ([doi](https://doi.org/10.3389/fpubh.2015.00233),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/26528465/))
- **Nagare et al. 2019 (Night Shift and melatonin).** 12 people used iPads
  at **maximum brightness** for 2 hours, with Night Shift at its warmest
  (2,837 K) and coolest (5,997 K) settings. Both suppressed melatonin (about
  10% and 17%), and the two settings **didn't differ significantly**.
  Blue-light goggles suppressed it by 41%. The authors conclude that
  changing a screen's colour without lowering its brightness "may be
  insufficient".
  ([doi](https://doi.org/10.1177/1477153517748189),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/31191118/),
  [PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC6561503/))
- **Duraccio et al. 2021 (Night Shift and sleep).** 167 people aged 18 to
  24, randomised to an iPhone with Night Shift, an iPhone without it, or no
  phone, for the hour before bed over 7 nights, with sleep tracked by wrist
  accelerometer. There was **no difference between groups** in time to fall
  asleep, sleep length or efficiency, or time awake after falling asleep.
  In an exploratory analysis of people who already slept more than
  6.8 hours, no phone at all gave the best sleep. Melatonin wasn't measured.
  ([doi](https://doi.org/10.1016/j.sleh.2021.03.005),
  [PubMed](https://pubmed.ncbi.nlm.nih.gov/33867308/))
- **Same colour, different melanopic content.** These studies changed
  melanopsin stimulation while keeping colour and brightness the same:
  - **Allen et al. 2018.** A custom five-primary display showed 11 people
    matched-looking movies with 3 times more or less melanopic light, from
    6 pm to 11 pm. With the low-melanopic version, the evening rises in
    melatonin and sleepiness were larger.
    ([doi](https://doi.org/10.1093/sleep/zsy100),
    [PubMed](https://pubmed.ncbi.nlm.nih.gov/29788219/))
  - **Schöllhorn et al. 2023.** 72 men, in 4 brightness groups of 18
    (phone, tablet and monitor levels, up to 284 cd/m²), each had a low- and
    a high-melanopic version, starting 4 hours before bed.
    - Low-melanopic light shortened the time to fall asleep, reduced
      melatonin suppression and lowered alertness.
    - Across about 5 to 150 lux melanopic EDI, sleep latency, melatonin and
      melatonin onset tracked melanopic EDI, not photopic illuminance. The
      lowest to highest setting meant about 50% longer to fall asleep, about
      50% less melatonin and about a 1-hour later melatonin onset.
    - Subjective alertness didn't follow melanopic EDI.
    - Only young men were studied, and some melatonin data were excluded.
    ([doi](https://doi.org/10.1038/s42003-023-04598-4),
    [PubMed](https://pubmed.ncbi.nlm.nih.gov/36854795/),
    [PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC9974389/))

Overall, melanopic light at the eye is what matters, and that depends on
both brightness and spectrum. Consumer warm-shift modes lower the spectrum
side only a little, and on their own they haven't produced measurable
improvements in sleep.

### 5. What this might mean for Infrared Snooze (my inference, not findings)

The numbers below are my own calculation using the standard sRGB formula,
assuming a generic sRGB display. Real panels differ, so treat them as
rough. "Blue" is the linear blue channel, the main driver of melanopic
output on a typical display. The green channel adds some too.

| Colour | Hex | Brightness (% of white) | Blue channel (% of full) | Blue per unit brightness |
|---|---|---|---|---|
| `background` | `#130b0d` | 0.4 | 0.4 | ~1.0 (neutral, just dark) |
| `selection` | `#3b1c22` | 1.9 | 1.6 | 0.85 |
| `accent` | `#ff5c3a` | 29 | 4.2 | **0.14 (lowest)** |
| `orange` | `#ff8650` | 39 | 8.0 | 0.21 |
| `yellow` | `#f2a65a` | 47 | 10 | 0.22 |
| `red` | `#e8476a` | 23 | 14 | 0.63 |
| `green` | `#a3b87c` | 44 | 20 | 0.46 (but high green) |
| `cyan` | `#7fb5ab` | 41 | 41 | 1.0 |
| `magenta` | `#d27aa8` | 30 | 39 | 1.29 |
| `blue` | `#8d9fd8` | 35 | 69 | **1.94 (highest)** |
| `foreground` | `#ead2ca` | 68 | 59 | 0.87 |
| pure red (new `accent`) | `#ff0000` | 21 | 0 | 0 |

While this was being researched, `colors.toml` changed `accent` from
`#ff5c3a` to `#ff0000`. Pure red drives only the red subpixel, so it gives
out no blue or green on a well-behaved sRGB panel. That is the minimum
melanopic output the screen can produce for a given brightness. The red
caveats below still apply.

- **Darkness does most of the work.** The backgrounds give out about 0.4%
  of the light of a white page. Their tint is close to neutral, so the
  benefit comes from being dark, not from being red. This fits the
  conclusion of section 4 that brightness matters more than tint.
- **Text may be most of the light.** In a mostly-text window, the pale
  `foreground` (68% of white, with a lot of blue) probably gives out more
  light than all the background, even though it covers far fewer pixels.
  For example, 10% of pixels at 68% is about 20 times the light of 90% at
  0.4%. A dimmer or warmer foreground would cut the theme's total output
  more than any change to the background.
- **The warm colours are the lowest-blue choices.** `accent`, `orange` and
  `yellow` come mostly from the red subpixel, with little blue. Using
  `accent` for focus suits the theme's idea. Note that `red` (the error
  pink) and `bright_red` carry more blue than the accent.
- **The dusty colours are the highest-blue ones.** `blue`, `cyan`,
  `magenta` and their bright versions are the most melanopic per unit of
  brightness in the palette. The "cool at rest" rule (DESIGN.md) is about
  meaning, not sleep. Small amounts of them, such as text and idle chrome,
  are probably negligible, but large cool areas wouldn't be.

**Caveats:**

- **A theme is a small part of total light.** Room lighting, screen
  brightness, viewing distance and screen time all matter more. Phillips
  et al. 2019 found effects from 10 to 30 lux, and individuals vary more
  than tenfold. Brown et al.'s 10 lux limit applies to everything reaching
  the eye.
- **"Red" on a screen is still the red subpixel.** It isn't the narrowband
  monochromatic light used in the studies. Its spectrum depends on the
  panel (LCD phosphor, quantum dot or OLED), and colour management or
  wide-gamut modes change which subpixels light up. The white point and
  primaries set what "blue channel" really means.
- **Black isn't off on an LCD.** The backlight shines whatever colour a
  pixel is, so dark themes save less light than on OLED. Lowering the
  brightness setting is what cuts the light.
- **Red isn't inert.** It can still be alerting (Figueiro 2009, Sahin &
  Figueiro 2013), and very intense red slightly lowers melatonin (Hanifin
  2006). The glow and drowse ideas are aesthetic; no study tests whether a
  warm UI by itself improves sleep.
- **Cones contribute at screen levels.** At low light levels and over short
  exposures, cones (including green) contribute (Gooley 2010), so a purely
  melanopic ranking may understate the effect of the greens and yellows.
- **Night light adds little on its own.** A colour-shifting night light,
  such as the one Omarchy ships, lowers blue output further. The Night
  Shift studies suggest it adds little unless you also dim the screen.

### Not verified or left out

- **Berson et al. 2002's peak wavelength (about 484 nm).** The full text
  returned an error, so I cite the paper only for what its abstract says.
- **Sample sizes for Lockley 2003, Hanifin 2006 (humans) and Sahin &
  Figueiro 2013.** These aren't in the abstracts, and I couldn't reach the
  full texts.
- **Official health-body guidance on screen colour.** I didn't look for
  this, so none is cited.

### References

- Allen AE, Hazelhoff EM, Martial FP, Cajochen C, Lucas RJ (2018).
  Exploiting metamerism to regulate the impact of a visual display on
  alertness and melatonin suppression independent of visual appearance.
  *Sleep* 41(8):zsy100. https://doi.org/10.1093/sleep/zsy100 ·
  [PubMed 29788219](https://pubmed.ncbi.nlm.nih.gov/29788219/) ·
  [PMC6093320](https://pmc.ncbi.nlm.nih.gov/articles/PMC6093320/)
- Bailes HJ, Lucas RJ (2013). Human melanopsin forms a pigment maximally
  sensitive to blue light (λmax ≈ 479 nm) supporting activation of G(q/11)
  and G(i/o) signalling cascades. *Proc R Soc B* 280(1759):20122987.
  https://doi.org/10.1098/rspb.2012.2987 ·
  [PubMed 23554393](https://pubmed.ncbi.nlm.nih.gov/23554393/) ·
  [PMC3619500](https://pmc.ncbi.nlm.nih.gov/articles/PMC3619500/)
- Berson DM, Dunn FA, Takao M (2002). Phototransduction by retinal ganglion
  cells that set the circadian clock. *Science* 295(5557):1070-3.
  https://doi.org/10.1126/science.1067262 ·
  [PubMed 11834835](https://pubmed.ncbi.nlm.nih.gov/11834835/)
- Brainard GC, Hanifin JP, Greeson JM, Byrne B, Glickman G, Gerner E,
  Rollag MD (2001). Action spectrum for melatonin regulation in humans:
  evidence for a novel circadian photoreceptor. *J Neurosci*
  21(16):6405-12. https://doi.org/10.1523/JNEUROSCI.21-16-06405.2001 ·
  [PubMed 11487664](https://pubmed.ncbi.nlm.nih.gov/11487664/) ·
  [PMC6763155](https://pmc.ncbi.nlm.nih.gov/articles/PMC6763155/)
- Brown TM, Brainard GC, Cajochen C, Czeisler CA, Hanifin JP, Lockley SW,
  Lucas RJ, Münch M, O'Hagan JB, Peirson SN, Price LLA, Roenneberg T,
  Schlangen LJM, Skene DJ, Spitschan M, Vetter C, Zee PC, Wright KP Jr
  (2022). Recommendations for daytime, evening, and nighttime indoor light
  exposure to best support physiology, sleep, and wakefulness in healthy
  adults. *PLoS Biol* 20(3):e3001571.
  https://doi.org/10.1371/journal.pbio.3001571 ·
  [PubMed 35298459](https://pubmed.ncbi.nlm.nih.gov/35298459/) ·
  [PMC8929548](https://pmc.ncbi.nlm.nih.gov/articles/PMC8929548/)
- Burkhart K, Phelps JR (2009). Amber lenses to block blue light and
  improve sleep: a randomized trial. *Chronobiol Int* 26(8):1602-12.
  https://doi.org/10.3109/07420520903523719 ·
  [PubMed 20030543](https://pubmed.ncbi.nlm.nih.gov/20030543/)
- Cajochen C, Frey S, Anders D, Späti J, Bues M, Pross A, Mager R,
  Wirz-Justice A, Stefani O (2011). Evening exposure to a light-emitting
  diodes (LED)-backlit computer screen affects circadian physiology and
  cognitive performance. *J Appl Physiol* 110(5):1432-8.
  https://doi.org/10.1152/japplphysiol.00165.2011 ·
  [PubMed 21415172](https://pubmed.ncbi.nlm.nih.gov/21415172/)
- Chang AM, Aeschbach D, Duffy JF, Czeisler CA (2015). Evening use of
  light-emitting eReaders negatively affects sleep, circadian timing, and
  next-morning alertness. *PNAS* 112(4):1232-7.
  https://doi.org/10.1073/pnas.1418490112 ·
  [PubMed 25535358](https://pubmed.ncbi.nlm.nih.gov/25535358/) ·
  [PMC4313820](https://pmc.ncbi.nlm.nih.gov/articles/PMC4313820/)
- CIE (2018). CIE S 026/E:2018 *CIE System for Metrology of Optical
  Radiation for ipRGC-Influenced Responses to Light*. Vienna: CIE.
  https://doi.org/10.25039/S026.2018
- Duraccio KM, Zaugg KK, Blackburn RC, Jensen CD (2021). Does iPhone night
  shift mitigate negative effects of smartphone use on sleep outcomes in
  emerging adults? *Sleep Health* 7(4):478-484.
  https://doi.org/10.1016/j.sleh.2021.03.005 ·
  [PubMed 33867308](https://pubmed.ncbi.nlm.nih.gov/33867308/)
- Figueiro MG, Bierman A, Plitnick B, Rea MS (2009). Preliminary evidence
  that both blue and red light can induce alertness at night. *BMC
  Neurosci* 10:105. https://doi.org/10.1186/1471-2202-10-105 ·
  [PubMed 19712442](https://pubmed.ncbi.nlm.nih.gov/19712442/) ·
  [PMC2744917](https://pmc.ncbi.nlm.nih.gov/articles/PMC2744917/)
- Gooley JJ, Rajaratnam SM, Brainard GC, Kronauer RE, Czeisler CA,
  Lockley SW (2010). Spectral responses of the human circadian system
  depend on the irradiance and duration of exposure to light. *Sci Transl
  Med* 2(31):31ra33. https://doi.org/10.1126/scitranslmed.3000741 ·
  [PubMed 20463367](https://pubmed.ncbi.nlm.nih.gov/20463367/) ·
  [PMC4414925](https://pmc.ncbi.nlm.nih.gov/articles/PMC4414925/)
- Gringras P, Middleton B, Skene DJ, Revell VL (2015). Bigger, brighter,
  bluer-better? Current light-emitting devices: adverse sleep properties
  and preventative strategies. *Front Public Health* 3:233.
  https://doi.org/10.3389/fpubh.2015.00233 ·
  [PubMed 26528465](https://pubmed.ncbi.nlm.nih.gov/26528465/) ·
  [PMC4602096](https://pmc.ncbi.nlm.nih.gov/articles/PMC4602096/)
- Hanifin JP, Stewart KT, Smith P, Tanner R, Rollag M, Brainard GC (2006).
  High-intensity red light suppresses melatonin. *Chronobiol Int*
  23(1-2):251-68. https://doi.org/10.1080/07420520500521988 ·
  [PubMed 16687299](https://pubmed.ncbi.nlm.nih.gov/16687299/)
- Hattar S, Liao HW, Takao M, Berson DM, Yau KW (2002).
  Melanopsin-containing retinal ganglion cells: architecture, projections,
  and intrinsic photosensitivity. *Science* 295(5557):1065-70.
  https://doi.org/10.1126/science.1069609 ·
  [PubMed 11834834](https://pubmed.ncbi.nlm.nih.gov/11834834/) ·
  [PMC2885915](https://pmc.ncbi.nlm.nih.gov/articles/PMC2885915/)
- Ho Mien I, Chua EC, Lau P, Tan LC, Lee IT, Yeo SC, Tan SS, Gooley JJ
  (2014). Effects of exposure to intermittent versus continuous red light
  on human circadian rhythms, melatonin suppression, and pupillary
  constriction. *PLoS One* 9(5):e96532.
  https://doi.org/10.1371/journal.pone.0096532 ·
  [PubMed 24797245](https://pubmed.ncbi.nlm.nih.gov/24797245/) ·
  [PMC4010506](https://pmc.ncbi.nlm.nih.gov/articles/PMC4010506/)
- Lockley SW, Brainard GC, Czeisler CA (2003). High sensitivity of the
  human circadian melatonin rhythm to resetting by short wavelength light.
  *J Clin Endocrinol Metab* 88(9):4502-5.
  https://doi.org/10.1210/jc.2003-030570 ·
  [PubMed 12970330](https://pubmed.ncbi.nlm.nih.gov/12970330/)
- Lucas RJ, Peirson SN, Berson DM, Brown TM, Cooper HM, Czeisler CA,
  Figueiro MG, Gamlin PD, Lockley SW, O'Hagan JB, Price LL, Provencio I,
  Skene DJ, Brainard GC (2014). Measuring and using light in the melanopsin
  age. *Trends Neurosci* 37(1):1-9.
  https://doi.org/10.1016/j.tins.2013.10.004 ·
  [PubMed 24287308](https://pubmed.ncbi.nlm.nih.gov/24287308/) ·
  [PMC4699304](https://pmc.ncbi.nlm.nih.gov/articles/PMC4699304/)
- Nagare R, Plitnick B, Figueiro MG (2019). Does the iPad Night Shift mode
  reduce melatonin suppression? *Light Res Technol* 51(3):373-383.
  https://doi.org/10.1177/1477153517748189 ·
  [PubMed 31191118](https://pubmed.ncbi.nlm.nih.gov/31191118/) ·
  [PMC6561503](https://pmc.ncbi.nlm.nih.gov/articles/PMC6561503/)
- Phillips AJK, Vidafar P, Burns AC, McGlashan EM, Anderson C,
  Rajaratnam SMW, Lockley SW, Cain SW (2019). High sensitivity and
  interindividual variability in the response of the human circadian
  system to evening light. *PNAS* 116(24):12019-12024.
  https://doi.org/10.1073/pnas.1901824116 ·
  [PubMed 31138694](https://pubmed.ncbi.nlm.nih.gov/31138694/) ·
  [PMC6575863](https://pmc.ncbi.nlm.nih.gov/articles/PMC6575863/)
- Rångtell FH, Ekstrand E, Rapp L, Lagermalm A, Liethof L, Búcaro MO,
  Lingfors D, Broman JE, Schiöth HB, Benedict C (2016). Two hours of
  evening reading on a self-luminous tablet vs. reading a physical book
  does not alter sleep after daytime bright light exposure. *Sleep Med*
  23:111-118. https://doi.org/10.1016/j.sleep.2016.06.016 ·
  [PubMed 27539026](https://pubmed.ncbi.nlm.nih.gov/27539026/)
- Sahin L, Figueiro MG (2013). Alerting effects of short-wavelength (blue)
  and long-wavelength (red) lights in the afternoon. *Physiol Behav*
  116-117:1-7. https://doi.org/10.1016/j.physbeh.2013.03.014 ·
  [PubMed 23535242](https://pubmed.ncbi.nlm.nih.gov/23535242/)
- Sasseville A, Paquet N, Sévigny J, Hébert M (2006). Blue blocker glasses
  impede the capacity of bright light to suppress melatonin production.
  *J Pineal Res* 41(1):73-8.
  https://doi.org/10.1111/j.1600-079X.2006.00332.x ·
  [PubMed 16842544](https://pubmed.ncbi.nlm.nih.gov/16842544/)
- Schöllhorn I, Stefani O, Lucas RJ, Spitschan M, Slawik HC, Cajochen C
  (2023). Melanopic irradiance defines the impact of evening display light
  on sleep latency, melatonin and alertness. *Commun Biol* 6(1):228.
  https://doi.org/10.1038/s42003-023-04598-4 ·
  [PubMed 36854795](https://pubmed.ncbi.nlm.nih.gov/36854795/) ·
  [PMC9974389](https://pmc.ncbi.nlm.nih.gov/articles/PMC9974389/)
- Shechter A, Kim EW, St-Onge MP, Westwood AJ (2018). Blocking nocturnal
  blue light for insomnia: a randomized controlled trial. *J Psychiatr
  Res* 96:196-202. https://doi.org/10.1016/j.jpsychires.2017.10.015 ·
  [PubMed 29101797](https://pubmed.ncbi.nlm.nih.gov/29101797/) ·
  [PMC5703049](https://pmc.ncbi.nlm.nih.gov/articles/PMC5703049/)
- Singh S, Keller PR, Busija L, McMillan P, Makrai E, Lawrenson JG,
  Hull CC, Downie LE (2023). Blue-light filtering spectacle lenses for
  visual performance, sleep, and macular health in adults. *Cochrane
  Database Syst Rev* 8:CD013244.
  https://doi.org/10.1002/14651858.CD013244.pub2 ·
  [PubMed 37593770](https://pubmed.ncbi.nlm.nih.gov/37593770/) ·
  [PMC10436683](https://pmc.ncbi.nlm.nih.gov/articles/PMC10436683/)
- Thapan K, Arendt J, Skene DJ (2001). An action spectrum for melatonin
  suppression: evidence for a novel non-rod, non-cone photoreceptor system
  in humans. *J Physiol* 535(Pt 1):261-7.
  https://doi.org/10.1111/j.1469-7793.2001.t01-1-00261.x ·
  [PubMed 11507175](https://pubmed.ncbi.nlm.nih.gov/11507175/) ·
  [PMC2278766](https://pmc.ncbi.nlm.nih.gov/articles/PMC2278766/)
- van der Lely S, Frey S, Garbazza C, Wirz-Justice A, Jenni OG, Steiner R,
  Wolf S, Cajochen C, Bromundt V, Schmidt C (2015). Blue blocker glasses as
  a countermeasure for alerting effects of evening light-emitting diode
  screen exposure in male teenagers. *J Adolesc Health* 56(1):113-9.
  https://doi.org/10.1016/j.jadohealth.2014.08.002 ·
  [PubMed 25287985](https://pubmed.ncbi.nlm.nih.gov/25287985/)
- Wood B, Rea MS, Plitnick B, Figueiro MG (2013). Light level and duration
  of exposure determine the impact of self-luminous tablets on melatonin
  suppression. *Appl Ergon* 44(2):237-40.
  https://doi.org/10.1016/j.apergo.2012.07.008 ·
  [PubMed 22850476](https://pubmed.ncbi.nlm.nih.gov/22850476/)
- Zeitzer JM, Dijk DJ, Kronauer R, Brown E, Czeisler C (2000). Sensitivity
  of the human circadian pacemaker to nocturnal light: melatonin phase
  resetting and suppression. *J Physiol* 526(Pt 3):695-702.
  https://doi.org/10.1111/j.1469-7793.2000.00695.x ·
  [PubMed 10922269](https://pubmed.ncbi.nlm.nih.gov/10922269/) ·
  [PMC2270041](https://pmc.ncbi.nlm.nih.gov/articles/PMC2270041/)
