float osc1_angle;
float osc1_rate = 0.01;

void oscilator() {                                                   
  osc1 = (map(sin(osc1_angle), -1, 1, 0, 1));
  osc1_angle += osc1_rate;
  cp5.get(Slider.class, "osc") .setValue(osc1);
}