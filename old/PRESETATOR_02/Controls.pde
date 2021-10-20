void controls() {

  cp5 = new ControlP5(this); 

  cp5.addButton("AddCompOpacity")
    .setLabel("+")
    .setPosition(20, 20)
    .setSize(10, 10)
    ;
  cp5.addTextlabel("AddCompOpacity_label")
    .setText("COMP OPACITY")
    .setPosition(35, 20)
    .setColorValue(0xffffffff)
    ; 
    
  // ANIMACION ------------------------------

  cp5.addSlider("osc1_rate")
    .setPosition(20, H-35)
    .setRange(0, 1)
    .setValue(0.01)
    ;  
  cp5.addSlider("osc")
    .setPosition(20, H-20)
    .setRange(0, 1)
    ;

  myListener = new MyControlListener();
}

class MyControlListener implements ControlListener {
  int val;
  int id;
  public void controlEvent(ControlEvent theEvent) {
    println("i got an event from myToggle "+
      theEvent.getController().getId()+" to Value "+
      theEvent.getController().getValue());
    val = (int)theEvent.getController().getValue();
    id = (int)theEvent.getController().getId();
  }
}