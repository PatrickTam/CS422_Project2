String[] appNames = {"weather", "music"};

void processWidgetInfo(Widget w){
  //expand weather
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
  
  else if(w.name.equals("music")){
    musicFlag = 1;
    if(w.sizeY == 150){
      fill(0);
      textSize(40);
      textAlign(LEFT);
      
      backward.resize(60,60);
      image(backward, w.x+20, w.y+50);
      
      if(playFlag == 0){
        play.resize(60,60);
        image(play, w.x+100, w.y+50);
      }
      else{
        pause.resize(60,60);
        image(pause, w.x+100, w.y+50);
      }
      
      forward.resize(60,60);
      image(forward, w.x+180, w.y+50);
      
      text(musicNames[musicIndex], w.x+300, w.y+90);
    }
    else{
      
    }
  }
}

String[][] currentWeatherInfo = {{"Hi: 50°F", "Hi: 10°C"}, {"Low: 32°F", "Low: 0°C"}, {"Current: 45°F", "Current: 7.2°C"}};
String[][] expandedWeatherInfo = {{"Hi: 50°F\nLow:32°F"}, {"Hi: 50°F\nLow:32°F"}, {"Hi: 50°F\nLow:32°F"}, {"Hi: 50°F\nLow:32°F"}};
PImage sunny;
PImage cloudy;


String[] musicNames = {"Varisty - Amanda", "Varisty - So Sad, So Sad"};
PImage play;
//https://thenounproject.com/term/play/10681/
PImage forward;
PImage backward;
//http://www.flaticon.com/free-icon/step-forward-control-button-symbol-of-triangular-right-arrow-pointing-a-vertical-line_37075
PImage pause;
//https://www.iconfinder.com/search/?q=pause
int playFlag = 0;
int playSecond = millis();
int musicIndex = 0;