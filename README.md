░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░███░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░███░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░██░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░██░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░█░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░█░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░█████████░░░░░████░░░░░░░░
░░░░░░░░░░█████░██░░░░░█████░░░█░░░░░░░░
░░░░░░░░██░░░░███░░░░░░░░░█████░░░░░░░░░
░░░░░░░░█░░░███░░░░░░█████░████████░░░░░
░░░░░░░░█████░░░░░░███░░████░░░░░░███░░░
░░░░░░░░░░░░░░░░░░░██░░░█░███████████░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

Chord Memory

Cory Arcangel, 2020-ongoing

coryarcangel.com
arcangelsurfware.biz

Elevator pitch: A vvvv simple chord generator losely based on the "chord memory" function of some keyboards & general off the wall random pitching.

Requires: Open Office, svmidi

optional Excel args:
% - Percentage (of 100%) of likehood that chord will appear
Root transpose - How far up the keyboard the chords will appear
Force score - Wanna hand type a score? Go ahead!
Note length - Length of each note.

Usage:
Function 9 to generate a random score in Open Office. csvmidi chord-memory.csv chord-memory.mid

Commander mode (file names is score): filename=$(awk -F',' 'NR==3 {print $4}' cm.csv); cp cm.csv $filename-cm.csv; csvmidi cm.csv $filename-cm.mid

Arrangement: For each note of 16 ticks, and a drone, place a maj 7th chord on a random note. As for arrangement, tempo, and instrumentation, that is completely up to the performer. For example, the given notes can be transposed, and even all but one in each chord thorwn away. Very flexi! 
