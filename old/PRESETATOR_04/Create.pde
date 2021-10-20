int cantidadRenglonesW = 40;
int cantidadColumnasH = 7;
int cantidadParametros = 25;
int margenX = 145;
int margenY = 10;
int espacioRegs = 20;
int espacioCols = 55;
int[] renglones = new int[cantidadRenglonesW];
int[] columnas = new int[cantidadColumnasH];
int layer = 10;
int fx = 10;
int clip = 20;
int param = 20;
boolean cree = false;

void AddCompOpacity() {

  grilla();

  if (Cantidad < cantidadParametros) {
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
      .setColorActive(CompColorActive)
      .setColorForeground(CompColorForeground)
      .setColorBackground(CompColorBackground)
      ;
    cp5.addSlider("Slider"+Cantidad)
      .setLabel("")
      .setPosition(columnas[1], renglones[Cantidad])
      .setSize( 90, 15)
      .setRange(0, 1)
      .setValue(0)
      .setId(Cantidad)
      .setColorActive(CompColorActive)
      .setColorForeground(CompColorForeground)
      .setColorBackground(CompColorBackground)
      ;
    cp5.getController("OSC1"+Cantidad).addListener(myListener);
  }
  Cantidad = Cantidad+1;
  if (cree == false) { 
    cree = true;
  }
}

void AddCompTansform() {

  grilla();

  if (Cantidad < cantidadParametros) {
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
      .setColorActive(CompColorActive)
      .setColorForeground(CompColorForeground)
      .setColorBackground(CompColorBackground)
      ;
    cp5.addSlider("Slider"+Cantidad)
      .setLabel("")
      .setPosition(columnas[1], renglones[Cantidad])
      .setSize( 90, 15)
      .setRange(0, 1)
      .setValue(0)
      .setId(Cantidad)
      .setColorActive(CompColorActive)
      .setColorForeground(CompColorForeground)
      .setColorBackground(CompColorBackground)
      ;
    transformSelect = cp5.addDropdownList("layerSelect"+Cantidad)
      .setLabel("Scale")
      .setPosition(columnas[3], renglones[Cantidad])
      .setSize(40, 100)  
      .bringToFront() 
      .setId(Cantidad)
      .setColorActive(CompColorActive)
      .setColorForeground(CompColorForeground)
      .setColorBackground(CompColorBackground)
      ; 
    transformSelect.close();
    cp5.getController("OSC1"+Cantidad).addListener(myListener);
    customizeTransform(transformSelect, "transform");
  }
  Cantidad = Cantidad+1;
  if (cree == false) { 
    cree = true;
  }
}

void AddCompFx() {

  grilla();

  if (Cantidad < cantidadParametros) {
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
      .setColorActive(CompColorActive)
      .setColorForeground(CompColorForeground)
      .setColorBackground(CompColorBackground)
      ;
    cp5.addSlider("Slider"+Cantidad)
      .setLabel("")
      .setPosition(columnas[1], renglones[Cantidad])
      .setSize( 90, 15)
      .setRange(0, 1)
      .setValue(0)
      .setId(Cantidad)
      .setColorActive(CompColorActive)
      .setColorForeground(CompColorForeground)
      .setColorBackground(CompColorBackground)
      ;
    fxSelect = cp5.addDropdownList("effectSelect"+Cantidad)
      .setLabel("effect1")
      .setPosition(columnas[3], renglones[Cantidad])
      .setSize(40, 100)  
      .bringToFront() 
      .setId(Cantidad)
      .setColorActive(CompColorActive)
      .setColorForeground(CompColorForeground)
      .setColorBackground(CompColorBackground)
      ; 
    fxSelect.close();

    paramSelect = cp5.addDropdownList("paramSelect"+Cantidad)
      .setLabel("param1")
      .setPosition(columnas[4], renglones[Cantidad])
      .setSize(40, 100)  
      .setItemHeight(15)
      .setBarHeight(15)
      .bringToFront() 
      .setId(Cantidad)
      .setColorActive(CompColorActive)
      .setColorForeground(CompColorForeground)
      .setColorBackground(CompColorBackground)
      ; 
    paramSelect.close();

    cp5.getController("OSC1"+Cantidad).addListener(myListener);
    customizeFx(fxSelect, "effect");
    customizeSelect(paramSelect, "param");
  }
  Cantidad = Cantidad+1;
  if (cree == false) { 
    cree = true;
  }
}


