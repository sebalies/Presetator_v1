float OSC1_Value;
float OSC1_Value_Angle;
float OSC1_Value_Rate = 0.01;

void OSC1Send() {
  for (int x = 0; x < cuantos; x++) {
    if (leeOSC[x] == 1) {
      cp5.get(Slider.class, "Slider"+x) .setValue(OSC1_Value);
    }
  }
  
}

void OSC1Generate() {
  OSC1_Value = (map(sin(OSC1_Value_Angle), -1, 1, 0, 1));
  cp5.get(Slider.class, "OSC_1_Preview") .setValue(OSC1_Value);

  OSC1_Value_Angle += OSC1_Value_Rate;
}