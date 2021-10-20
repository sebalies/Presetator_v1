int cantidadRenglonesW = 40;
int cantidadColumnasH = 20;
int margenX = 10;
int margenY = 93;
int espacioRegs = 20;
int espacioCols = 20;
int[] renglones = new int[cantidadRenglonesW];
int[] columnas = new int[cantidadColumnasH];
int posParam = 0;
boolean cree = false;

color BackgroundColor = color(20);
color ColorActive = color(150);
color ColorForeground = color(100);
color ColorBackground = color(40);

int[] estadoOsc1Bot = new int [1];

void AddParamBot() {

  for (int i = 0; i < cantidadRenglonesW; i++) {
    renglones[i] = margenY + (espacioRegs * i);
  }
  for (int i = 0; i < cantidadColumnasH; i++) {
    columnas[i] = margenX + (espacioCols * i);
  }

  if (posParam < 25) {   

    cp5.addTextlabel("P" + posParam)
      .setText("P" + posParam)
      .setPosition(columnas[0], renglones[posParam]+2)
      .setColorValue(0xffffffff)
      ; 

    cp5.addToggle("OSC1" + posParam)
      .setPosition(columnas[1], renglones[posParam])
      .setLabel("")
      .setValue(false)
      .setSize( 7, 7)
      .setId(posParam)
      .setColorActive(OSC1ColorActive)
      .setColorForeground(OSC1ColorForeground)
      .setColorBackground(OSC1ColorBackground)
      ;
    cp5.addToggle("OSC2" + posParam)
      .setPosition(columnas[1] + 8, renglones[posParam])
      .setLabel("")
      .setValue(false)
      .setSize( 7, 7)
      .setId(posParam)
      .setColorActive(OSC2ColorActive)
      .setColorForeground(OSC2ColorForeground)
      .setColorBackground(OSC2ColorBackground)
      ;
    cp5.addToggle("OSC3" + posParam)
      .setPosition(columnas[1], renglones[posParam] + 8)
      .setLabel("")
      .setValue(false)
      .setSize( 7, 7)
      .setId(posParam)
      .setColorActive(OSC3ColorActive)
      .setColorForeground(OSC3ColorForeground)
      .setColorBackground(OSC3ColorBackground)
      ;
    cp5.addToggle("TIMELINE" + posParam)
      .setPosition(columnas[1] + 8, renglones[posParam] + 8)
      .setLabel("")
      .setValue(false)
      .setSize( 7, 7)
      .setId(posParam)
      .setColorActive(TIMELINE1ColorActive)
      .setColorForeground(TIMELINE1ColorForeground)
      .setColorBackground(TIMELINE1ColorBackground)
      ;

    cp5.addSlider("Slider" + posParam)
      .setLabel("")
      .setPosition(columnas[2], renglones[posParam])
      .setSize( 90, 15)
      .setRange(0, 1)
      .setValue(0)
      .setColorActive(ColorActive)
      .setColorForeground(ColorForeground)
      .setColorBackground(ColorBackground)
      ;

    cp5.addTextfield("Dir" + posParam)
      .setLabel("")
      //.setText("/layer5/clip8/video/param"+(posParam+1)+"/values")
      .setPosition(columnas[7], renglones[posParam])
      .setSize(190, 15)
      .setColorActive(ColorActive)
      .setColorForeground(ColorForeground)
      .setColorBackground(ColorBackground)
      ;

    cp5.addToggle("on" + posParam)
      .setPosition(columnas[15] + 40, renglones[posParam])
      .setLabel("")
      .setValue(false)
      .setSize( 15, 15)
      //.setMode(ControlP5.SWITCH)
      .setId(posParam)
      .setColorActive(ColorActive)
      .setColorForeground(ColorForeground)
      .setColorBackground(ColorBackground)
      ;

    posParam += 1;
  }
  
  cree = true;
}

//void ClearParamBot(){
//  println("borre");
//  posParam -= 1;
//}
