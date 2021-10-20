float OSC1_Value, OSC2_Value, OSC3_Value;
float OSC1_Value_Angle, OSC2_Value_Angle, OSC3_Value_Angle;
float OSC1_Value_Rate, OSC2_Value_Rate, OSC3_Value_Rate = 0.01;
float OSC1_Value_Offset, OSC2_Value_Offset, OSC3_Value_Offset;

float time = 0;
float TIMELINE_1_Value, TIMELINE_1_Speed;
int TIMELINE_RandBot = 0;

void OSC1Send() {
  for (int x = 0; x < cuantos; x++) {
    if (leeOSC1[x] == 1) {
      cp5.get(Slider.class, "Slider"+x) .setValue(OSC1_Value);
    }
    if (leeOSC2[x] == 1) {
      cp5.get(Slider.class, "Slider"+x) .setValue(OSC2_Value);
    }
    if (leeOSC3[x] == 1) {
      cp5.get(Slider.class, "Slider"+x) .setValue(OSC3_Value);
    }
  }
}

void TIMELINE1Send() {
  for (int x = 0; x < cuantos; x++) {
    if (leeTIMELINE1[x] == 1) {
      cp5.get(Slider.class, "Slider"+x) .setValue(TIMELINE_1_Value);
    }
  }
}

void TIMELINEGenerate() {

  TIMELINE_1_Value = (TIMELINE_1_Value+TIMELINE_1_Speed) % 1;

  if (TIMELINE_1_Value < 0) {      // SENTIDO VELOCIDAD
    TIMELINE_1_Value = map(TIMELINE_1_Value, -1, 0, 0, 1);
  }
  if (TIMELINE_RandBot == 1) {
    TIMELINE_1_Value = random(0, 1);
  }


  cp5.get(Slider.class, "TIMELINE_1_Preview") .setValue(TIMELINE_1_Value);
}

void OSCGenerate() {
  if (OSC1Select == 0) { 
    OSC1_Value = (map(sin(OSC1_Value_Angle + OSC1_Value_Offset), -1, 1, 0, 1));
  }
  if (OSC1Select == 1) { 
    OSC1_Value = (map(cos(OSC1_Value_Angle + OSC1_Value_Offset), -1, 1, 0, 1));
  }
  if (OSC1Select == 2) { 
    OSC1_Value = (map(tan(OSC1_Value_Angle + OSC1_Value_Offset), -1, 1, 0, 1));
  }  
  if (OSC1Select == 3) { 
    OSC1_Value = (map(tan(OSC1_Value_Angle + OSC1_Value_Offset), -1, 1, 1, 0));
  }  


  if (OSC2Select == 0) { 
    OSC2_Value = (map(sin(OSC2_Value_Angle + OSC2_Value_Offset), -1, 1, 0, 1));
  }
  if (OSC2Select == 1) { 
    OSC2_Value = (map(cos(OSC2_Value_Angle + OSC2_Value_Offset), -1, 1, 0, 1));
  }
  if (OSC2Select == 2) { 
    OSC2_Value = (map(tan(OSC2_Value_Angle + OSC2_Value_Offset), -1, 1, 0, 1));
  }  
  if (OSC2Select == 3) { 
    OSC2_Value = (map(tan(OSC2_Value_Angle + OSC2_Value_Offset), -1, 1, 1, 0));
  } 


  if (OSC3Select == 0) { 
    OSC3_Value = (map(sin(OSC3_Value_Angle + OSC3_Value_Offset), -1, 1, 0, 1));
  }
  if (OSC3Select == 1) { 
    OSC3_Value = (map(cos(OSC3_Value_Angle + OSC3_Value_Offset), -1, 1, 0, 1));
  }
  if (OSC3Select == 2) { 
    OSC3_Value = (map(tan(OSC3_Value_Angle + OSC3_Value_Offset), -1, 1, 0, 1));
  }  
  if (OSC3Select == 3) { 
    OSC3_Value = (map(tan(OSC3_Value_Angle + OSC3_Value_Offset), -1, 1, 1, 0));
  } 


  cp5.get(Slider.class, "OSC_1_Preview") .setValue(OSC1_Value);
  cp5.get(Slider.class, "OSC_2_Preview") .setValue(OSC2_Value);
  cp5.get(Slider.class, "OSC_3_Preview") .setValue(OSC3_Value);

  OSC1_Value_Angle += OSC1_Value_Rate;
  OSC2_Value_Angle += OSC2_Value_Rate;
  OSC3_Value_Angle += OSC3_Value_Rate;
}