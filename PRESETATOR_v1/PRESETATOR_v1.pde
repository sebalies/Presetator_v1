import controlP5.*;
import oscP5.*;
import netP5.*;

ControlP5 cp5;
OscP5 oscP5;
OscProperties properties;
NetAddress myRemoteLocation;

DropdownList OSCSelect;

int port = 7000;
String ip = "192.168.0.158";

int W = 380 ;
int H = 700;

void settings() {
  size(W, H, P3D);
  PJOGL.profile = 1;
}

void setup() {
  oscP5 = new OscP5(ip, 7001);
  myRemoteLocation = new NetAddress(ip, port); 
  frameRate(120);
  controls();
}

void draw() {
  back();
  OSCGenerate();
  TIMELINEGenerate();
  lecturaParam();

  if (cree) {
    OSC1Send();
    TIMELINE1Send();
    enviarOSC();
  }
}
