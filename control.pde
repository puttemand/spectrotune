void keyPressed() {
  switch(key) {
    case 's': // save spectrograph and quit
      saveSpectrograph();
      exit();
      break;
    
    case 'e': // turn equalizer on/off
      EQUALIZER_TOGGLE = !EQUALIZER_TOGGLE;
      //fft.equalizer(EQUALIZER_TOGGLE);
      break;
    
    case 'p': // turn PCP on/off
      PCP_TOGGLE = !PCP_TOGGLE;
      break;
      
    case 'o': // turn smoothing on/off
      SMOOTH_TOGGLE = !SMOOTH_TOGGLE;
      if ( SMOOTH_TOGGLE ) {
        //fft.smooth(SMOOTH_TYPE, SMOOTH_POINTS);
      } else {
        //fft.noSmooth();
      }
      break;
    
    case 'v': // turn envelope on/off
      ENVELOPE_TOGGLE = !ENVELOPE_TOGGLE;
      if ( ENVELOPE_TOGGLE ) { 
        //fft.envelope(ENVELOPE_CURVE);
      } else {
        //fft.noEnvelope();
      }
      break;
    
    // Octave Toggles
    case '0':
      OCTAVE_TOGGLE[0] = !OCTAVE_TOGGLE[0];
      break;
    case '1':
      OCTAVE_TOGGLE[1] = !OCTAVE_TOGGLE[1];
      break;
    case '2':
      OCTAVE_TOGGLE[2] = !OCTAVE_TOGGLE[2];
      break;
    case '3':
      OCTAVE_TOGGLE[3] = !OCTAVE_TOGGLE[3];
      break;
    case '4':
      OCTAVE_TOGGLE[4] = !OCTAVE_TOGGLE[4];
      break;
    case '5':
      OCTAVE_TOGGLE[5] = !OCTAVE_TOGGLE[5];
      break;
    case '6':
      OCTAVE_TOGGLE[6] = !OCTAVE_TOGGLE[6];
      break;
    case '7':
      OCTAVE_TOGGLE[7] = !OCTAVE_TOGGLE[7];
      break;
  }
  
  switch(keyCode) {
    case UP:
      PEAK_THRESHOLD += 5;
      break;
      
    case DOWN:
      PEAK_THRESHOLD -= 5;
      break;
      
    case RIGHT:
      SMOOTH_POINTS++;
      if ( SMOOTH_TOGGLE ) {
        //fft.smooth(SMOOTH_TYPE, SMOOTH_POINTS);
      }
      break;
      
    case LEFT:
      if ( SMOOTH_POINTS > 3 ) {
        SMOOTH_POINTS--;
        if ( SMOOTH_TOGGLE ) {
          //fft.smooth(SMOOTH_TYPE, SMOOTH_POINTS);
        }
      }
      break;
  }
}

// ControlP5 events
void controlEvent(ControlEvent event) {
  switch(event.controller().id()) {
    case(1): 
      
      break;
    case(9):
      PEAK_THRESHOLD = (int)(event.controller().value());
      break;
    
  }
}

void radioWeight(int type) {
  WEIGHT_TYPE = type;
}

void togglePCP(boolean flag) {
  PCP_TOGGLE = flag;
}

void oct0(int channel) {
  if (channel > 0) {
    OCTAVE_CHANNEL[0] = channel -1;
  }
}
void oct1(int channel) {
  if (channel > 0) {
    OCTAVE_CHANNEL[1] = channel -1;
  }
}
void oct2(int channel) {
  if (channel > 0) {
    OCTAVE_CHANNEL[2] = channel -1;
  }
}
void oct3(int channel) {
  if (channel > 0) {
    OCTAVE_CHANNEL[3] = channel -1;
  }
}
void oct4(int channel) {
  if (channel > 0) {
    OCTAVE_CHANNEL[4] = channel -1;
  }
}
void oct5(int channel) {
  if (channel > 0) {
    OCTAVE_CHANNEL[5] = channel -1;
  }
}
void oct6(int channel) {
  if (channel > 0) {
    OCTAVE_CHANNEL[6] = channel -1;
  }
}
void oct7(int channel) {
  if (channel > 0) {
    OCTAVE_CHANNEL[7] = channel -1;
  }
}

