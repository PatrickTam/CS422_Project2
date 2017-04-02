//This file is for putting the information in the apps for the widget information
String[] appNames = {"weather", "music"};

void processWidgetInfo(Widget w){
  //weather is on a widget
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
    //expanded weather widget
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
  //music on widget
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
    //expand music
    else{
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
      
      if(musicIndex == 0){
       amandaCover.resize(160, 160);
       image(amandaCover, w.x+50, w.y+130);
       if(playFlag == 1){
         String timeString = "";
         int seconds = (int) ((millis() - playSecond) / 1000) % 60 ;
         String sec = "";
         if(seconds < 10)
           sec += "0";
         sec += str(seconds);
         int minutes = (int) (((millis() - playSecond) / (1000*60)) % 60);
         timeString += str(minutes)+":"+ sec + "/";
         seconds = (int) ((musicMillis[musicIndex]) / 1000) % 60 ;
         minutes = (int) (((musicMillis[musicIndex]) / (1000*60)) % 60);
         timeString += str(minutes)+":"+str(seconds)+"0";
         text(timeString, w.x+300, w.y+200);
       }
       else{
        String timeString = "0:00/";
        int seconds = (int) ((musicMillis[musicIndex]) / 1000) % 60 ;
        int minutes = (int) (((musicMillis[musicIndex]) / (1000*60)) % 60);
        timeString += str(minutes)+":"+str(seconds)+"0";
        text(timeString, w.x+300, w.y+200);
       }
      }
      else{
       sadCover.resize(160, 160);
       image(sadCover, w.x+50, w.y+130);
       if(playFlag == 1){
         String timeString = "";
         int seconds = (int) ((millis() - playSecond) / 1000) % 60 ;
         String sec = "";
         if(seconds < 10)
           sec += "0";
         sec += str(seconds);
         int minutes = (int) (((millis() - playSecond) / (1000*60)) % 60);
         timeString += str(minutes)+":"+ sec +"/";
         seconds = (int) ((musicMillis[musicIndex]) / 1000) % 60 ;
         minutes = (int) (((musicMillis[musicIndex]) / (1000*60)) % 60);
         timeString += str(minutes)+":"+str(seconds);
         text(timeString, w.x+300, w.y+200);
       }
       else{
        String timeString = "0:00/";
        int seconds = (int) ((musicMillis[musicIndex]) / 1000) % 60 ;
        int minutes = (int) (((musicMillis[musicIndex]) / (1000*60)) % 60);
        timeString += str(minutes)+":"+str(seconds);
        text(timeString, w.x+300, w.y+200);
       }
      }
    }
  }
  else if(w.name.equals("health")){
   if(w.sizeY == 150){
     fill(0);
     textSize(40);
     textAlign(LEFT);
      
     weight.resize(120,120);
     image(weight, w.x+80, w.y+20);
     
     text("Today: 130 lbs", w.x+250, w.y+60);
     text("Last Month: 135 lbs", w.x+250, w.y+120);
   }
   else{
     fill(0);
     textSize(30);
     textAlign(LEFT);
     
     text("Today:", w.x+20, w.y+200);
     text("Avg Month:", w.x+20, w.y+260);
     
     weight.resize(120,120);
     image(weight, w.x+400, w.y+20);
     
     text("130 lbs", w.x+400, w.y+200);
     text("135 lbs", w.x+400, w.y+260);
     
     steps.resize(120,120);
     image(steps, w.x+200, w.y+20);
     
     text("8123 steps", w.x+200, w.y+200);
     text("7815 steps", w.x+200, w.y+260);
     
     sleep.resize(120,120);
     image(sleep, w.x+600, w.y+20);
     
     text("7h 29m", w.x+600, w.y+200);
     text("7h 20m", w.x+600, w.y+260);
   }
  }
}

//Weather Info
String[][] currentWeatherInfo = {{"Hi: 50°F", "Hi: 10°C"}, {"Low: 32°F", "Low: 0°C"}, {"Current: 45°F", "Current: 7.2°C"}};
String[][] expandedWeatherInfo = {{"Hi: 50°F\nLow:32°F"}, {"Hi: 50°F\nLow:32°F"}, {"Hi: 50°F\nLow:32°F"}, {"Hi: 50°F\nLow:32°F"}};
PImage sunny;
PImage cloudy;


//Music Info
String[] musicNames = {"Varisty - Amanda", "Varisty - So Sad, So Sad"};
int[] musicMillis = {240000, 232000};
PImage play;
//https://thenounproject.com/term/play/10681/
PImage forward;
PImage backward;
//http://www.flaticon.com/free-icon/step-forward-control-button-symbol-of-triangular-right-arrow-pointing-a-vertical-line_37075
PImage pause;
//https://www.iconfinder.com/search/?q=pause
PImage amandaCover;
PImage sadCover;
int playFlag = 0;
int playSecond = millis();
int musicIndex = 0;


//Health Info
PImage weight;
//http://www.freeiconspng.com/icons/scale-icon
PImage steps;
//https://thenounproject.com/term/walking/35091/
PImage sleep;
//https://www.iconfinder.com/icons/573088/apple_disturb_good_moon_night_sleep_stars_icon


//Calendar info... for later...