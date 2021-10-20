import controlP5.*;
ControlP5 cp5;

import oscP5.*;
import netP5.*;
OscP5 oscP5;
OscProperties properties;
NetAddress myRemoteLocation;
DropdownList layerSelect, clipSelect, paramSelect, transformSelect, fxSelect, transformLayerSelect;
MyControlListener myListener;

int port = 7000;
String ip = "192.168.1.43";

int W = 350 ;
int H = 700;
float osc1;
int toggleId;
float toggleVal;
int Cantidad;

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
  background(30);
  fill(10);
  rect(0,0,W,130);
  rect(0,H-50,W,50);
  fill(0,255,0,map(osc1,0,1,0,255));
  textAlign(RIGHT);
  textSize(12);
  text("PRESETATOR APP", W-20, H-20 );

  oscilator();
  oscData();
  
  if (cree) {
    //enviarOSC();
  }
}