<Cabbage> bounds(0, 0, 0, 0)
form caption("Vapor FXs") size(950, 900), colour(58, 110, 182), guiMode("queue"), pluginId("4159")
image file("FXBackground.png") bounds(0, 0, 950, 900)


;Master kontroller: Volum, input gain, dry/wet, pan og autopan
rslider bounds(138, 8, 64, 64) channel("mastervol")  range(0, 1, 1, 1, 0.01)    trackerColour(0, 115, 215, 255) outlineColour(0, 0, 0, 0) colour(255, 114, 242, 255) markerColour(255, 255, 255, 255) 
rslider bounds(296, 8, 64, 64) channel("gain")       range(0, 1, 1, 1, 0.01)    trackerColour(0, 115, 215, 255) outlineColour(0, 0, 0, 0) colour(255, 114, 242, 255) markerColour(255, 255, 255, 255)
rslider bounds(466, 8, 64, 64) channel("drywet")     range(0, 1, 1, 1, 0.01)    trackerColour(0, 115, 215, 255) outlineColour(0, 0, 0, 0) colour(255, 114, 242, 255) markerColour(255, 255, 255, 255)
hslider bounds(610, -13, 100, 50) range(0, 1, 0, 1, 0.001) trackerColour(0, 0, 0, 0) channel("panL")
hslider bounds(610, 10, 100, 50) range(0, 1, 1, 1, 0.001) trackerColour(0, 0, 0, 0) channel("panR")
checkbox bounds(615, 45, 20, 20) channel("autopantoggle")  value(0) shape("circle") colour:0(0, 149, 168, 255) colour:1(0, 226, 255, 255)
rslider bounds(650, 40, 35, 35)  range(0, 1, 0.5, 1, 0.001)   channel("autopanspeed")   trackerColour(0, 115, 215, 255) outlineColour(0, 0, 0, 0) colour(255, 114, 242, 255) markerColour(255, 255, 255, 255)


;Chorus og Flanger volum
rslider bounds(312, 114, 100, 100)  channel("chorusvol")  range(0, 1, 0, 1, 0.01)    trackerColour(0, 115, 215, 255) outlineColour(0, 0, 0, 0) colour(255, 114, 242, 255) markerColour(255, 255, 255, 255)
rslider bounds(318, 278, 100, 100)  channel("flangervol") range(0, 1, 0, 1, 0.01)    trackerColour(0, 115, 215, 255) outlineColour(0, 0, 0, 0) colour(255, 114, 242, 255) markerColour(255, 255, 255, 255)

;Delay
rslider bounds(404, 622, 60, 60) range(0, 1, 0,   1, 0.001)  channel("delayvol")  trackerColour(0, 115, 215, 255) outlineColour(0, 0, 0, 0) colour(255, 114, 242, 255) markerColour(255, 255, 255, 255) 
rslider bounds(12,  650, 60, 60) range(0, 1, 0.3, 1, 0.001)  channel("deltimeL")  trackerColour(0, 115, 215, 255) outlineColour(0, 0, 0, 0) colour(255, 114, 242, 255) markerColour(255, 255, 255, 255)
rslider bounds(122, 650, 60, 60) range(0, 1, 0.2, 1, 0.001)  channel("deltimeR")  trackerColour(0, 115, 215, 255) outlineColour(0, 0, 0, 0) colour(255, 114, 242, 255) markerColour(255, 255, 255, 255)
rslider bounds(278, 620, 60, 60) range(0, 1, 0.4, 1, 0.001)  channel("delfeed")   trackerColour(0, 115, 215, 255) outlineColour(0, 0, 0, 0) colour(255, 114, 242, 255) markerColour(255, 255, 255, 255)

