void back () {
  background(30);

  fill(0);
  rect(0, 0, W, 50);
  rect(0, H-50, W, 50);

  textAlign(RIGHT);
  textSize(9);
  fill(0, 110, 255, map(OSC1_Value, 0, 1, 100, 255));
  text("PRESETATOR APP", W-20, 30 );
}