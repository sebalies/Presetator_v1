int cantidadRenglonesW = 40;
int cantidadColumnasH = 20;
int margenX = 10;
int margenY = 60;
int espacioRegs = 20;
int espacioCols = 20;
int[] renglones = new int[cantidadRenglonesW];
int[] columnas = new int[cantidadColumnasH];
int posParam = 0;
boolean cree = false;

int[] estadoOsc1Bot = new int [1];

void AddParamBot() {

  for (int i=0; i<cantidadRenglonesW; i++) {
    renglones[i]=margenY+(espacioRegs*i);
  }
  for (int i=0; i<cantidadColumnasH; i++) {
    columnas[i]=margenX+(espacioCols*i);
  }

  cp5.addTextlabel("P"+ posParam)
    .setText("P"+ posParam)
    .setPosition(columnas[0], renglones[posParam]+2)
    .setColorValue(0xffffffff)
    ; 

  cp5.addToggle("OSC1"+posParam)
    .setPosition(columnas[1], renglones[posParam])
    .setLabel("")
    .setValue(false)
    .setSize( 7, 7)
    .setId(posParam)
    //.setMode(ControlP5.SWITCH)
    ;
  int estadoOSC1 = 0;
  estadoOsc1Bot = (int[]) append(estadoOsc1Bot,estadoOSC1);

  cp5.addSlider("Slider"+posParam)
    .setLabel("")
    .setPosition(columnas[2], renglones[posParam])
    .setSize( 90, 15)
    .setRange(0, 1)
    .setValue(0)
    ;

  cp5.addTextfield("Dir"+posParam)
    .setLabel("")
    .setPosition(columnas[7], renglones[posParam])
    .setSize(160, 15)
    ;
  
   cp5.addToggle("on"+posParam)
    .setPosition(columnas[15]+10, renglones[posParam])
    .setLabel("")
    .setValue(false)
    .setSize( 15, 15)
    //.setMode(ControlP5.SWITCH)
    .setId(posParam)
    ;

  posParam = posParam+1;
  cree = true;
}