;Reverb
rslider bounds(456, 784, 60, 60)  range(0, 1, 0.2, 1, 0.001)    channel("reverbvol")  trackerColour(0, 115, 215, 255) outlineColour(0, 0, 0, 0) colour(255, 114, 242, 255) markerColour(255, 255, 255, 255)
rslider bounds(238, 784, 60, 60)  range(0, 1, 0.8, 1, 0.001)    channel("reverbsize") trackerColour(0, 115, 215, 255) outlineColour(0, 0, 0, 0) colour(255, 114, 242, 255) markerColour(255, 255, 255, 255)
rslider bounds(346, 784, 60, 60)  range(0, 15000, 8000, 0.5, 1) channel("reverbcut")  trackerColour(0, 115, 215, 255) outlineColour(0, 0, 0, 0) colour(255, 114, 242, 255) markerColour(255, 255, 255, 255)

;Filter
rslider bounds(276, 460, 60, 60)  range(0, 15000, 4000, 0.5, 1)     channel("filterfreq")  trackerColour(0, 115, 215, 255) outlineColour(0, 0, 0, 0) colour(255, 114, 242, 255) markerColour(255, 255, 255, 255)
rslider bounds(400, 462, 60, 60)  range(0, 0.99, 0.4, 0.5, 0.001)   channel("filterres")   trackerColour(0, 115, 215, 255) outlineColour(0, 0, 0, 0) colour(255, 114, 242, 255) markerColour(255, 255, 255, 255)


;SEND SYSTEM
combobox bounds(808, 198, 80, 20) channel("chorussend")  text("Flanger", "Filter",  "Delay",  "Reverb", "Master")  value(1) colour(64, 190, 190, 255)
combobox bounds(808, 364, 80, 20) channel("flangersend") text("Chorus",  "Filter",  "Delay",  "Reverb", "Master")  value(2) colour(64, 190, 190, 255)
combobox bounds(808, 524, 80, 20) channel("filtersend")  text("Chorus",  "Flanger", "Delay",  "Reverb", "Master")  value(3) colour(64, 190, 190, 255)
combobox bounds(808, 692, 80, 20) channel("delaysend")   text("Chorus",  "Flanger", "Filter", "Reverb", "Master")  value(4) colour(64, 190, 190, 255)
combobox bounds(808, 854, 80, 20) channel("reverbsend")  text("Chorus",  "Flanger", "Filter", "Delay",  "Master")  value(5) colour(64, 190, 190, 255)

;INPUT SYSTEM
combobox bounds(808, 138, 80, 20) channel("chorusInput")  text("Off (Sends Only)", "Direct input + Sends",  "Direct only (Ignore sends)")  value(2) colour(253, 126, 255, 255) 
combobox bounds(808, 300, 80, 20) channel("flangerInput") text("Off (Sends Only)", "Direct input + Sends",  "Direct only (Ignore sends)")  value(2) colour(253, 126, 255, 255) 
combobox bounds(808, 462, 80, 20) channel("filterInput")  text("Off (Sends Only)", "Direct input + Sends",  "Direct only (Ignore sends)")  value(2) colour(253, 126, 255, 255) 
combobox bounds(808, 624, 80, 20) channel("delayInput")   text("Off (Sends Only)", "Direct input + Sends",  "Direct only (Ignore sends)")  value(2) colour(253, 126, 255, 255) 
combobox bounds(808, 786, 80, 20) channel("reverbInput")  text("Off (Sends Only)", "Direct input + Sends",  "Direct only (Ignore sends)")  value(2) colour(253, 126, 255, 255) 

;Effekt av/på
checkbox bounds(628, 156, 50, 50) channel("chorustoggle")  value(1) shape("circle") colour:0(0, 149, 168, 255) colour:1(0, 226, 255, 255)
checkbox bounds(628, 320, 50, 50) channel("flangertoggle") value(1) shape("circle") colour:0(0, 149, 168, 255) colour:1(0, 226, 255, 255)
checkbox bounds(628, 480, 50, 50) channel("filtertoggle")  value(1) shape("circle") colour:0(0, 149, 168, 255) colour:1(0, 226, 255, 255)
checkbox bounds(628, 650, 50, 50) channel("delaytoggle")   value(1) shape("circle") colour:0(0, 149, 168, 255) colour:1(0, 226, 255, 255)
checkbox bounds(628, 815, 50, 50) channel("reverbtoggle")  value(1) shape("circle") colour:0(0, 149, 168, 255) colour:1(0, 226, 255, 255)




