import controlP5.*;
ControlP5 cp5;

import oscP5.*;
import netP5.*;
OscP5 oscP5;
OscProperties properties;
NetAddress myRemoteLocation;

int port = 7000;
String ip = "192.168.1.43";

int W = 350 ;
int H = 700;

void settings() {
  size(W, H, P3D);
  PJOGL.profile=1;
}

void setup() {
  oscP5 = new OscP5(ip, 7001);
  myRemoteLocation = new NetAddress(ip, port); 
  frameRate(120);
  controls();
}
void draw() {
  back();

  if (cree) {
    lecturaParam();
    OSC1Send();
    //enviarOSC();
  }
}

void back () {
  background(20);

  fill(0);
  rect(0, 0, W, 50);
  rect(0, H-50, W, 50);

  textAlign(RIGHT);
  textSize(9);
  fill(0, 110, 255, map(OSC1_Value, 0, 1, 100, 255));
  text("PRESETATOR APP", W-20, 30 );
}