void AddLayerOpacity() {

  grilla();

  if (Cantidad < cantidadParametros) {
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
      .setColorActive(LayerColorActive)
      .setColorForeground(LayerColorForeground)
      .setColorBackground(LayerColorBackground)
      ;
    cp5.addSlider("Slider"+Cantidad)
      .setLabel("")
      .setPosition(columnas[1], renglones[Cantidad])
      .setSize( 90, 15)
      .setRange(0, 1)
      .setValue(0)
      .setId(Cantidad)
      .setColorActive(LayerColorActive)
      .setColorForeground(LayerColorForeground)
      .setColorBackground(LayerColorBackground)
      ;

    layerSelect = cp5.addDropdownList("layerSelect"+Cantidad)
      .setLabel("layer1")
      .setPosition(columnas[3], renglones[Cantidad])
      .setSize(40, 100)  
      .bringToFront() 
      .setId(Cantidad)
      .setColorActive(LayerColorActive)
      .setColorForeground(LayerColorForeground)
      .setColorBackground(LayerColorBackground)
      ; 
    layerSelect.close();

    cp5.getController("OSC1"+Cantidad).addListener(myListener);
    customizeSelect(layerSelect, "layer");
  }
  Cantidad = Cantidad+1;
  if (cree == false) { 
    cree = true;
  }
}

void AddLayerTansform() {

  grilla();

  if (Cantidad < cantidadParametros) {
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
      .setColorActive(LayerColorActive)
      .setColorForeground(LayerColorForeground)
      .setColorBackground(LayerColorBackground)
      ;
    cp5.addSlider("Slider"+Cantidad)
      .setLabel("")
      .setPosition(columnas[1], renglones[Cantidad])
      .setSize( 90, 15)
      .setRange(0, 1)
      .setValue(0)
      .setId(Cantidad)
      .setColorActive(LayerColorActive)
      .setColorForeground(LayerColorForeground)
      .setColorBackground(LayerColorBackground)
      ;

    layerSelect = cp5.addDropdownList("layerSelect2"+Cantidad)
      .setLabel("layer1")
      .setPosition(columnas[3], renglones[Cantidad])
      .setSize(40, 100)  
      .bringToFront() 
      .setId(Cantidad)
      .setColorActive(LayerColorActive)
      .setColorForeground(LayerColorForeground)
      .setColorBackground(LayerColorBackground)
      ; 
    layerSelect.close();


    transformLayerSelect = cp5.addDropdownList("layerSelect"+Cantidad)
      .setLabel("Width")
      .setPosition(columnas[4], renglones[Cantidad])
      .setSize(40, 100)  
      .bringToFront() 
      .setId(Cantidad)
      .setColorActive(LayerColorActive)
      .setColorForeground(LayerColorForeground)
      .setColorBackground(LayerColorBackground)
      ; 
    transformLayerSelect.close();

    cp5.getController("OSC1"+Cantidad).addListener(myListener);

    customizeLayerTransform(transformLayerSelect, "transform");
    customizeSelect(layerSelect, "layer");
  }
  Cantidad = Cantidad+1;
  if (cree == false) { 
    cree = true;
  }
}

