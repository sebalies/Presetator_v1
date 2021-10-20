void enviarOSC() {

  for (int x = 0; x < cuantos; x++) {
    if (leeON[x] == 1) {

      String Message = cp5.get(Textfield.class, "Dir"+x) .getText();
      OscMessage NewMessage = new OscMessage(Message);
      NewMessage.add(cp5.get(Slider.class, "Slider"+x) .getValue());
      
      oscP5.send(NewMessage, myRemoteLocation);
    }
  }
}