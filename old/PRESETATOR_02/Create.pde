int cantidadRenglonesW = 40;
int cantidadColumnasH = 7;
int margenX = 80;
int margenY = 20;
int espacioRegs = 30;
int espacioCols = 50;
int[] renglones = new int[cantidadRenglonesW];
int[] columnas = new int[cantidadColumnasH];
int layer = 10;
int clip = 20;
int param = 20;
boolean cree = false;



void AddCompOpacity() {

  for (int i=0; i<cantidadRenglonesW; i++) {
    renglones[i]=margenX+(espacioRegs*i);
  }

  for (int i=0; i<cantidadColumnasH; i++) {
    columnas[i]=margenY+(espacioCols*i);
  }

  if (Cantidad<20) {


   cp5.addTextlabel("P"+ Cantidad)
    .setText("P"+ Cantidad)
    .setPosition(columnas[0], renglones[Cantidad]+3)
    .setColorValue(0xffffffff)
    .setId(Cantidad)
    ; 

    cp5.addToggle("OSC1"+Cantidad)
      .setPosition(columnas[0]+20, renglones[Cantidad])
      .setLabel("")
      .setValue(false)
      .setSize( 15, 15)
      .setId(Cantidad)
      //.setMode(ControlP5.SWITCH)
      ;

    cp5.addSlider("Slider"+Cantidad)
      .setLabel("")
      .setPosition(columnas[1], renglones[Cantidad])
      .setSize( 90, 15)
      .setRange(0, 1)
      .setValue(0)
      .setId(Cantidad)
      ;

    layerSelect = cp5.addDropdownList("layerSelect"+Cantidad)
      .setLabel("layer1")
      .setPosition(columnas[3], renglones[Cantidad])
      .setSize(40, 100)  
      .bringToFront() 
      .setId(Cantidad)
      ; 
    layerSelect.close();

    clipSelect = cp5.addDropdownList("clipSelect"+Cantidad)
      .setLabel("clip1")
      .setPosition(columnas[4], renglones[Cantidad])
      .setSize(40, 100)  
      .setItemHeight(15)
      .setBarHeight(15)
      .bringToFront() 
      .setId(Cantidad)
      ; 
    clipSelect.close();

    paramSelect = cp5.addDropdownList("paramSelect"+Cantidad)
      .setLabel("param1")
      .setPosition(columnas[5], renglones[Cantidad])
      .setSize(40, 100)  
      .setItemHeight(15)
      .setBarHeight(15)
      .bringToFront() 
      .setId(Cantidad)
      ; 
    paramSelect.close();

   cp5.getController("OSC1"+Cantidad).addListener(myListener);

    customizeSelect(layerSelect, "layer");
    customizeSelect(clipSelect, "clip");
    customizeSelect(paramSelect, "param");

    Cantidad = Cantidad+1;
    if (cree == false) { 
      cree = true;
    }
  }
}  


void customizeSelect(DropdownList ddl, String val) {
  ddl.setItemHeight(15);
  ddl.setBarHeight(15);
  for (int i = 1; i<layer; i++) {
    ddl.addItem(val+i, i);
  }
}