</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 -m0d --midi-key-cps=4 --midi-velocity-amp=5
</CsOptions>
<CsInstruments>
ksmps = 32
nchnls = 2
0dbfs = 1
;This plugin taks a mono input (Such as a vocal track) and outputs stereo

;Effectlist:
    ;Chorus
    ;Flanger
    ;Filter 
    ;St. Delay
    ;St. Reverb


gaIn init 0

gaMasterL    init 0
gaMasterR    init 0



gaToChorusL  init 0
gaToChorusR  init 0
gaChorusL    init 0
gaChorusR    init 0

gaToFlangerL init 0
gaToFlangerR init 0
gaFlangerL   init 0
gaFlangerR   init 0

gaToFilterL  init 0
gaToFilterR  init 0
gaFilterL    init 0
gaFilterR    init 0

gaToDelayL   init 0
gaToDelayR   init 0
gaDelayL     init 0
gaDelayR     init 0

gaToReverbL  init 0
gaToReverbR  init 0
gaReverbL    init 0
gaReverbR    init 0

;DELAY OPCODE
opcode stdelay, aa, aakkkk

aInL, aInR, kVol, kFeed, kTimeL, kTimeR xin

aDelayL init 0 
aDelayR init 0

kTimeL *= 1000
kTimeL port kTimeL, 0.01 ;Minimize odd auditory artifacts when changing the value live

kTimeR *= 1000
kTimeR port kTimeR, 0.01

aFeedL = aDelayL*kFeed ;feedbackloop
aFeedR = aDelayR*kFeed



aDelayL vdelay aInL + aFeedL, a(kTimeL), 3000
aDelayR vdelay aInR + aFeedR, a(kTimeR), 3000

aDelayOutL = aDelayL*kVol
aDelayOutR = aDelayR*kVol

xout aDelayOutL, aDelayOutR 
endop
;-------------



;-----------------INPUT-----------------
instr INPUT ;Denne pluginen er mono --> stereo
kGain cabbageGetValue "gain"
aIn inch 1
gaIn += aIn*kGain
endin


;-----------------CHORUS----------------
;Flanger og chorus systemet er hentet fra tidligere øvinger
instr CHORUS

ain = gaIn

if cabbageGetValue:k("chorusInput") == 1 then ;Direct input av, altså bare sends
    ain = 0
elseif cabbageGetValue:k("chorusInput") == 3 then ;Bare direct , altså ingorer sends
    gaToChorusL = 0
    gaToChorusR = 0
endif

;Setter LFO range fra -0.5 - 0.5, til 20 - 30
aLfo oscil 0.5, 0.2 
aLfo += 0.5 
aLfo *= 10 
aLfo += 20 

achorusmixL = ain + gaToChorusL ;Blander send signal og direct input
achorusmixR = ain + gaToChorusR

aDelL vdelay achorusmixL, aLfo, 100 ;Forsinker signalet baser på LFOen i millisekunder
aDelR vdelay achorusmixR, aLfo, 100

;Ganges med 0 hvis chorus toggle er av
gaChorusL += (aDelL+achorusmixL)*cabbageGetValue:k("chorusvol")*cabbageGetValue:k("chorustoggle")
gaChorusR += (aDelR+achorusmixR)*cabbageGetValue:k("chorusvol")*cabbageGetValue:k("chorustoggle")



endin

;-----------------FLANGER----------------
instr FLANGER
kVolum cabbageGetValue "flangervol"
aFeedL init 0
aFeedR init 0

;Setter LFO range fra -0.5 - 0.5, til 5 - 20
aLfo oscil 0.5, 0.2 
aLfo += 0.5 
aLfo *= 15 
aLfo += 5

