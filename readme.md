<!-- ---  
title: Music Computing
author: Angela Brennecke
affiliation: Film University Babelsberg KONRAD WOLF
date: Summer term 20
---   -->
**Music Computing - Summerterm 20**

Prof. Dr. Angela Brennecke | a.brennecke@filmuniversitaet.de | Film University Babelsberg *KONRAD WOLF*

--- 

Welcome to the summer term workshop on music computing with SonicPi:

- [1. Purpose of the Course](#1-purpose-of-the-course)
  - [1.1. Objectives](#11-objectives)
  - [1.2. Resources](#12-resources)
- [2. Overview of the Workshop](#2-overview-of-the-workshop)


# 1. Purpose of the Course

This course builds on the concepts presented in ‘Theoretical Background of Audio and Graphics’ and introduces the software development toolkit ‘SonicPi’ for music computing. We will start with an exploration of the SonicPi IDE and its programming language Ruby. Then we will look into the relevant audio programming concepts that SonicPi implements as well as the musical concepts and capabilites for live music making supported by the toolkit. In this context, we will also look into the different musical genres that can be created using SonicPi. Last but not least we will explore different application scenarios for music computing and live music coding.

## 1.1. Objectives

- Getting to know the concept of music computing with SonicPi 
- Understanding music theory and how it is picked up computationally
- Understanding the difference between music and sound / synths
- Creating an individual piece of music through programming
- Understanding the basic software components of Sonic Pi that build on SuperCollider 
- Getting an introduction into composition

## 1.2. Resources

We will use Github to share communications and materials. For this course, you will need monitor speakers or headphones. Please also  download the following software package and documentation:

- [Sonic Pi](https://sonic-pi.net/)
- [Sonic Pi Tutorial (the documentation that comes with the software)](https://sonic-pi.net/tutorial.html)
- [Sonic Pi Book](https://www.raspberrypi.org/magpi-issues/Essentials_Sonic_Pi-v1.pdf)
- [mehackit Tutorial](https://sonic-pi.mehackit.org)
<!-- - [SuperCollider](https://supercollider.github.io)
- Jack Audio Kit -->


# 2. Overview of the Workshop

1) [Important Notes](scripts/01_important_notes.md)
2) [Introduction](scripts/02_intro.md)
   1) What is Computer Music?
   2) Introduction to SonicPi
   3) Melody, Chord, Songs
3) [Sonic Pi Basics]
   1) Ruby
   2) Notes and Parameters
   3) Loops
   4) Synths 
   5) Exercise


4. Synths (was ist das? wie geht das?), noten, parameter, schleifen, samples
5. Kompositionen
6. Variablen, FX, Random functions
7. Freies Arbeiten (klangcollage!)
8. Freies Arbeiten und Präsentation

- Einstiegsphase: nachprogrammieren eines bekannten stücks
  - schreiben von melodien anhand eines bekannten stücks erarbeiten
  - klangcollage mit samples erstellen
- musikalischer aufbau eines stücks
- loop basierte starke rythmusorientieret musik
- 

audio programming & music computing
- threads
- i/o devices
- real time programming
- sonic pi software components

music theory
- music theory 
- midi notes and notes
- scales, patterns, chords
- music vs silence

timing, looping, threads
- bpm
- play-pattern-timed
- loops and live loops
  - zählschleife 3.times do 
  - endlosschleife loop do 
  - synchronisiert schleife live_loop :name do

sounds, synths, and FX
- sounds and synths
- envelopes
- effects / FX

beats
- beats
- threads



<!-- - 3 Std waren zu lang, Kinder waren am Ende KO
- Melodie bauen hat gut funktioniert, auch das Bauen eines Beats, aber als 2 separate Einheiten; eigentlich hätte es gereicht, wenn ein Teil der Kinder weiter an ihrer Melodie hätte feilen können und ein paar andere Kinder hätten gerne noch neue Sachen dazugelernt
- zunächst vlt stärker Noten, Midi-Noten und den Zusammenhang erklären an Beispielen (Noten & Midi-Noten nebeneinander, Hänschen Klein, etc.)
- dann mit "play 60" und "sleep" spielen und genau erklären, was ist play 60 und was ist sleep (1/4 .. bpm .. etc)
- dann "play\_pattern\_timed" einführen und kommentare und so eine Liedstruktur erstellen
- dann schleifen und wiederholungen und ganz wichtig die klangveränderungen über attack, decay, sustain, release
- verschiedene synths vorstellen, auch schon beispiele bereitstellen
- weitere themen wären dann
- samples und beats bauen
- threads und parallele strukturen (drums, bass melodie, lead melodie ...)
- diese punkte aber eher für fortgeschrittene Kinder -->