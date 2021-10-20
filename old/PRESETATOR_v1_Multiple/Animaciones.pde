void OSC1Send() {
  OSC1_Value = (map(sin(OSC1_Value_Angle), -1, 1, 0, 1));
  cp5.get(Slider.class, "OSC_1_Preview") .setValue(OSC1_Value);

  OSC1_Value_Angle += OSC1_Value_Rate;
  
  for (int x = 0; x < cuantos; x++) {
    if (leeOSC[x] == 1) {
      cp5.get(Slider.class, "Slider"+x) .setValue(OSC1_Value);
    }
  }
  OSC1_Value_Angle += OSC1_Value_Rate;
}