ain = gaIn

if cabbageGetValue:k("flangerInput") == 1 then ;Direct input av, altså bare sends
    ain = 0
elseif cabbageGetValue:k("flangerInput") == 3 then ;Bare direct, altså ingorer sends
    gaToFlangerL = 0
    gaToFlangerR = 0
endif

aflangermixL = ain + gaToFlangerL ;Blander send signal og direct input
aflangermixR = ain + gaToFlangerR

aDelL vdelay aflangermixL + aFeedL, aLfo, 100 ;Forsinker signalet baser på LFOen i millisekunder
aDelR vdelay aflangermixR + aFeedR, aLfo, 100 

aFeedL = aDelL;Lager feedback loop
aFeedL *= 0.6

aFeedR = aDelR
aFeedR *= 0.6




gaFlangerL += (aDelL+aflangermixL)*kVolum*cabbageGetValue:k("flangertoggle")
gaFlangerR += (aDelR+aflangermixR)*kVolum*cabbageGetValue:k("flangertoggle")

endin

;----------------FILTER------------------
instr FILTER
ain = gaIn

if cabbageGetValue:k("filterInput") == 1 then ;Direct input av, altså bare sends
    ain = 0
elseif cabbageGetValue:k("filterInput") == 3 then ;Bare direct, altså ingorer sends
    gaToFilterL = 0
    gaToFilterR = 0
endif

afiltermixL = ain + gaToFilterL ;Blander send signal og direct input
afiltermixR = ain + gaToFilterR


aFiltL moogladder afiltermixL, cabbageGetValue:k("filterfreq"), cabbageGetValue:k("filterres") ;Filtrerer signalet basert på oppgitte verdier
aFiltR moogladder afiltermixR, cabbageGetValue:k("filterfreq"), cabbageGetValue:k("filterres")


gaFilterL += aFiltL*cabbageGetValue:k("filtertoggle")
gaFilterR += aFiltR*cabbageGetValue:k("filtertoggle")

endin

;-------------STEREO--DELAY--------------

instr DELAY
kVol  cabbageGetValue  "delayvol"
kFeed  cabbageGetValue "delfeed"
kTimeL cabbageGetValue "deltimeL"
kTimeR cabbageGetValue "deltimeR"

ain = gaIn

if cabbageGetValue:k("delayInput") == 1 then ;Direct input av, altså bare sends
    ain = 0
elseif cabbageGetValue:k("delayInput") == 3 then ;Bare direct, altså ingorer sends
    gaToDelayL = 0
    gaToDelayR = 0
endif

aInL = ain + gaToDelayL ;Blander send signal og direct input
aInR = ain + gaToDelayR

aDelayL, aDelayR stdelay aInL, aInR, kVol, kFeed, kTimeL, kTimeR ;Bruker egen stereo-delay opkode
gaDelayL += aDelayL*cabbageGetValue:k("delaytoggle")
gaDelayR += aDelayR*cabbageGetValue:k("delaytoggle")
endin


;-------------STEREO--REVERB--------------
instr REVERB
ain = gaIn

if cabbageGetValue:k("reverbInput") == 1 then ;Direct input av, altså bare sends
    ain = 0
elseif cabbageGetValue:k("reverbInput") == 3 then ;Bare direct, altså ingorer sends
    gaToReverbL = 0
    gaToReverbR = 0
endif

averbmixL = ain + gaToReverbL ;Blander send signal og direct input
averbmixR = ain + gaToReverbR


aL, aR reverbsc averbmixL, averbmixR, cabbageGetValue:k("reverbsize"), cabbageGetValue:k("reverbcut") ;Reverb basert på oppgitte verdier
gaReverbL += aL*cabbageGetValue:k("reverbvol")*cabbageGetValue:k("reverbtoggle")
gaReverbR += aR*cabbageGetValue:k("reverbvol")*cabbageGetValue:k("reverbtoggle")

