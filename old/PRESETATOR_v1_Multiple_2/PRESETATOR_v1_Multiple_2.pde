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
  OSC1Generate();
  lecturaParam();

  if (cree) {
    OSC1Send();
    enviarOSC();
  }
}