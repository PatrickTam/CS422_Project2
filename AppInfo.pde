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
      fill(0);
      textSize(35);
      textAlign(LEFT);
      //TODO: Account for Celsius or Farenheit choice!!
      text(currentWeatherInfo[0][0], w.x+50, w.y+40);
      text(currentWeatherInfo[1][0], w.x+50, w.y+80);
      sunny.resize(100,100);
      image(sunny, w.x+300, w.y);
      text(currentWeatherInfo[2][0], w.x+450, w.y+60);
      textAlign(CENTER);
      for(int i = 0; i < 4; i++){
        dayOfWeek++;
        if(dayOfWeek == 7)
          dayOfWeek = 0;
        
        cloudy.resize(90,90);
        image(cloudy, w.x+40+(i*200), w.y+130);
        
        text(dayName[dayOfWeek], w.x+80+(i*200), w.y+130);
        
        text(expandedWeatherInfo[i], w.x+90+(i*200), w.y+240);
      }
      fill(0, 255, 123);
    }
  }
}

String[][] currentWeatherInfo = {{"Hi: 50°F", "Hi: 10°C"}, {"Low: 32°F", "Low: 0°C"}, {"Current: 45°F", "Current: 7.2°C"}};
String[][] expandedWeatherInfo = {{"Hi: 50°F\nLow:32°F"}, {"Hi: 50°F\nLow:32°F"}, {"Hi: 50°F\nLow:32°F"}, {"Hi: 50°F\nLow:32°F"}};
PImage sunny;
PImage cloudy;