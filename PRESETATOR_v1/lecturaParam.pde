float[] leeON = new float [1];
float[] leeOSC1 = new float [1];
float[] leeOSC2 = new float [1];
float[] leeOSC3 = new float [1];
float[] leeTIMELINE1 = new float [1];
int cuantos;


void lecturaParam() {
  cuantos = posParam;

  if (cuantos >=1) {
    for (int check = 0; check < cuantos; check++) {
      float ON = 0;
      float OSC1 = 0;
      float OSC2 = 0;
      float OSC3 = 0;
      float TIMELINE1 = 0;
      
      leeON = (float[]) append(leeON, int(ON));
      leeOSC1 = (float[]) append(leeOSC1, int(OSC1));
      leeOSC2 = (float[]) append(leeOSC2, int(OSC2));
      leeOSC3 = (float[]) append(leeOSC3, int(OSC3));
      leeTIMELINE1 = (float[]) append(leeTIMELINE1, int(TIMELINE1));
      
      leeON[check] = cp5.get(Toggle.class, "on"+check) .getValue();
      leeOSC1[check] = cp5.get(Toggle.class, "OSC1"+check) .getValue();
      leeOSC2[check] = cp5.get(Toggle.class, "OSC2"+check) .getValue();
      leeOSC3[check] = cp5.get(Toggle.class, "OSC3"+check) .getValue();
      leeTIMELINE1[check] = cp5.get(Toggle.class, "TIMELINE"+check) .getValue();
    }
  }
}