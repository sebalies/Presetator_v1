float[] leeON = new float [1];
float[] leeOSC = new float [1];
int cuantos;
float OSC1_Value;
float OSC1_Value_Angle;
float OSC1_Value_Rate = 0.01;

void lecturaParam() {
  cuantos = posParam;

  if (cuantos == 0) {
    float ON = cp5.get(Toggle.class, "on"+cuantos) .getValue();
    float OSC1 = cp5.get(Toggle.class, "OSC1"+cuantos) .getValue();
    leeON[cuantos] = int(ON);
    leeOSC[cuantos] = int(OSC1);

  } else if (cuantos >=1) {
    for (int check = 0; check < cuantos; check++) {
      float ON = 0;
      float OSC1 = 0;
      leeON = (float[]) append(leeON, int(ON));
      leeOSC = (float[]) append(leeOSC, int(OSC1));
      leeON[check] = cp5.get(Toggle.class, "on"+check) .getValue();
      leeOSC[check] = cp5.get(Toggle.class, "OSC1"+check) .getValue();
    }
  }
}