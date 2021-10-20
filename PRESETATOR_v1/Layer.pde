int cabeceraW = W;
int cabeceraH = 50;
int paramW = W;
int paramH = 30;
int pieW = W;
int pieH = 100;
int pieY = H-pieH;
int logoSize = 20;


void back () {
  background(0);

  rectMode(CORNER);    // CABEZERA Y PIE
  fill(0);                      
  rect(0, 0, cabeceraW, cabeceraH);
  //rect(0, pieY, pieW, pieH);
  fill(60);               
  rect(0, pieY, pieW, 1);
  rect(0, cabeceraH, paramW, paramH);

  fill(255);    // LOGO
  strokeWeight(0);
  fill(map(OSC1_Value, 0, 1, 100, 255), map(OSC2_Value, 0, 1, 100, 255), map(OSC3_Value, 0, 1, 100, 255));
  textAlign(RIGHT);            
  textSize(12);
  text("PRESETATOR", cabeceraW - 20, (cabeceraH/2)+4 );

  fill(0);
  rect((cabeceraW-logoSize), cabeceraH/2, (logoSize/3)*2, (logoSize/6));
  rect((cabeceraW-logoSize), cabeceraH/2, (logoSize/6), (logoSize/3)*2);
}
