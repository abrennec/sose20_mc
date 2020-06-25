<!-- ---  
title: Music Computing
author: Angela Brennecke
affiliation: Film University Babelsberg KONRAD WOLF
date: Summer term 20
---   -->
**Music Computing - Summerterm 20**

Prof. Dr. Angela Brennecke | a.brennecke@filmuniversitaet.de | Film University Babelsberg *KONRAD WOLF*

--- 


# Introduction

   1) What is Computer Music?
   2) Introduction to SonicPi
   3) Melody, Chord, Songs

## What is Computer Music?



## Introduction to Sonic Pi

According to [mehackit](http://sonic-pi.mehackit.org/exercises/en/01-introduction/01-introduction.html), 

> Sonic Pi is an open-source programming environment, designed to explore and teach programming concepts through the process of creating new sounds. It’s a free live coding synth for everyone created by Sam Aaron at the University of Cambridge Computer Laboratory. You can use Sonic Pi to program, compose and perform in classical and contemporary styles ranging from Canons to Dubstep.

Sonic Pi has been developed for kids to learn how to program as well as to get a different view on music. Sonic Pi can also be used by professional musicians to create music as well as to do live coding. What we will explore first, is the user interface and the very basic commands.

Sonic Pi is based on the [ruby language](https://ruby-doc.org). You can use ruby to code your music. Find the most fundamental ruby functions in the accompanied [code folder](../code/ruby_language_nutshell/).


### Interface

- User interface 
- Editor windows
- Documentation and help window
- Device parameters and preferences

Learn the [Sonic Pi shortcuts](https://sonic-pi.net/tutorial.html#section-B-1) to be more efficient.


### Play Command

- "play" command
  - Play a note at a time
  - Play numerous notes simultaneously 
  - Play command calls inbuilt synths
- "sleep" command
  - Add a "pause" to the sequence of notes
  - Create melody

See also this [tutorial](https://www.youtube.com/watch?v=DkbEWmg6oI0&list=PLaitaNxyd8SHvTQjRGnMdKLsARXW7iYyp&index=2).

#### MIDI Notes vs Letter Name Notes

MIDI notes range from 0 to 127 and represent classical letter  names used for musical notes as depicted here:

![midi notes](../assets/midi_notes.png)
*Image source: https://sonic-pi.mehackit.org/exercises/en/01-introduction/02-play-a-melody.html*


```ruby

play 60      # == C4
sleep 0.25
play D6      # == 86
sleep 0.25
play A3      # == 57

```

See also this [tutorial](https://www.youtube.com/watch?v=Yy00YaAfFTA&list=PLaitaNxyd8SHvTQjRGnMdKLsARXW7iYyp&index=3).


You might also use **variables**:


```ruby

# Play calls inbuilt synths and plays a note
# 60 == C4
# 62 == D4 ....

mynote = "C4"
# mynote = 60

play mynote, amp: 2
play 62 + 2 + 4

```

```ruby

# To display the content of a variable use
puts mynote
print mynote

```

## Melody, Chords and Songs

Music is strongly based on the harmonic (or disharmonic) interplay of **melody** and **chords**. Melody and chords are usually closely related through **scales**. 

### Scales 

**A scale** is a specific sequence of notes or, to be more precise, note intervals. An interval is the distance between two notes:

1) Root note
2) Second
3) Third (tertian)
4) Fourth
5) Fifth 
6) Sixth 
7) Seventh
8) Eigth or octave


Most prominent examples of scales in Western music are 

- Major scale (major third and major seventh)
- Minor scale (minor third and minor seventh)


 Let's find out with an [interactive example](https://sonic-pi.mehackit.org/exercises/en/09-keys-chords-and-scales/01-piano.html).

### Melody

**Melodies** are often based on a certain scale but can be any kind of sequence of single notes.

```ruby

play 60      # == C4
sleep 0.25
play D6      # == 86
sleep 0.25
play A3      # == 57

```

### Chords

**Chords** are combinations of notes played back at the same time or - also - in a sequential form as an **arpeggio** or **broken chord**. Chords are built based on the individual notes of a specific scale, for example, the major scale or the minor scale. A chord is then built by simply stacking notes on top of each other in thirds:

- Root note 1
- Third 3
- Fifth 5

Chords can then be further extended with 

- Seventh 7
- Ninth 9 (which is the second note of the next octave)
- Eleventh 11 (the fourth note of the next octave)
- Thirteenth 13 (the sixth note of the next octave)

If you talk about chords in the context of scales, you usually do not refer to the scale of the chord but rather in which key it is, i.e., **major key** or **minor key**. 

```ruby

play 60      # == C4
play 64      # == E4
play 67      # == G4

```

```ruby

play chord(:D, minor)
sleep 0.25
play chord(:A5, major)

```

**Chord progressions** are commonly (or uncommonly) used sequences of chords that can make up a song. These are often repeated. To achieve this programmatically, you can use loops in Sonic Pi.

```ruby

4.times do
  4.times do
    play :C4
    sleep 0.25
  end
  play chord(:D, minor)
  sleep 0.5
  play chord(:G, major)
  sleep 0.5
end

```

See also this [tutorial](https://sonic-pi.mehackit.org/exercises/en/01-introduction/03-loop-a-melody.html).


### Songs

**Songs** - as you will know - are simple or more complex compositions that often use melodies, chords and rythmic elements like beats that follow a specific of free-floating structure. In Western pop music, you will often find these types of components in a song:

- intro
- verse
- chorus
- bridge
- outro/end

In ruby, you can, for example, use methods to specify the components and play them back by calling the method names:

```ruby

# Global variable in ruby
$count = 0

testvar = play 67

# Method definition in ruby
def verse
  2.times do
    var = (scale :c3, :major)
    count = (inc count) # local variable!!
    count
    play var.pick
    sleep 0.2
   
  end
end


def intro
  
  puts $count
  play 56
end


# Super simple song

intro()
sleep 0.3
verse()
sleep 0.25
verse()

```

### Practical Example

Checkout the first example folder in the code folder for your first practical example.

#### Exercise 1
Open Sonic Pi and play with the introduced commands to playback notes, chords, and simply loops.

#### Exercise 2
To make the melodies a bit more interesting, change the playback rate by using "**use_bpm**" and set it to 130
 
```ruby

use_bpm 130

play 60      # == C4
sleep 0.25
play D6      # == 86
sleep 0.25
play A3      # == 57

```
#### Exercise 3
Try to change the sound of the synth you use by adding the "use_synth" command and check out this code example:

```ruby

use_synth :chipbass

4.times do
  
  play (scale :c3, :minor).tick
  sleep 0.25
end

```
Here, you can also use the "scale" command in conjunction with a specific root note (C3) and key (minor). Use the documentation of Sonic Pi to learn about the 

- the "scale" command
- the "ring" data structure and finally
- the "tick" command 

#### Exercise 4

Check out the file satisfaction_riff.rb in the code folder and listen to the [song on youtube](https://www.youtube.com/watch?v=OZ8GZ3PFVGM). Try to figure out the riff and change it such it sounds similar to the song.

#### Exercise 5

Pick a song that you like that has a decisive melody and try to figure our the sequence of notes. To figure out the very first (or all) note(s), use this [piano](https://sonic-pi.mehackit.org/exercises/en/09-keys-chords-and-scales/01-piano.html) or this [piano](https://www.apronus.com/music/flashpiano.htm).

Here are some further examples:

- Twinkle, twinkle, little star (starts with "Db4")
- 