void AddLayerFx() {

  grilla();

  if (Cantidad < cantidadParametros) {
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
      .setColorActive(LayerColorActive)
      .setColorForeground(LayerColorForeground)
      .setColorBackground(LayerColorBackground)
      ;
    cp5.addSlider("Slider"+Cantidad)
      .setLabel("")
      .setPosition(columnas[1], renglones[Cantidad])
      .setSize( 90, 15)
      .setRange(0, 1)
      .setValue(0)
      .setId(Cantidad)
      .setColorActive(LayerColorActive)
      .setColorForeground(LayerColorForeground)
      .setColorBackground(LayerColorBackground)
      ;

    layerSelect = cp5.addDropdownList("layerSelect2"+Cantidad)
      .setLabel("layer1")
      .setPosition(columnas[3], renglones[Cantidad])
      .setSize(40, 100)  
      .bringToFront() 
      .setId(Cantidad)
      .setColorActive(LayerColorActive)
      .setColorForeground(LayerColorForeground)
      .setColorBackground(LayerColorBackground)
      ; 
    layerSelect.close();


    fxSelect = cp5.addDropdownList("effectSelect2"+Cantidad)
      .setLabel("effect1")
      .setPosition(columnas[4], renglones[Cantidad])
      .setSize(40, 100)  
      .bringToFront() 
      .setId(Cantidad)
      .setColorActive(LayerColorActive)
      .setColorForeground(LayerColorForeground)
      .setColorBackground(LayerColorBackground)
      ; 
    fxSelect.close();

    paramSelect = cp5.addDropdownList("paramSelect2"+Cantidad)
      .setLabel("param1")
      .setPosition(columnas[5], renglones[Cantidad])
      .setSize(40, 100)  
      .setItemHeight(15)
      .setBarHeight(15)
      .bringToFront() 
      .setId(Cantidad)
      .setColorActive(LayerColorActive)
      .setColorForeground(LayerColorForeground)
      .setColorBackground(LayerColorBackground)
      ; 
    paramSelect.close();

    cp5.getController("OSC1"+Cantidad).addListener(myListener);
    customizeFx(fxSelect, "effect");
    customizeSelect(paramSelect, "param");
    customizeSelect(layerSelect, "layer");
  }
  Cantidad = Cantidad+1;
  if (cree == false) { 
    cree = true;
  }
}

void AddClipParam() {

  grilla();
  if (Cantidad < cantidadParametros) {
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
      .setColorActive(ClipColorActive)
      .setColorForeground(ClipColorForeground)
      .setColorBackground(ClipColorBackground)
      ;
    cp5.addSlider("Slider"+Cantidad)
      .setLabel("")
      .setPosition(columnas[1], renglones[Cantidad])
      .setSize( 90, 15)
      .setRange(0, 1)
      .setValue(0)
      .setId(Cantidad)
            .setColorActive(ClipColorActive)
      .setColorForeground(ClipColorForeground)
      .setColorBackground(ClipColorBackground)
      ;
    layerSelect = cp5.addDropdownList("layerSelect"+Cantidad)
      .setLabel("layer1")
      .setPosition(columnas[3], renglones[Cantidad])
      .setSize(40, 100)  
      .bringToFront() 
      .setId(Cantidad)
            .setColorActive(ClipColorActive)
      .setColorForeground(ClipColorForeground)
      .setColorBackground(ClipColorBackground)
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
            .setColorActive(ClipColorActive)
      .setColorForeground(ClipColorForeground)
      .setColorBackground(ClipColorBackground)
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
            .setColorActive(ClipColorActive)
      .setColorForeground(ClipColorForeground)
      .setColorBackground(ClipColorBackground)
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

void customizeTransform(DropdownList ddl, String val) {
  ddl.setItemHeight(15);
  ddl.setBarHeight(15);
  ddl.addItem("Scale", 0);
  ddl.addItem("RotateX", 1);
  ddl.addItem("RotateY", 2);
  ddl.addItem("RotateZ", 3);
}

void customizeLayerTransform(DropdownList ddl, String val) {
  ddl.setItemHeight(15);
  ddl.setBarHeight(15);
  ddl.addItem("Width", 0);
  ddl.addItem("Heigth", 1);
  ddl.addItem("Scale", 2);
  ddl.addItem("PositionX", 3);
  ddl.addItem("PositionY", 4);
  ddl.addItem("RotateX", 5);
  ddl.addItem("RotateY", 6);
  ddl.addItem("RotateZ", 7); 
  ddl.addItem("AnchorX", 8);
  ddl.addItem("AnchorY", 9);
  ddl.addItem("AnchorZ", 10);
}

void customizeFx(DropdownList ddl, String val) {
  ddl.setItemHeight(15);
  ddl.setBarHeight(15);
  for (int i = 1; i<fx; i++) {
    ddl.addItem(val+i, i);
  }
}

void grilla() {
  for (int i=0; i<cantidadRenglonesW; i++) {
    renglones[i]=margenX+(espacioRegs*i);
  }

  for (int i=0; i<cantidadColumnasH; i++) {
    columnas[i]=margenY+(espacioCols*i);
  }
}