endin




;-----------------SEND SYSTEM----------------
                 ;Forklaring:
/*
Hvert instrument har mulighet for å få signal fra to kilder: Direct input, og sin egen send kanal
Direkt input er f.eks. mikrofon eller monosignal fra daw eller lignende

Send kanalen til hvert instrument er en miks av alle instrumenter som har valgt å sende signalet sitt
til den spesifike effekten. Det vil si at hvis både delay og reverb sender til filter, så blir
filteret sin send kanal (gaToFilt) lik delaysignal+reverbsignal.

Dette systemet gjør at du kan ha over 120 forskjellige rutinger på effektene dine, og åpner opp for mange
muligheter med tanke på lyddesign. Du kan da også kjøre alle effektene paralelt hvis det er ønsket, slik
at de ikke går gjennom hverandre, men heller går rett til masterkanalen.

*/


instr SENDOUTPUTS ;Må gjøres i eget instrument fordi de globale variablene må sendes tilbake opp i "Chainen" uten å cleares. 
aToChorusL  init 0
aToChorusR  init 0
aToFlangerL init 0
aToFlangerR init 0
aToFilterL  init 0
aToFilterR  init 0
aToReverbL  init 0
aToReverbR  init 0
aToDelayL   init 0
aToDelayR   init 0
 

;---Chorus sends
;1 = Flanger, 2 = Filter, 3 = Delay, 4 = Reverb, 5 = Master
kSend1 cabbageGetValue "chorussend"

if kSend1 == 1 then ;Hvis "send til flanger" er valgt så legges chorus-signalet på send-input kanalen til flanger effekten (altså gaToflanger)
    aToFlangerL += gaChorusL
    aToFlangerR += gaChorusR
elseif kSend1 == 2 then
    aToFilterL  += gaChorusL
    aToFilterR  += gaChorusR
elseif kSend1 == 3 then
    aToDelayL   += gaChorusL
    aToDelayR   += gaChorusR
elseif kSend1 == 4 then
    aToReverbL  += gaChorusL
    aToReverbR  += gaChorusR
elseif kSend1 == 5 then
    gaMasterL    += gaChorusL
    gaMasterR    += gaChorusR
endif

;---Flanger sends
;1 = Chorus, 2 = Filter, 3 = Delay, 4 = Reverb, 5 = Master
kSend2 cabbageGetValue "flangersend"

if kSend2 == 1 then
    aToChorusL += gaFlangerL
    aToChorusR += gaFlangerR
elseif kSend2 == 2 then
    aToFilterL  += gaFlangerL
    aToFilterR  += gaFlangerR
elseif kSend2 == 3 then
    aToDelayL   += gaFlangerL
    aToDelayR   += gaFlangerR
elseif kSend2 == 4 then
    aToReverbL  += gaFlangerL
    aToReverbR  += gaFlangerR
elseif kSend2 == 5 then
    gaMasterL    += gaFlangerL
    gaMasterR    += gaFlangerR
endif
;---Filterns sends
;1 = Chorus, 2 = Flanger, 3 = Delay, 4 = Reverb, 5 = Master
kSend3 cabbageGetValue "filtersend"

if kSend3 == 1 then
    aToChorusL += gaFilterL
    aToChorusR += gaFilterR
elseif kSend3 == 2 then
    aToFlangerL  += gaFilterL
    aToFlangerR  += gaFilterR
elseif kSend3 == 3 then
    aToDelayL   += gaFilterL
    aToDelayR   += gaFilterR
elseif kSend3 == 4 then
    aToReverbL  += gaFilterL
    aToReverbR  += gaFilterR
elseif kSend3 == 5 then
    gaMasterL    += gaFilterL
    gaMasterR    += gaFilterR
endif

;---Delay sends
;1 = Chorus, 2 = Flanger, 3 = Filter, 4 = Reverb, 5 = Master

