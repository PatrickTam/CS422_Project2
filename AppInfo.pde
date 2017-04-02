String[] appNames = {"weather", "music"};

void processWidgetInfo(Widget w){
  if(w.name.equals("weather")){
    //not expanded
    if(w.sizeY == 150){
      fill(0);
      textSize(40);
      textAlign(LEFT);
      //TODO: Account for Celsius or Farenheit choice!!
      text(currentWeatherInfo[0][0], w.x+50, w.y+70);
      text(currentWeatherInfo[1][0], w.x+50, w.y+110);
      sunny.resize(120,120);
      image(sunny, w.x+300, w.y+20);
      text(currentWeatherInfo[2][0], w.x+450, w.y+90);
      fill(0, 255, 123);
    }
    //expanded
    else{
      
    }
  }
}

String[][] currentWeatherInfo = {{"Hi: 50°F", "Hi: 10°C"}, {"Low: 32°F", "Low: 0°C"}, {"Current: 45°F", "Current: 7.2°C"}};
String[][] expandedWeatherInfo = {{"Hi: 50"}};
PImage sunny;