
# you might as well store this information in a variable ...
duration = sample_duration :loop_amen

# ... and use it in the code like this
sample :loop_amen, attack: (duration / 2), release: (duration / 2)