<!-- ---  
title: Music Computing
author: Angela Brennecke
affiliation: Film University Babelsberg KONRAD WOLF
date: Summer term 20
---   -->
**Music Computing - Summerterm 20**

Prof. Dr. Angela Brennecke | a.brennecke@filmuniversitaet.de | Film University Babelsberg *KONRAD WOLF*

--- 


# Tweaking Sounds
   1) Synths
   2) Samples
   3) Live_loops



### Synths


## Envelopes

attack, decay, sustain, release


Verwendet use_bpm (beats per minute), um der Melodie ein Grundtempo zu geben

## loops

Dann könnt ihr über die beiden folgenden “Iterationstypen” angeben, wie oft ein Block wiederholt werden soll
Anzahl.times 
Statt “Anzahl” gebt ihr eine Zahl ein, die bestimmt, wie oft wiederholt werden soll, z.B. 5
loop
Hiermit stellt ihr eine Dauerschleife ein

## synths

Sonic Pi bringt eine Reihe von synthetischen Klängen, sogenannten Synthesizern (“synths”) mit

Diese können über den Aufruf use_synths ausgewählt werden 



## live loops and threading

Um parallele Sequenzen eines Lieds abzuspielen, benötigen wird die live_loop — eine Schleife zum automatischen Jammen
Die live_loop muss immer einen Namen bekommen & bezieht sich auf einen Block

In diesem Beispiel erstellen wir einen “drum beat” names :drums und nutzen ein echtes sample (‘Tonaufnahme’) als Grundlage für den Beat


