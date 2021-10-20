color CompBackgroundColor = color(20);
color CompColorActive = color(250, 0, 0);
color CompColorForeground = color(150, 80, 80);
color CompColorBackground = color(70,20,20);

color LayerBackgroundColor = color(20);
color LayerColorActive = color(0, 250, 0);
color LayerColorForeground = color(80, 150, 80);
color LayerColorBackground = color(20, 70,20);

color ClipBackgroundColor = color(20);
color ClipColorActive = color(0, 0, 250);
color ClipColorForeground = color(80, 80, 150);
color ClipColorBackground = color(20,20,70);

void controls() {

  cp5 = new ControlP5(this); 

  // ADD PARAMETERS ------------------------------


  cp5.addTextlabel("COMPOSITION")  // -----------------------// COMPOSITION 
    .setText("COMPOSITION")
    .setColorValue(CompColorActive)
    .setPosition(20, 20)
    .setColorValue(0xffffffff)
    ; 

  cp5.addButton("AddCompOpacity")
    .setLabel("+")
    .setPosition(10, 40)
    .setSize(10, 10)
    .setColorActive(CompColorActive)
    .setColorForeground(CompColorForeground)
    .setColorBackground(CompColorBackground)
    ;
  cp5.addTextlabel("AddCompOpacity_label")
    .setText("OPACITY")
    .setPosition(20, 40)
    .setColorValue(0xffffffff)
    ; 

  cp5.addButton("AddCompTansform")
    .setLabel("+")
    .setPosition(10, 60)
    .setSize(10, 10)
    .setColorActive(CompColorActive)
    .setColorForeground(CompColorForeground)
    .setColorBackground(CompColorBackground)
    ;
  cp5.addTextlabel("AddCompTansform_label")
    .setText("TRANSFORM")
    .setPosition(20, 60)
    .setColorValue(0xffffffff)
    ;

  cp5.addButton("AddCompFx")
    .setLabel("+")
    .setPosition(10, 80)
    .setSize(10, 10)
    .setColorActive(CompColorActive)
    .setColorForeground(CompColorForeground)
    .setColorBackground(CompColorBackground)
    ;
  cp5.addTextlabel("AddCompFx_label")
    .setText("FX")
    .setPosition(20, 80)
    .setColorValue(0xffffffff)
    ;


  cp5.addTextlabel("LAYER") // -----------------------// LAYER 
    .setText("LAYER")
    .setColorValue(LayerColorActive)
    .setPosition(120, 20)
    .setColorValue(0xffffffff)
    ; 

  cp5.addButton("AddLayerOpacity")
    .setLabel("+")
    .setPosition(110, 40)
    .setSize(10, 10)
    .setColorActive(LayerColorActive)
    .setColorForeground(LayerColorForeground)
    .setColorBackground(LayerColorBackground)
    ;
  cp5.addTextlabel("AddLayerOpacity_label")
    .setText("OPACITY")
    .setPosition(120, 40)
    .setColorValue(0xffffffff)
    ; 

  cp5.addButton("AddLayerTansform")
    .setLabel("+")
    .setPosition(110, 60)
    .setSize(10, 10)
    .setColorActive(LayerColorActive)
    .setColorForeground(LayerColorForeground)
    .setColorBackground(LayerColorBackground)
    ;
  cp5.addTextlabel("AddLayerTansform_label")
    .setText("TRANSFORM")
    .setPosition(120, 60)
    .setColorValue(0xffffffff)
    ;

  cp5.addButton("AddLayerFx")
    .setLabel("+")
    .setPosition(110, 80)
    .setSize(10, 10)
    .setColorActive(LayerColorActive)
    .setColorForeground(LayerColorForeground)
    .setColorBackground(LayerColorBackground)
    ;
  cp5.addTextlabel("AddLayerFx_label")
    .setText("FX")
    .setPosition(120, 80)
    .setColorValue(0xffffffff)
    ;


  cp5.addTextlabel("CLIP") // -----------------------// CLIP 
    .setText("CLIP")
    .setColorValue(ClipColorActive)
    .setPosition(220, 20)
    .setColorValue(0xffffffff)
    ; 

  cp5.addButton("AddClipOpacity")
    .setLabel("+")
    .setPosition(210, 40)
    .setSize(10, 10)
    .setColorActive(ClipColorActive)
    .setColorForeground(ClipColorForeground)
    .setColorBackground(ClipColorBackground)
    ;
  cp5.addTextlabel("AddClipOpacity_label")
    .setText("OPACITY")
    .setPosition(220, 40)
    .setColorValue(0xffffffff)
    ; 

  cp5.addButton("AddClipTansform")
    .setLabel("+")
    .setPosition(210, 60)
    .setSize(10, 10)
    .setColorActive(ClipColorActive)
    .setColorForeground(ClipColorForeground)
    .setColorBackground(ClipColorBackground)
    ;
  cp5.addTextlabel("AddClipTansform_label")
    .setText("TRANSFORM")
    .setPosition(220, 60)
    .setColorValue(0xffffffff)
    ;

  cp5.addButton("AddClipFx")
    .setLabel("+")
    .setPosition(210, 80)
    .setSize(10, 10)
    .setColorActive(ClipColorActive)
    .setColorForeground(ClipColorForeground)
    .setColorBackground(ClipColorBackground)
    ;
  cp5.addTextlabel("AddClipFx_label")
    .setText("FX")
    .setPosition(220, 80)
    .setColorValue(0xffffffff)
    ;

  cp5.addButton("AddClipParam")
    .setLabel("+")
    .setPosition(210, 100)
    .setSize(10, 10)
    .setColorActive(ClipColorActive)
    .setColorForeground(ClipColorForeground)
    .setColorBackground(ClipColorBackground)
    ;
  cp5.addTextlabel("AddClipParam_label")
    .setText("PARAM")
    .setPosition(220, 100)
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