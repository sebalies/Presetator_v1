void controls() {

  cp5 = new ControlP5(this); 

  cp5.addButton("AddParamBot")  // ADD PARAMETROS ----------------------
    .setLabel("+")
    .setPosition(20, 20)
    .setSize(10, 10)
    ;
  cp5.addTextlabel("AddParamBot_label")
    .setText("ADD PARAM")
    .setPosition(35, 20)
    .setColorValue(0xffffffff)
    ;   

    cp5.addSlider("OSC_1_Preview")  // OSC 1 ----------------------
    .setLabel("OSC 1")
    .setLabelVisible(false)
    .setPosition(20, H-30)
    .setSize(100,2)
    .setRange(0, 1)
    ;
  
  cp5.addSlider("OSC1_Value_Rate")  
  .setLabel("OSC1-RATE")
    .setPosition(20, H-20)
    .setRange(0, 1)
    .setValue(0.01)
    ;  

    
  cp5.addButton("Param1Load")  // PRESETS ----------------------
    .setLabel("+")
    .setPosition(W-100, H-20)
    .setSize(10, 10)
    ;
   cp5.addButton("Param2Load")
    .setLabel("+")
    .setPosition(W-80, H-20)
    .setSize(10, 10)
    ;
 cp5.addButton("Param3Load")
    .setLabel("+")
    .setPosition(W-60, H-20)
    .setSize(10, 10)
    ;
 cp5.addButton("Param4Load")
    .setLabel("+")
    .setPosition(W-40, H-20)
    .setSize(10, 10)
    ;
 cp5.addButton("Param5Load")
    .setLabel("+")
    .setPosition(W-20, H-20)
    .setSize(10, 10)
    ;
  
    cp5.addButton("Param1Save")
    .setLabel("+")
    .setPosition(W-100, H-40)
    .setSize(10, 10)
    ;
   cp5.addButton("Param2Save")
    .setLabel("+")
    .setPosition(W-80, H-40)
    .setSize(10, 10)
    ;
 cp5.addButton("Param3Save")
    .setLabel("+")
    .setPosition(W-60, H-40)
    .setSize(10, 10)
    ;
 cp5.addButton("Param4Save")
    .setLabel("+")
    .setPosition(W-40, H-40)
    .setSize(10, 10)
    ;
 cp5.addButton("Param5Save")
    .setLabel("+")
    .setPosition(W-20, H-40)
    .setSize(10, 10)
    ;
}

//PRESETS //  ---------------------------------------------------

void Param1Save(){
   cp5.saveProperties("presets/Preset_1");
   println("saved");
}

void Param2Save(){
   cp5.saveProperties("presets/Preset_2");
   println("saved");
}

void Param3Save(){
   cp5.saveProperties("presets/Preset_3");
   println("saved");
}

void Param4Save(){
   cp5.saveProperties("presets/Preset_4");
   println("saved");
}

void Param5Save(){
   cp5.saveProperties("presets/Preset_5");
   println("saved");
}

void Param1Load(){
   cp5.loadProperties("presets/Preset_1");
   println("loaded");
}

void Param2Load(){
   cp5.loadProperties("presets/Preset_2");
   println("loaded");
}

void Param3Load(){
   cp5.loadProperties("presets/Preset_3");
   println("loaded");
}

void Param4Load(){
   cp5.loadProperties("presets/Preset_4");
   println("loaded");
}

void Param5Load(){
   cp5.loadProperties("presets/Preset_5");
   println("loaded");
}