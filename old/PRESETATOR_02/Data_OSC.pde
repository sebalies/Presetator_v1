void enviarOSC() {

  for (int cuantosOSC = 0; cuantosOSC < Cantidad; cuantosOSC++) {
    float[] Valines = new float [Cantidad+1];
    Valines[cuantosOSC] = cp5.get(Slider.class, "Slider"+cuantosOSC).getValue();
    String layerNum = "/layer"+(int(cp5.get(DropdownList.class, "layerSelect"+cuantosOSC).getValue()+1));
    String clipNum =   "/clip"+(int(cp5.get(DropdownList.class, "clipSelect"+cuantosOSC).getValue()+1));
    String videoNum = "/video";
    String paramNum =  "/param"+(int(cp5.get(DropdownList.class, "paramSelect"+cuantosOSC).getValue()+1));
    String valuesNum = "/values";

    String Message = layerNum + clipNum + videoNum + paramNum + valuesNum;

    OscMessage NewMessage = new OscMessage(Message);
    NewMessage.add(Valines[cuantosOSC]);

    oscP5.send(NewMessage, myRemoteLocation);
  }
  //println("envio");
}

void oscData() {
  int cuantos = Cantidad;
  for (int check = 0; check < cuantos; check++) {
    if (myListener.id == check && myListener.val == 1) {
      cp5.get(Slider.class, "Slider"+check) .setValue(osc1);
    }
  }
}