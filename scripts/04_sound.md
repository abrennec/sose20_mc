<!-- ---  
title: Music Computing
author: Angela Brennecke
affiliation: Film University Babelsberg KONRAD WOLF
date: Summer term 20
---   -->
**Music Computing - Summerterm 20**

Prof. Dr. Angela Brennecke | a.brennecke@filmuniversitaet.de | Film University Babelsberg *KONRAD WOLF*

--- 

- [Tweaking Sounds](#tweaking-sounds)
- [Synthesis vs Sampling](#synthesis-vs-sampling)
  - [Sound Parameters](#sound-parameters)
    - [Audio Envelopes](#audio-envelopes)
      - [Synthesis Envelopes](#synthesis-envelopes)
      - [Sampling Envelopes](#sampling-envelopes)
    - [Further Sound Parameters](#further-sound-parameters)
  - [Practical Exercises](#practical-exercises)
    - [Exercise 1](#exercise-1)
    - [Exercise 2](#exercise-2)
- [FX](#fx)
  - [Practical Exercises](#practical-exercises-1)
    - [Exercise 1](#exercise-1-1)
    - [Exercise 2](#exercise-2-1)

# Tweaking Sounds

Let us start with a few music examples:

- [David August](https://www.youtube.com/watch?v=cwL_CIhS9Qs)
- [Christian Löffler](https://www.youtube.com/watch?v=OijrlItssOc)
- [Alfa Mist](https://www.youtube.com/watch?v=BVO_R8uvMhE)

Listen carefully to the examples and jot down what you notice in terms of melody, chord, song structure, whatever.


# Synthesis vs Sampling

With Sonic Pi, it is also possible to change the synths as well as the sample sounds themselves which is really getting into the two different fields of **sound synthesis** and **sampling**. The former is generally about creating or rather synthesizing new sounds algorithmically with the help of a computer. The latter is about using, editing and modifying pre-recorded samples with the help of a computer in order to create new sounds. 

In Sonic Pi, synthesis and sampling is supported by changing the sound parameters of the sounds you load with the **play** and **sample** commands. 


## Sound Parameters

### Audio Envelopes

One essential aspect of tweaking sounds in this context is the ADSR envelope which is used to shape the sound's *timbre*. ADSR means

- **attack**: time from 0 amplitude to the attack_level (by default attack level equals 1),
- **decay**: time to move amplitude from attack_level to decay_level,
- **sustain**: time to move the amplitude from decay_level to sustain_level,
- **release**: time to move amplitude from sustain_level to 0

These terms and their meaning in the context of shaping sounds is illustrated in the following image:

![drum kit extended](../assets/env-attack-decay-sustain-release.png)
*Image source: Sonic pi documentation*

The ADSR envelope allows you to control the duration as well as the amplitude of a sound that you want to play back. The values that you can specify for attack, decay, sustain and release are time values in seconds. 

#### Synthesis Envelopes

By default every synth in Sonic Pi has a **total playback time of 1 second**. The attack parameter is set to 0, i.e., hits an amplitude of 1 immediately. The release parameter is set to 1 second, and the decay and sustain parameters are both set to 0 seconds as well.


```ruby

play 60, attack: 0, decay: 0, sustain: 0, release: 1 # default playback parameters for any synth

```

Whenever you want to specify the envelope parameters manually, you can freely adjust the parameters. In addition to the duration of each parameter, you can also adjust the level per parameter. Check out the following two examples:

```ruby

live_loop :test do
  play 60, attack: 0.2, decay: 0.3, sustain: 2, release: 0.2
  sleep 4
end

```

```ruby

play 60, attack: 0.1, attack_level: 1, decay: 0.2, sustain_level: 0.4, sustain: 1, release: 0.5

```

#### Sampling Envelopes

If you work with samples instead of synths, the duration is generally depending on the sample file that you use. Here, Sonic Pi sets the values differently and as described in the Sonic Pi documenation on [Enveloped Samples](https://sonic-pi.net/tutorial.html#section-3-4):

> Where the ADSR envelope’s behaviour differs from the standard synth envelope is in the sustain value. In the standard synth envelope, the sustain defaulted to 0 unless you set it manually. With samples, the sustain value defaults to an automagical value - the time left to play the rest of the sample. This is why we hear the full sample when we pass no defaults. If the attack, decay, sustain and release values were all 0 we’d never hear a peep. Sonic Pi therefore calculates how long the sample is, deducts any attack, decay and release times and uses the result as your sustain time. If the attack, decay and release values add up to more than the duration of the sample, the sustain is simply set to 0.  

In order to set the envelope for samples, it will thus be helpful to find out how long the sample actually is. This can be achieved using the sample_duration command:

```ruby

print sample_duration :loop_amen

```

Now that you know how long a sample is, you can either work with the information programmatically or manually, i.e., by simply using the printed information and setting the parameters directly.

```ruby

sample :loop_amen, attack: 0.75, release: 0.75

```

Alternatively, you might want to use a variable to keep things more flexible:

```ruby

# you might as well store this information in a variable ... 
duration = sample_duration :loop_amen 

# ... and use it in the code like this
sample :loop_amen, attack: (duration / 2), release: (duration / 2)

```

See also this documation on [duration with envelopes](https://sonic-pi.net/tutorial.html#section-2-4) and this documenation on [enveloped samples](https://sonic-pi.net/tutorial.html#section-2-4) for more information.

### Further Sound Parameters 

In the Sonic Pi help window you can find an overview of all synths and samples that are provided by Sonic Pi by default. Check out the different synths and sample groups to find out about the Sonic Pi library. 

With the synths packs, it is mostly envelope parameters that can be changed. There is however one other parameter that is of interest:

- **cutoff**: Midi note, represents highest frequencies allowed to be present in the sound
- **mod_**: modulation parameters

With the sample packs, there are many other parameters of interest. For example, check out the following parameters:

- **amp**: amplitude
- **pan**: position in stereo image
- **rate**: play back rate
- **start**: value between 0 and 1 that represents the starting point of sample for play back (0 start of sample, 1 end of sample)
- **finish**: same as "start:" but for defining the stop of play back 
- **pitch**: as the name suggests : ) pitch adjustment of the sample in semitones spanning over two octaves above and below the sample
- **onset**: feature detection on the sample, see example below

A very interesting functionality is provided by **onset** parameter. This option does a feature detection on the wave file and stores all significantly different features (mostly used with drum loops) in a list. You can pick from that list and create a unique sampled beat:

```ruby

live_loop :jungle do
  sample :loop_amen, onset: pick # use 0, 1, 2, 3 ... instead of pick
  sleep 0.125
end

```

Some notes on onset from the Sonic Pi documentation: 

> In the 90s a number of music scenes burst out of new technology which enabled artists to take drum breaks like this apart and reassemble in a different order. [...] In this example we introduce a basic loop called :jungle which picks a random drum hit from our audio sample, waits for an eighth of a second and then picks another drum hit. This results in an endless stream of random drum beats to dance to whilst you experience what a loop is.


## Practical Exercises

### Exercise 1

Go to the code examples in the folder session_03 of the code folder and review / replay the examples. Change the examples and make use of the envelope as well as of the sound parameters described in this section. Come up with your own variations and get familiar with the different sound parameters.

### Exercise 2

Go back to the track that you have developed in the previous session on beats. The track was intended to be composed of classical sound elements (drum samples and chord progressions). Now use it as a basis for an electronic track and change the synths and samples you used with other elements from Sonic Pi. For example, make use of the loop_ samples and the onset function in order to create an interesting beat. Or, play around and specify different synths using the envelope parameters.

Take another listen to the music examples we listened to at the beginning of this session. Try to identify certain elements that you may have used in the code yourselves and/or that you would like to implement. What exactly would you like to implement yourselves? How did you approach your ideas?

# FX

Audio FX (or effects) are very central elements to further modify the sound of individual components as well as the overall sound of the song. FX are often used in traditional mixing workflows to create a spatial arrangement of the different instruments, for example. The topic of audio FX is a huge field of research and application. Here we will simply listen to a few common FXs and how they will affect your song and track. The following code examples will be discussed in class:

```ruby

with_fx :echo, phase: 0.4, decay: 4, mix: 0.75 do
  
  play (ring 60).tick
  
end

```

```ruby

with_fx :reverb, room: 0.3 do
  
  9.times do
    play (ring 60, 62, 64).tick
    sleep 0.25
  end
  
end

```

```ruby

with_fx :distortion, distort: 0.7 do
  
  9.times do
    play (ring 60, 62, 64).tick
    sleep 0.25
  end
  
end

```

FX can well be integrated into a musical piece in order to add a certain mood or to add a certain depth of the musical instruments and / or components. For instance, echo and reverb can be added to a specific instrument or component in order to create an impression of depth (an instrument far away) or closeness (an instrument close to the listener). Listen to the following examples to get an impression of what is meant by this:



Sonic Pi provides a large list of audio FX that can be used and experimented with and it will be your task now to explore and play with some of the FX. In particular, check out the following FX

See also this [tutorial](https://www.youtube.com/watch?v=G1L2gAyfohw&list=PLaitaNxyd8SHvTQjRGnMdKLsARXW7iYyp&index=13).

## Practical Exercises

### Exercise 1

Check out the Sonic Pi documentation on FX and play around with the FX presented in this session as well as in the documentation. Select one or two FX and add the to your song to enhance the sounds.

### Exercise 2

Sonic Pi also provides the feature of recording. Once you have finalized your music computing experiments, press record and produce your first song with Sonic Pi.