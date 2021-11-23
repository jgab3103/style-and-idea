

map_interval_to_interval_name <- function(interval) {
  interval_modulus <- interval %% 12
  if (interval_modulus == 1) {
    return('b9th')
  }
  else if (interval_modulus == 2) {
    return('9th')
  }
  else if (interval_modulus == 3) {
    return('#9th/min 3rd')
  }
  else if (interval_modulus == 4) {
    return('maj 3rd')
  }
  else if (interval_modulus == 5) {
    return('11th')
  }
  else if (interval_modulus == 6) {
    return('#11th/b5th')
  }
  else if (interval_modulus == 7) {
    return('5th')
  }
  else if (interval_modulus == 8) {
    return('#5th/b13th')
  }
  else if (interval_modulus == 9) {
    return('13th')
  }
  else if (interval_modulus == 10) {
    return('7th')
  }
  else if (interval_modulus == 11) {
    return('maj 7th')
  }
  
}

map_interval_to_interval_name(11)


map_midi_to_note_name <- function(midi_number) {
  midi_modulus <- midi_number %% 12
  if (midi_modulus == 0) {
    return('C')
  }

  else if (midi_modulus == 1) {
    return('C#/Db')
  }
  else if (midi_modulus == 2) {
    return('D')
  }
  else if (midi_modulus == 3) {
    return('D#/Eb')
  }
  else if (midi_modulus == 4) {
    return('E')
  }
  else if (midi_modulus == 5) {
    return('F')
  }
  else if (midi_modulus == 6) {
    return('F#/Gb')
  }
  else if (midi_modulus == 7) {
    return('G#/Ab')
  }
  else if (midi_modulus == 8) {
    return('A')
  }
  else if (midi_modulus == 9) {
    return('A#/Bb')
  }
  else if (midi_modulus == 10) {
    return('B')
  }
  
    else {
    return("ERROR")
  }
}

map_midi_to_note_name(61)
13 %% 4