kSend4 cabbageGetValue "delaysend"
if kSend4 == 1 then
    aToChorusL  += gaDelayL
    aToChorusR  += gaDelayR
elseif kSend4 == 2 then
    aToFlangerL += gaDelayL
    aToFlangerR += gaDelayR
elseif kSend4 == 3 then
    aToFilterL  += gaDelayL
    aToFilterR  += gaDelayR
elseif kSend4 == 4 then
    aToReverbL  += gaDelayL
    aToReverbR  += gaDelayR
elseif kSend4 == 5 then
    gaMasterL    += gaDelayL
    gaMasterR    += gaDelayR
endif

;---Reverb sends
;1 = Chorus, 2 = Flanger, 3 = Filter, 4 = Delay, 5 = Master
kSend5 cabbageGetValue "reverbsend"
if kSend5 == 1 then
    aToChorusL  += gaReverbL
    aToChorusR  += gaReverbR
elseif kSend5 == 2 then
    aToFlangerL += gaReverbL
    aToFlangerR += gaReverbR
elseif kSend5 == 3 then
    aToFilterL  += gaReverbL
    aToFilterR  += gaReverbR
elseif kSend5 == 4 then
    aToDelayL  += gaReverbL
    aToDelayR  += gaReverbR
elseif kSend5 == 5 then
    gaMasterL    += gaReverbL
    gaMasterR    += gaReverbR
endif

;Her sendes send-kanalene til globale variabler, slik at de kan bli brukt i effektene
gaToChorusL  = aToChorusL
gaToChorusR  = aToChorusR
gaToFlangerL = aToFlangerL
gaToFlangerR = aToFlangerR
gaToFilterL  = aToFilterL
gaToFilterR  = aToFilterR
gaToReverbL  = aToReverbL
gaToReverbR  = aToReverbR
gaToDelayL   = aToDelayL
gaToDelayR   = aToDelayR

clear aToChorusL, aToChorusR, aToFlangerL, aToFlangerR, aToFilterL, aToFilterR, aToDelayL, aToDelayR, aToReverbL, aToReverbR ;Nuller ut for å unngå feedback loop

endin



;---------------MASTER--MIX--------------
instr MASTER

kwet cabbageGetValue "drywet" ;Master drywet, gjør at det våte og tørre kontrolleres med en skruknott
kdry = 1-kwet


aMiksL = gaIn*kdry + gaMasterL*kwet
aMiksR = gaIn*kdry + gaMasterR *kwet

;PAN-SYSTEM
kPanL cabbageGetValue "panL"
kPanR cabbageGetValue "panR"


;Pan og autopan, oppfører seg litt rart med tanke på at man autopanner to kanaler, funkerer best hvis man flytter begge kanalene til høyre (altså slår sammen til mono)
if cabbageGetValue:k("autopantoggle") == 1 then
    kPanoscil oscil 1, (cabbageGetValue:k("autopanspeed")*3)
    kPanoscil = (kPanoscil+1)/2 
 else
    kPanoscil = 1
endif

a1, a2 pan2 aMiksL, kPanL*kPanoscil
a3, a4 pan2 aMiksR, kPanR*kPanoscil



outs (a1+a3)*cabbageGetValue:k("mastervol"), (a2+a4)*cabbageGetValue:k("mastervol")
clear gaIn, gaMasterL, gaMasterR, gaChorusL, gaChorusR, gaFlangerL, gaFlangerR, gaFilterL, gaFilterR, gaDelayL, gaDelayR, gaReverbL, gaReverbR ;Clearer globale lydvaribaler for å unngå feedback
endin


</CsInstruments>
<CsScore>
;causes Csound to run for about 7000 years...
f0 z

i "INPUT"   0  z
i "MASTER"  0  z
i "CHORUS"  0  z
i "FLANGER" 0  z
i "FILTER"  0  z
i "DELAY"   0  z
i "REVERB"  0  z
i "SENDOUTPUTS"    0  z

</CsScore>
</CsoundSynthesizer>
