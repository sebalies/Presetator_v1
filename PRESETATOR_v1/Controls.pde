color OSC1BackgroundColor = color(20);
color OSC1ColorActive = color(250, 0, 0);
color OSC1ColorForeground = color(150, 80, 80);
color OSC1ColorBackground = color(70, 20, 20);

color OSC2BackgroundColor = color(20);
color OSC2ColorActive = color(0, 250, 0);
color OSC2ColorForeground = color(80, 150, 80);
color OSC2ColorBackground = color(20, 70, 20);

color OSC3BackgroundColor = color(20);
color OSC3ColorActive = color(0, 0, 250);
color OSC3ColorForeground = color(80, 80, 150);
color OSC3ColorBackground = color(20, 20, 70);

color TIMELINE1BackgroundColor = color(20);
color TIMELINE1ColorActive = color(250, 250, 0);
color TIMELINE1ColorForeground = color(150, 150, 80);
color TIMELINE1ColorBackground = color(70, 70, 20);

int OSC1Select;
int OSC2Select;
int OSC3Select;

int TIMELINE1Select;

int presetSaveX = 60;
int presetLoadX = 240;

void controls() {

  cp5 = new ControlP5(this); 

  cp5.addButton("AddParamBot")  // ADD PARAMETROS ----------------------
    .setLabel("+")
    .setPosition(20, 15)
    .setSize(20, 20)
    .setColorActive(OSC1ColorActive)
    .setColorForeground(OSC1ColorForeground)
    .setColorBackground(OSC1ColorBackground)
    ;
  cp5.addTextlabel("AddParamBot_label")
    .setText("ADD PARAM")
    .setPosition(45, 20)
    .setColorValue(0xffffffff)
    ;   

  //cp5.addButton("ClearParamBot")  // CLEAR PARAMETROS ----------------------
  //  .setLabel("-")
  //  .setPosition(120, 20)
  //  .setSize(10, 10)
  //  .setColorActive(OSC2ColorActive)
  //  .setColorForeground(OSC2ColorForeground)
  //  .setColorBackground(OSC2ColorBackground)
  //  ;
  //cp5.addTextlabel("ClearParamBot_label")
  //  .setText("ADD PARAM")
  //  .setPosition(135, 20)
  //  .setColorValue(0xffffffff)
  //  ; 
    
    
  // -------------------------------------------- OSCILATORS ----------------------------------------------------------------------------------------



  cp5.addTextlabel("OSC1_label")  // OSC 1 ----------------------
    .setText("OSCILATOR 1")
    .setPosition(18, H - 80)
    .setColorValue(0xffffffff)
    ;  

  cp5.addSlider("OSC_1_Preview") 
    .setLabel("OSC 1")
    .setLabelVisible(false)
    .setPosition(20, H - 90)
    .setSize(50, 4)
    .setRange(0, 1)
    .setColorActive(OSC1ColorActive)
    .setColorForeground(OSC1ColorActive)
    .setColorBackground(OSC1ColorBackground)
    ;

  cp5.addSlider("OSC1_Value_Rate")  
    .setLabel("RATE")
    .setPosition(20, H - 40)
    .setRange(0, 1)
    .setSize(50, 10)
    .setValue(0.01)
    .setColorActive(OSC1ColorActive)
    .setColorForeground(OSC1ColorForeground)
    .setColorBackground(OSC1ColorBackground)
    ;  
  cp5.addSlider("OSC1_Value_Offset")  
    .setLabel("Offset")
    .setPosition(20, H - 20)
    .setRange(0, 2)
    .setSize(50, 10)
    .setValue(0)
    .setColorActive(OSC1ColorActive)
    .setColorForeground(OSC1ColorForeground)
    .setColorBackground(OSC1ColorBackground)
    ;  

  OSCSelect = cp5.addDropdownList("OSC1Select")
    .setLabel("Sin")
    .setPosition(20, H - 60)
    .setSize(50, 100)  
    .setColorActive(OSC1ColorActive)
    .setColorForeground(OSC1ColorForeground)
    .setColorBackground(OSC1ColorBackground)
    ; 
  OSCSelect.close();
  customizeOSCSelect(OSCSelect);




  cp5.addTextlabel("OSC2_label")  // OSC 2 ----------------------
    .setText("OSCILATOR 2")
    .setPosition(108, H - 80)
    .setColorValue(0xffffffff)
    ;  

  cp5.addSlider("OSC_2_Preview") 
    .setLabel("OSC 2")
    .setLabelVisible(false)
    .setPosition(110, H - 90)
    .setSize(50, 4)
    .setRange(0, 1)
    .setColorActive(OSC2ColorActive)
    .setColorForeground(OSC2ColorActive)
    .setColorBackground(OSC2ColorBackground)
    ;

  cp5.addSlider("OSC2_Value_Rate")  
    .setLabel("RATE")
    .setPosition(110, H - 40)
    .setRange(0, 1)
    .setSize(50, 10)
    .setValue(0.01)
    .setColorActive(OSC2ColorActive)
    .setColorForeground(OSC2ColorForeground)
    .setColorBackground(OSC2ColorBackground)
    ;  
  cp5.addSlider("OSC2_Value_Offset")  
    .setLabel("Offset")
    .setPosition(110, H - 20)
    .setRange(0, 2)
    .setSize(50, 10)
    .setValue(0)
    .setColorActive(OSC2ColorActive)
    .setColorForeground(OSC2ColorForeground)
    .setColorBackground(OSC2ColorBackground)
    ;  

  OSCSelect = cp5.addDropdownList("OSC2Select")
    .setLabel("Sin")
    .setPosition(110, H - 60)
    .setSize(50, 100)  
    .setColorActive(OSC2ColorActive)
    .setColorForeground(OSC2ColorForeground)
    .setColorBackground(OSC2ColorBackground)
    ; 
  OSCSelect.close();
  customizeOSCSelect(OSCSelect);
 

  cp5.addTextlabel("OSC3_label")  // OSC 3 ----------------------
    .setText("OSCILATOR 3")
    .setPosition(198, H - 80)
    .setColorValue(0xffffffff)
    ;  

  cp5.addSlider("OSC_3_Preview") 
    .setLabel("OSC 3")
    .setLabelVisible(false)
    .setPosition(200, H - 90)
    .setSize(50, 4)
    .setRange(0, 1)
    .setColorActive(OSC3ColorActive)
    .setColorForeground(OSC3ColorActive)
    .setColorBackground(OSC3ColorBackground)
    ;

  cp5.addSlider("OSC3_Value_Rate")  
    .setLabel("RATE")
    .setPosition(200, H - 40)
    .setRange(0, 1)
    .setSize(50, 10)
    .setValue(0.01)
    .setColorActive(OSC3ColorActive)
    .setColorForeground(OSC3ColorForeground)
    .setColorBackground(OSC3ColorBackground)
    ; 
  cp5.addSlider("OSC3_Value_Offset")  
    .setLabel("Offset")
    .setPosition(200, H - 20)
    .setRange(0, 2)
    .setSize(50, 10)
    .setValue(0)
    .setColorActive(OSC3ColorActive)
    .setColorForeground(OSC3ColorForeground)
    .setColorBackground(OSC3ColorBackground)
    ;  

  OSCSelect = cp5.addDropdownList("OSC3Select")
    .setLabel("Sin")
    .setPosition(200, H - 60)
    .setSize(50, 100)  
    .setColorActive(OSC3ColorActive)
    .setColorForeground(OSC3ColorForeground)
    .setColorBackground(OSC3ColorBackground)
    ; 
  OSCSelect.close();
  customizeOSCSelect(OSCSelect);
  
  
   // -------------------------------------------- TIMELINE ----------------------------------------------------------------------------------------



  cp5.addTextlabel("TIMELINE_1_label")  // OSC 1 ----------------------
    .setText("TIMELINE 1")
    .setPosition(290, H - 80)
    .setColorValue(0xffffffff)
    ;  

  cp5.addSlider("TIMELINE_1_Preview") 
    .setLabel("OSC 1")
    .setLabelVisible(false)
    .setPosition(290, H - 90)
    .setSize(50, 4)
    .setRange(0, 1)
    .setColorActive(TIMELINE1ColorActive)
    .setColorForeground(TIMELINE1ColorActive)
    .setColorBackground(TIMELINE1ColorBackground)
    ;

  cp5.addSlider("TIMELINE_1_Speed")  
    .setLabel("SPEED")
    .setPosition(290, H - 40)
    .setRange(-0.1, 0.1)
    .setSize(50, 10)
    .setValue(0.01)
    .setColorActive(TIMELINE1ColorActive)
    .setColorForeground(TIMELINE1ColorForeground)
    .setColorBackground(TIMELINE1ColorBackground)
    ;  
    
   cp5.addToggle("TIMELINE_RandBot")  // ADD PARAMETROS ----------------------
    .setLabel("")
    .setPosition(290, H - 60)
    .setSize(10, 10)
    .setColorActive(TIMELINE1ColorActive)
    .setColorForeground(TIMELINE1ColorForeground)
    .setColorBackground(TIMELINE1ColorBackground)
    ;
  cp5.addTextlabel("TIMELINE_RandBot_label")
    .setText("R")
    .setPosition(290-2, (H - 60)+1)
    .setColorValue(0xffffffff)
    ;
  
  
    // -------------------------------------------- PRESETS ----------------------------------------------------------------------------------------

  cp5.addTextlabel("PresetSave_label")
    .setText("SAVE")
    .setPosition(20, cabeceraH + 10)
    .setColorValue(0xffffffff)
    ;  

  cp5.addButton("Param1Save")  // SAVE ----------------------
    .setLabel("+")
    .setPosition(presetSaveX, cabeceraH + 10)
    .setSize(10, 10)
    .setColorActive(OSC1ColorActive)
    .setColorForeground(OSC1ColorForeground)
    .setColorBackground(OSC1ColorBackground)
    ;
  cp5.addButton("Param2Save")
    .setLabel("+")
    .setPosition(presetSaveX+20, cabeceraH+10)
    .setSize(10, 10)
    .setColorActive(OSC1ColorActive)
    .setColorForeground(OSC1ColorForeground)
    .setColorBackground(OSC1ColorBackground)
    ;
  cp5.addButton("Param3Save")
    .setLabel("+")
    .setPosition(presetSaveX+40, cabeceraH+10)
    .setSize(10, 10)
    .setColorActive(OSC1ColorActive)
    .setColorForeground(OSC1ColorForeground)
    .setColorBackground(OSC1ColorBackground)
    ;
  cp5.addButton("Param4Save")
    .setLabel("+")
    .setPosition(presetSaveX+60, cabeceraH+10)
    .setSize(10, 10)
    .setColorActive(OSC1ColorActive)
    .setColorForeground(OSC1ColorForeground)
    .setColorBackground(OSC1ColorBackground)
    ;
  cp5.addButton("Param5Save")
    .setLabel("+")
    .setPosition(presetSaveX+80, cabeceraH+10)
    .setSize(10, 10)
    .setColorActive(OSC1ColorActive)
    .setColorForeground(OSC1ColorForeground)
    .setColorBackground(OSC1ColorBackground)
    ;
    
  cp5.addTextlabel("PresetLoad_label")
    .setText("LOAD")
    .setPosition(200, cabeceraH + 10)
    .setColorValue(0xffffffff)
    ; 

  cp5.addButton("Param1Load")   // LOAD  ----------------------
    .setLabel("+")
    .setPosition(presetLoadX, cabeceraH+10)
    .setSize(10, 10)
    .setColorActive(OSC2ColorActive)
    .setColorForeground(OSC2ColorForeground)
    .setColorBackground(OSC2ColorBackground)
    ;
  cp5.addButton("Param2Load")
    .setLabel("+")
    .setPosition(presetLoadX+20, cabeceraH+10)
    .setSize(10, 10)
    .setColorActive(OSC2ColorActive)
    .setColorForeground(OSC2ColorForeground)
    .setColorBackground(OSC2ColorBackground)
    ;
  cp5.addButton("Param3Load")
    .setLabel("+")
    .setPosition(presetLoadX+40, cabeceraH+10)
    .setSize(10, 10)
    .setColorActive(OSC2ColorActive)
    .setColorForeground(OSC2ColorForeground)
    .setColorBackground(OSC2ColorBackground)
    ;
  cp5.addButton("Param4Load")
    .setLabel("+")
    .setPosition(presetLoadX+60, cabeceraH+10)
    .setSize(10, 10)
    .setColorActive(OSC2ColorActive)
    .setColorForeground(OSC2ColorForeground)
    .setColorBackground(OSC2ColorBackground)
    ;
  cp5.addButton("Param5Load")
    .setLabel("+")
    .setPosition(presetLoadX+80, cabeceraH+10)
    .setSize(10, 10)
    .setColorActive(OSC2ColorActive)
    .setColorForeground(OSC2ColorForeground)
    .setColorBackground(OSC2ColorBackground)
    ;
}

void customizeOSCSelect(DropdownList ddl) {
  ddl.setItemHeight(10);
  ddl.setBarHeight(10);
  ddl.addItem("Sin", 0);
  ddl.addItem("Cos", 1);
  ddl.addItem("Tan", 2);
  ddl.addItem("-Tan", 3);
}
