void enviarOSC() {


  for (int cuantosOSC = 0; cuantosOSC < posParam; cuantosOSC++) {

    float[] Valines = new float [posParam];
    Valines[cuantosOSC] = cp5.get(Slider.class, "Slider"+cuantosOSC).getValue();
    String Message = cp5.get(Textfield.class, "Dir"+cuantosOSC) .getText();


    //println(Valines[cuantosOSC]);
    OscMessage NewMessage = new OscMessage(Message);
    NewMessage.add(Valines[cuantosOSC]);

    oscP5.send(NewMessage, myRemoteLocation);
  }
}