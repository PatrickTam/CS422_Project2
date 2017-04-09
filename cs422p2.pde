Clickable  powerButton = new Clickable(2607, 1425, 100, 100);
PImage power;
boolean on;
boolean firstLogin;

PImage langIcon;
String language = "None";
BackgroundBox langBox = new BackgroundBox(1066, 668, 600, 460);
Clickable english = new Clickable(1066, 728, 600, 100);
Clickable spanish = new Clickable(1066, 828, 600, 100);
Clickable french = new Clickable(1066, 928, 600, 100);
Clickable lang4 = new Clickable(1066, 1028, 600, 100);
Clickable[] langs;

PImage wifiIcon;
String wifi = "None";
boolean wifiPwSet;
PImage wifiMax;
PImage wifiMed;
PImage wifiLow;
BackgroundBox wifiBox = new BackgroundBox(1066, 668, 600, 460);
Clickable wifi1 = new Clickable(1066, 728, 600, 100);
Clickable wifi2 = new Clickable(1066, 828, 600, 100);
Clickable wifi3 = new Clickable(1066, 928, 600, 100);
Clickable wifi4 = new Clickable(1066, 1028, 600, 100);
Clickable[] wifiConns;

Clickable skipButton = new Clickable(1166, 1325, 400, 100);
Clickable cancelButton = new Clickable(1166, 1425, 400, 100);

PFont f;
PImage bg;
//preload background image (required)
/* @pjs preload="bg2.jpg" 
 */
//location of the 6 widgets
/*
0    3
 1    4
 2    5
 */
//parameters of widget: CoordX, CoordY, SizeX, SizeY
Widget[] widgetLeft = {new Widget(100, 500, 800, 150), new Widget(100, 750, 800, 150), new Widget(100, 1000, 800, 150)};
Widget[] widgetRight = {new Widget(1832, 500, 800, 150), new Widget(1832, 750, 800, 150), new Widget(1832, 1000, 800, 150)};
int expandedLeft = -1;
int expandedRight = -1;
int[] normalY = {500, 750, 1000};

Clickable appButton = new Clickable(25, 1425, 100, 100);
int appExpanded = 0;
PImage appImg;
PImage appImgSelected;

Clickable settingButton = new Clickable(2607, 1425, 100, 100);
int settingExpanded = 0;
PImage settingImg;
PImage settingImgSelected;  

Clickable moveButton = new Clickable(135, 1425, 100, 100);
PImage moveImg;
PImage moveImgSelected; 

int dayOfWeek;

//background boxes
BackgroundBox appBox = new BackgroundBox(125, 1325, 775, 200);

BackgroundBox settingBox = new BackgroundBox(2307, 825, 400, 600);
Clickable register = new Clickable(2307, 1300, 400, 55);
Clickable selectProfile = new Clickable(2307, 1365, 400, 55); 

Clickable[] settings;

//icons
AppButton weatherIcon = new AppButton(135, 1330, 90, 90, "weather");
AppButton musicIcon = new AppButton(135, 1430, 90, 90, "music");
int musicFlag = 0;
int pauseTime = 0;
Audio amanda = new Audio();
Audio sad = new Audio();
AppButton healthIcon = new AppButton(235, 1330, 90, 90, "health");
AppButton calendarIcon = new AppButton(235, 1430, 90, 90, "calendar");
AppButton newsIcon = new AppButton(335, 1330, 90, 90, "news");
AppButton timerIcon = new AppButton(335, 1430, 90, 90, "timer");
AppButton alarmIcon = new AppButton(435, 1330, 90, 90, "alarm");
AppButton noteIcon = new AppButton(435, 1430, 90, 90, "note");
AppButton emailIcon = new AppButton(535, 1330, 90, 90, "email");
AppButton twitterIcon = new AppButton(535, 1430, 90, 90, "twitter");
AppButton instagramIcon = new AppButton(635, 1330, 90, 90, "instagram");
AppButton facebookIcon = new AppButton(635, 1430, 90, 90, "facebook");
int appSelected = -1;

//Put all AppButtons in here
AppButton[] appArr;

void setup() {
  size(2732, 1536);

  on = false;
  firstLogin = true;

  keyboardShow = false;

  skipButton.setName("Skip");
  
  reason = "none";
  
/********* LANGUAGE ***********/
  english.setName("English");
  spanish.setName("Español");
  french.setName("Français");
  lang4.setName("English2");
  langs = new Clickable[]{english, spanish, french, lang4, skipButton};
  
  langIcon = loadImage("language.png", "png");
  //https://cdn2.iconfinder.com/data/icons/social-productivity-line-art-2/128/world-512.png
  langIcon.loadPixels();
/********* LANGUAGE ***********/

/********* WIFI ***********/
  wifiPwSet = false;
  
  wifi1.setName("ATT509");
  wifi2.setName("DogLover");
  wifi3.setName("Home");
  wifi4.setName("Hidden");
  wifiConns = new Clickable[]{wifi1, wifi2, wifi3, wifi4, skipButton};
  
  wifiIcon = loadImage("wifi.png", "png");
  //https://icons8.com/web-app/171/wi-fi
  wifiIcon.loadPixels();
  
  //http://simpleicon.com/sets/signal/page/2/
  wifiMax = loadImage("wifi3.png", "png");
  wifiMax.loadPixels();
  
  wifiMed = loadImage("wifi2.png", "png");
  wifiMed.loadPixels();
  
  wifiLow = loadImage("wifi1.png", "png");
  wifiLow.loadPixels();
/********* WIFI ***********/

  power = loadImage("power.png", "png");
  power.loadPixels();

  appImg = loadImage("app.png", "png");
  //http://i.imgsafe.org/bc2015d4a8.png
  appImg.loadPixels();

  appImgSelected = loadImage("appSelected2.png", "png");
  appImgSelected.loadPixels();

/********* SETTING ***********/
  settingImg = loadImage("setting.png", "png");
  //http://iconshow.me/media/images/ui/ios7-icons/png/512/gear.png
  settingImg.loadPixels();

  settingImgSelected = loadImage("settingSelected.png", "png");
  settingImgSelected.loadPixels();
  
  register.setName("Register");
  selectProfile.setName("Select Profile");
  
  settings = new Clickable[]{register, selectProfile};
  
  profile = new ArrayList();
  
  guestProfile = new Profile("Guest", new int[]{0,0,0,0});
  currentProfile = guestProfile;
/********* SETTING ***********/


  moveImg = loadImage("move.png", "png");
  //https://www.iconfinder.com/icons/237454/arrow_cursor_move_icon
  moveImg.loadPixels();

  moveImgSelected = loadImage("moveSelected.png", "png");
  moveImgSelected.loadPixels();

  bg = loadImage("bg2.jpg");
  bg.loadPixels();

  weatherIcon.image = loadImage("weatherapp.png", "png");
  //http://www.freeiconspng.com/icons/weather-icon-png
  weatherIcon.image.loadPixels();

  musicIcon.image = loadImage("music.png", "png");
  //https://www.iconfinder.com/icons/820103/love_love_music_music_music_note_sing_wedding_music_icon
  musicIcon.image.loadPixels();

  healthIcon.image = loadImage("health.png", "png");
  //https://thenounproject.com/term/health/4215/
  healthIcon.image.loadPixels();

  calendarIcon.image = loadImage("calendar.png", "png");
  //https://thenounproject.com/term/calendar/
  calendarIcon.image.loadPixels();

  newsIcon.image = loadImage("news.png", "png");
  //https://www.iconfinder.com/icons/112154/headlines_news_newspaper_print_text_icon
  newsIcon.image.loadPixels();

  timerIcon.image = loadImage("timer.png", "png");
  //https://icons8.com/web-app/1111/timer
  timerIcon.image.loadPixels();

  alarmIcon.image = loadImage("alarm.png", "png");
  //http://www.freeiconspng.com/icons/alarm-icon
  alarmIcon.image.loadPixels();

  noteIcon.image = loadImage("note.png", "png");
  //https://www.iconfinder.com/icons/261628/document_modify_note_notes_paper_pencil_record_icon
  noteIcon.image.loadPixels();

  emailIcon.image = loadImage("email.png", "png");
  //http://www.freeiconspng.com/icons/email-icon
  emailIcon.image.loadPixels();

  twitterIcon.image = loadImage("twitter.png", "png");
  //http://www.iconarchive.com/show/socialmedia-icons-by-uiconstock/Twitter-icon.html
  twitterIcon.image.loadPixels();

  instagramIcon.image = loadImage("instagram.png", "png");
  //https://www.reddit.com/r/Android/comments/4j7x3w/material_instagram_icons/
  instagramIcon.image.loadPixels();

  facebookIcon.image = loadImage("facebook.png", "png");
  //http://www.business2community.com/small-business/social-media-beneficial-small-business-owners-5-sites-best-ways-use-01772814#bvFfklVSsoJosYYG.97
  facebookIcon.image.loadPixels();

  sunny = loadImage("sunny.png", "png");
  //https://www.iconfinder.com/icons/317415/blue_sky_clear_forecast_sun_sunny_weather_icon
  sunny.loadPixels();

  cloudy = loadImage("cloudy.png", "png");
  //https://www.iconfinder.com/icons/214293/cloud_clouds_cloudy_saas_weather_icon
  cloudy.loadPixels();

  play = loadImage("play.png", "png");
  play.loadPixels();

  forward = loadImage("forward.png", "png");
  forward.loadPixels();

  backward = loadImage("backward.png", "png");
  backward.loadPixels();

  pause = loadImage("pause.png", "png");
  pause.loadPixels();

  weight = loadImage("weight.png", "png");
  weight.loadPixels();

  steps = loadImage("walking.png", "png");
  steps.loadPixels();

  sleep = loadImage("sleep.png", "png");
  sleep.loadPixels();

  //Add a new app? Put it in here or it wont show up!
  appArr = new AppButton[]{weatherIcon, musicIcon, healthIcon, calendarIcon, newsIcon, timerIcon, alarmIcon, noteIcon, emailIcon, twitterIcon, instagramIcon, facebookIcon};

  //amanda.setAttribute("src", "amanda.mp3");
  //sad.setAttribute("src", "sad.mp3");

  amandaCover = loadImage("amandaCover.jpg", "jpg");
  amandaCover.loadPixels();

  sadCover = loadImage("sadCover.jpg", "jpg");
  sadCover.loadPixels();

  f = createFont("SansSerif.plain", 24, true);

/********* KEYBOARD ***********/
  bksp = loadImage("backspace.png", "png");
  bksp.loadPixels();
  
  int xVal = 946;
  int yVal = 1085;
  
  int masterIndex = 0;
  
  fullKeyboard = new Keys[keys.length][];
  
  for(String[] strArr : keys){
   Keys[] k = new Keys[strArr.length];
   for(int i = 0; i < strArr.length; i++){
    Keys newKey =  new Keys(xVal+(i * 75), yVal, strArr[i]);
    if(strArr[i].equals("Shift")){
       xVal += 75; 
    }
    k[i] = newKey;
   }
   fullKeyboard[masterIndex] = k;
   yVal += 75;
   xVal = 946;
   masterIndex++;
  }
  
  currentText = "";
  
  /*ArrayList<Keys[]> fullKeyboard = new ArrayList<Keys[]>();
  for(String[] strArr : keys){
     ArrayList keySection = new ArrayList();
     int index = 0;
     for(String s : strArr){
       Keys newKey = new Keys(xVal+(index * 65), yVal, s);
       keySection.add(newKey);
       index++;
     }
     yVal += 65;
     fullKeyboard.add(keySection.toArray(new Keys[keySection.size()]));
  }
  Keys[] k = fullKeyboard.get(0);
  for(Keys[] k : fullKeyboard){
    
  }*/

/********* KEYBOARD ***********/
}

//we set the attribute again to avoid the html5 pause() error (I know this is bad)
void playAmanda() {
  //amanda.setAttribute("src", "amanda.mp3");
  amanda.play();
}

//we set the attribute again to avoid the html5 pause() error (I know this is bad)
void playSad() {
  //sad.setAttribute("src", "sad.mp3");
  sad.play();
}

void stopAmanda() {
  amanda.pause();
  amanda.currentTime = 0;
  //while(amanda.getAttribute("paused") == false){}
}

void stopSad() {
  sad.pause();
  sad.currentTime = 0;
  //while(sad.getAttribute("paused") == false){}
}

void draw() {
  //brightness -> tint()
  background(bg);
  noStroke();

  //setup date time on the top center
  Point locTime = new Point(width/2, 80);
  Point locDate = new Point(width/2, 150);
  DateTimeItem dti = new DateTimeItem(locTime, locDate);
  dayOfWeek = dow(day(), month(), year());

  if(keyboardShow){
    fill(255);
    rect(946, 985, 825, 60, 10);
    fill(0);
    textSize(40);
    textAlign(LEFT);
    text(currentText, 946+20, 985+50);
    for(Keys[] kArr : fullKeyboard){
     for(Keys k : kArr){
      k.drawKey(); 
     }
    }
    stroke(0);
    strokeWeight(4);
    fill(0,0);
    rect(cancelButton.x, cancelButton.y, cancelButton.sizeX, cancelButton.sizeY); 
    
    fill(0);
    textSize(50);
    text("Cancel", cancelButton.x+(cancelButton.sizeX/2), cancelButton.y+(cancelButton.sizeY/2)+20);
  }

  if (!on) {
    power.resize(powerButton.sizeX, powerButton.sizeY);
    image(power, powerButton.x, powerButton.y);
  } 
  else if (on && firstLogin) {
    //we are on first login, so we need to set the language
    if (language.equals("None")) {
      fill(0);
      textSize(80);
      textAlign(CENTER);
      text("Welcome!", 2732/2, 350);
      
      langIcon.resize(250,250);
      image(langIcon, 2732/2 - 125, 375);

      fill(180);
      stroke(0);
      strokeWeight(4);
      rect(langBox.x, langBox.y, langBox.sizeX, langBox.sizeY);
      strokeWeight(0);
      fill(0,0);
      rect(skipButton.x, skipButton.y, skipButton.sizeX, skipButton.sizeY);      

      fill(0);
      textSize(50);
      text("Skip", skipButton.x+(skipButton.sizeX/2), skipButton.y+(skipButton.sizeY/2)+20);

      text("Language", langBox.x+(langBox.sizeX/2), langBox.y+50);
      stroke(0);
      strokeWeight(4);
      line(langBox.x, langBox.y+60, langBox.x+langBox.sizeX, langBox.y+60);

      strokeWeight(2);
      text(english.name, english.x+(english.sizeX/2), english.y+70);
      english.drawLine();
      text(spanish.name, spanish.x+(spanish.sizeX/2), spanish.y+70);
      spanish.drawLine();
      text(french.name, french.x+(french.sizeX/2), french.y+70);
      french.drawLine();
      text(lang4.name, lang4.x+(lang4.sizeX/2), lang4.y+70);
      lang4.drawLine();
    }
    //we set the language (or skipped), so now set the wifi
    else if(wifi.equals("None")){
      fill(0);
      textSize(80);
      textAlign(CENTER);
      text("Welcome!", 2732/2, 350);

      wifiIcon.resize(250,250);
      image(wifiIcon, 2732/2 - 125, 375);

      fill(180);
      stroke(0);
      strokeWeight(4);
      rect(wifiBox.x, wifiBox.y, wifiBox.sizeX, wifiBox.sizeY);
      strokeWeight(0);
      fill(0,0);
      rect(skipButton.x, skipButton.y, skipButton.sizeX, skipButton.sizeY);
      
      fill(0);
      textSize(50);
      text("Skip", skipButton.x+(skipButton.sizeX/2), skipButton.y+(skipButton.sizeY/2)+20);
      
      text("WiFi", wifiBox.x+(wifiBox.sizeX/2), wifiBox.y+50);
      stroke(0);
      strokeWeight(4);
      line(wifiBox.x, wifiBox.y+60, wifiBox.x+wifiBox.sizeX, wifiBox.y+60);
      
      //I know that I can do this smarter, but for now I want to keep it like this in case I change anything
      
      strokeWeight(2);
      text(wifi1.name, wifi1.x+(wifi1.sizeX/2), wifi1.y+70);
      wifiMax.resize(60,60);
      image(wifiMax, wifi1.x+30, wifi1.y+30);
      wifi1.drawLine();
      
      text(wifi2.name, wifi2.x+(wifi2.sizeX/2), wifi2.y+70);
      wifiMed.resize(60,60);
      image(wifiMed, wifi2.x+30, wifi2.y+30);
      wifi2.drawLine();
      
      text(wifi3.name, wifi3.x+(wifi3.sizeX/2), wifi3.y+70);
      wifiMed.resize(60,60);
      image(wifiMed, wifi3.x+30, wifi3.y+30);
      wifi3.drawLine();
      
      text(wifi4.name, wifi4.x+(wifi4.sizeX/2), wifi4.y+70);
      wifiLow.resize(60,60);
      image(wifiLow, wifi4.x+30, wifi4.y+30);
      wifi4.drawLine();
    }
  }
  else if(wifiPwSet == false && !wifi.equals("Skip")){
    wifiIcon.resize(250,250);
    image(wifiIcon, 2732/2 - 125, 375);
    
    fill(0);
    textSize(80);
    textAlign(CENTER);
    text("Please Enter " + wifi + "'s Password:", 2732/2, 350);
  }
  else {
    dti.drawDateTime();
    strokeWeight(4);
    //left 3 widgets
    fill(0, 255, 123);
    for (int loopCounter=0; loopCounter < widgetLeft.length; loopCounter++) {
      //this means that there is an app attached to the widget
      if (widgetLeft[loopCounter].name != null) {
        if (widgetLeft[loopCounter].strokeColor[2] == 0)
          strokeWeight(8);
        else
          strokeWeight(4);
        stroke(widgetLeft[loopCounter].strokeColor[0], widgetLeft[loopCounter].strokeColor[1], widgetLeft[loopCounter].strokeColor[2]);
        fill(140);
        rect(widgetLeft[loopCounter].x, widgetLeft[loopCounter].y, 
          widgetLeft[loopCounter].sizeX, widgetLeft[loopCounter].sizeY, 10);
        //process the app info
        processWidgetInfo(widgetLeft[loopCounter]);
      }
      //the widgets are shown because we are either placing an app, or we are moving widgets
      else if (appSelected != -1 || moveButton.clicked == 1) {
        if (widgetLeft[loopCounter].strokeColor[2] == 0)
          strokeWeight(8);
        else
          strokeWeight(4);
        stroke(widgetLeft[loopCounter].strokeColor[0], widgetLeft[loopCounter].strokeColor[1], widgetLeft[loopCounter].strokeColor[2]);
        fill(255, 140, 140); 
        rect(widgetLeft[loopCounter].x, widgetLeft[loopCounter].y, 
          widgetLeft[loopCounter].sizeX, widgetLeft[loopCounter].sizeY, 10);
      }
      //basically draw nothing otherwise
      else {
        stroke(255, 0);
        fill(140, 140, 140, 0);
        rect(widgetLeft[loopCounter].x, widgetLeft[loopCounter].y, 
          widgetLeft[loopCounter].sizeX, widgetLeft[loopCounter].sizeY, 10);
      }
    }

    //right 3 widgets
    fill(0, 255, 123);
    for (int loopCounter=0; loopCounter < widgetRight.length; loopCounter++) {
      //this means that there is an app attached to the widget
      if (widgetRight[loopCounter].name != null) {
        if (widgetRight[loopCounter].strokeColor[2] == 0)
          strokeWeight(8);
        else
          strokeWeight(4);
        stroke(widgetRight[loopCounter].strokeColor[0], widgetRight[loopCounter].strokeColor[1], widgetRight[loopCounter].strokeColor[2]);
        fill(140);
        rect(widgetRight[loopCounter].x, widgetRight[loopCounter].y, 
          widgetRight[loopCounter].sizeX, widgetRight[loopCounter].sizeY, 10);
        processWidgetInfo(widgetRight[loopCounter]);
        stroke(255, 0);
      }
      //the widgets are shown because we are either placing an app, or we are moving widgets
      else if (appSelected != -1 || moveButton.clicked == 1) {
        if (widgetRight[loopCounter].strokeColor[2] == 0)
          strokeWeight(8);
        else
          strokeWeight(4);
        stroke(widgetRight[loopCounter].strokeColor[0], widgetRight[loopCounter].strokeColor[1], widgetRight[loopCounter].strokeColor[2]);
        fill(255, 140, 140); 
        rect(widgetRight[loopCounter].x, widgetRight[loopCounter].y, 
          widgetRight[loopCounter].sizeX, widgetRight[loopCounter].sizeY, 10);
        stroke(255, 0);
      } else {
        stroke(255, 0);
        fill(140, 140, 140, 0);
        rect(widgetRight[loopCounter].x, widgetRight[loopCounter].y, 
          widgetRight[loopCounter].sizeX, widgetRight[loopCounter].sizeY, 10);
      }
    }
    strokeWeight(4);
    fill(0);
    //app button
    if (appButton.clicked == 0) {
      moveButton.x = 135;
      appSelected = -1;
      appImg.resize(appButton.sizeX, appButton.sizeY);
      image(appImg, appButton.x, appButton.y);
    } else {
      moveButton.x = 925;
      appImgSelected.resize(appButton.sizeX, appButton.sizeY);
      image(appImgSelected, appButton.x, appButton.y);
      fill(140);
      rect(appBox.x, appBox.y, appBox.sizeX, appBox.sizeY, 10);

      for (int i = 0; i < appArr.length; i++) {
        if (appArr[i].clicked == 1) {
          fill(255, 255, 0);
          rect(appArr[i].x, appArr[i].y, appArr[i].sizeX, appArr[i].sizeY, 10);
        }
        fill(140);
        appArr[i].image.resize(appArr[i].sizeX, appArr[i].sizeY);
        image(appArr[i].image, appArr[i].x, appArr[i].y);
      }
    }

    //move widget button
    if (moveButton.clicked == 0) {
      moveImg.resize(moveButton.sizeX, moveButton.sizeY);
      image(moveImg, moveButton.x, moveButton.y);
    } else {
      moveImgSelected.resize(moveButton.sizeX, moveButton.sizeY);
      image(moveImgSelected, moveButton.x, moveButton.y);
    }

    //setting button
    if (settingButton.clicked == 0) {
      settingImg.resize(settingButton.sizeX, settingButton.sizeY);
      image(settingImg, settingButton.x, settingButton.y);
    } else {
      settingImgSelected.resize(settingButton.sizeX, settingButton.sizeY);
      image(settingImgSelected, settingButton.x, settingButton.y);
      fill(140);
      stroke(255);
      strokeWeight(2);
      rect(settingBox.x, settingBox.y, settingBox.sizeX, settingBox.sizeY, 10);
      
      fill(0);
      textSize(40);
      textAlign(LEFT);
      /*text(register.name, register.x + 30, register.y + 30);
      text(selectProfile.name, selectProfile.x + 30, selectProfile.y + 30);*/
      for(Clickable setting : settings){
        fill(setting.fillColor[0], setting.fillColor[1], setting.fillColor[2]);
        text(setting.name, setting.x + 30, setting.y + 30);
      }
      strokeWeight(2);
      stroke(0);
      line(register.x+10, register.y-20, register.x + register.sizeX-10, register.y-20);
    }

    textAlign(RIGHT);
    textSize(40);
    fill(0);
    text("Welcome, " + currentProfile.name + "!", settingButton.x - 30, settingButton.y+60);

    //tracking music play time
    if (musicFlag == 1 && playFlag == 1) {
      if (millis() - playSecond < musicMillis[musicIndex]) {
      } else {
        if (musicIndex == 0) {
          stopAmanda();
          musicIndex = 1;
          playSad();
        } else {
          stopSad();
          musicIndex = 0;
          playAmanda();
        }
        playSecond = millis();
      }
    }
  }
}

void mouseReleased() {
  if(keyboardShow){
    for(Keys[] kArr : fullKeyboard){
     for(Keys k : kArr){
        float[][] keyVerts = rectVerts(k.getCoords(), k.getSize());
        float[] keyX = keyVerts[0];
        float[] keyY = keyVerts[1];
      
       if (pnpoly(4, keyX, keyY, mouseX, mouseY) == 1) {
         if(k.name.equals("Backspace")){
           if(currentText.length() != 0)
            currentText = currentText.substring(0, currentText.length() - 1);
         }
         else if(k.name.equals("Enter")){
           keyboardShow = false;
           //IMPORTANT:: You need the reason or else we don't know what we are using the keyboard for!
           if(reason.equals("wifi")){
            wifiPwSet = true;
            reason = "none";
           }
         }
         else if(k.name.equals("Shift")){
           k.clickedOn();
           for(Keys[] keyArr : fullKeyboard){
            for(Keys kk : keyArr){
             kk.toggleUpper(k.clicked); 
            }
           }
         }
         else{
          currentText += k.name; 
         }
        
        return;
       }
     }
    }
    
    float[][] cancelVerts = rectVerts(cancelButton.getCoords(), cancelButton.getSize());
    float[] cancelX = cancelVerts[0];
    float[] cancelY = cancelVerts[1];
    
    if(pnpoly(4, cancelX, cancelY, mouseX, mouseY) == 1){
      if(reason.equals("wifi")){
        wifi = "None";
        firstLogin = true;
        reason = "none";
        keyboardShow = false;
      }
    }
  }
  if (!on) {
    float[][] powerVerts = rectVerts(powerButton.getCoords(), powerButton.getSize());
    float[] powerX = powerVerts[0];
    float[] powerY = powerVerts[1];
    if (pnpoly(4, powerX, powerY, mouseX, mouseY) == 1) {
      on = true;
    }
    return;
  } else if (on && firstLogin) {
    if (language.equals("None")) {
      for(Clickable lang : langs){
        float[][] langVerts = rectVerts(lang.getCoords(), lang.getSize());
        float[] langX = langVerts[0];
        float[] langY = langVerts[1];
        
        if(pnpoly(4, langX, langY, mouseX, mouseY) == 1) {
          language = lang.name;
          return;
        }
      }
      return;
    }
    else if(wifi.equals("None")){
     for(Clickable wifiConn : wifiConns){
       float[][] wifiVerts = rectVerts(wifiConn.getCoords(), wifiConn.getSize());
       float[] wifiX = wifiVerts[0];
       float[] wifiY = wifiVerts[1];
       
       if(pnpoly(4, wifiX, wifiY, mouseX, mouseY) == 1) {
          wifi = wifiConn.name;
          firstLogin = false;
          if(!wifi.equals("Skip")){
            keyboardShow = true;
            reason = "wifi";
            currentText = "";
          }
          return;
        }
     }
     return;
    }
  }
  
  if(settingButton.clicked == 1){
     for(Clickable setting : settings){
       float[][] settingVerts = rectVerts(setting.getCoords(), setting.getSize());
       float[] setX = settingVerts[0];
       float[] setY = settingVerts[1];
       
       if(pnpoly(4, setX, setY, mouseX, mouseY) == 1){
          if(setting.clicked == 0){
            //set everything to not be clicked
            for(Clickable setting2 : settings){
               setting2.clicked = 0; 
               setting2.changeFillColor("black");
            }
            //then set this to be clicked
            setting.clicked = 1;
            setting.changeFillColor("yellow");
            return;
          }
          else{
            setting.clicked = 0;
            setting.changeFillColor("black");
            return;
          }
       }
     }
  }
  
  if (musicFlag == 1) {
    Widget w = null;
    for (int i = 0; i < 3; i++) {
      if (widgetLeft[i].name != null && widgetLeft[i].name.equals("music")) {
        w = widgetLeft[i];
        break;
      }
      if (widgetRight[i].name != null && widgetRight[i].name.equals("music")) {
        w = widgetRight[i];
        break;
      }
    }
    if (w != null) {
      for (int i = 0; i < 3; i++) {
        float[][] musVerts = rectVerts(new int[]{w.x+20+(i*80), w.y+50}, new int[]{60, 60});
        float[] musX = musVerts[0];
        float[] musY = musVerts[1];
        if (pnpoly(4, musX, musY, mouseX, mouseY) == 1) {
          //clicked either play or pause
          if (i == 1) {
            if (playFlag == 1) {
              playFlag = 0;
              if (musicIndex == 0) {
                stopAmanda();
              } else
                stopSad();
            } else {
              playFlag = 1;
              if (musicIndex == 0)
                playAmanda();
              else
                playSad();
              playSecond = millis();
            }
          } else {
            if (musicIndex == 0) {
              musicIndex = 1;
              if (playFlag == 1) {
                stopAmanda();
                playSad();
                playSecond = millis();
              }
            } else {
              musicIndex = 0;
              if (playFlag == 1) {
                stopSad();
                playAmanda();
                playSecond = millis();
              }
            }
          }
          return;
        }
      }
    }
  }

  for (int loopCounter=0; loopCounter < widgetLeft.length; loopCounter++) {
    float[][] verts = rectVerts(widgetLeft[loopCounter].getCoords(), widgetLeft[loopCounter].getSize());
    float[] widgetX = verts[0];
    float[] widgetY = verts[1];

    if (pnpoly(4, widgetX, widgetY, mouseX, mouseY) == 1) {
      if (appSelected != -1) {
        //stop the music if we are replacing it
        if (widgetLeft[loopCounter].name != null && widgetLeft[loopCounter].name.equals("music") && !appArr[appSelected].name.equals("music")) {
          playFlag = 0;
          stopSad();
          stopAmanda();
        }
        for (int i = 0; i < widgetLeft.length; i++) {
          if (widgetLeft[i].name != null && widgetLeft[i].name.equals(appArr[appSelected].name))
            widgetLeft[i].name = null;
          if (widgetRight[i].name != null && widgetRight[i].name.equals(appArr[appSelected].name))
            widgetRight[i].name = null;
        }
        widgetLeft[loopCounter].giveName(appArr[appSelected].name);

        appArr[appSelected].clicked = 0;
        appSelected = -1;
        return;
      } else if (moveButton.clicked == 1) {
        for (int i = 0; i < widgetLeft.length; i++) {
          if (widgetLeft[i].moveFlag == 1) {
            String nam = widgetLeft[loopCounter].name;
            widgetLeft[loopCounter].name = widgetLeft[i].name;
            widgetLeft[i].name = nam;
            widgetLeft[i].moveFlag = 0;
            widgetLeft[i].changeStrokeColor("white");
            moveButton.clicked = 0;
            return;
          }
          if (widgetRight[i].moveFlag == 1) {
            String nam = widgetLeft[loopCounter].name;
            widgetLeft[loopCounter].name = widgetRight[i].name;
            widgetRight[i].name = nam;
            widgetRight[i].moveFlag = 0;
            widgetRight[i].changeStrokeColor("white");
            moveButton.clicked = 0;
            return;
          }
        }
        widgetLeft[loopCounter].moveFlag = 1;
        widgetLeft[loopCounter].changeStrokeColor("yellow");
        return;
      }
      //unexpand
      if (expandedLeft == loopCounter) {
        expandedLeft = -1;
        int[] newSize = {widgetLeft[0].sizeX, 150};
        //widgetSizeL[loopCounter] = newSize;
        widgetLeft[loopCounter].changeSize(newSize);

        if (loopCounter < 2) {
          for (int i = loopCounter+1; i <= 2; i++) {
            int[] fixedLoc = {widgetLeft[loopCounter].x, widgetLeft[i].y - 150};
            widgetLeft[i].changeCoord(fixedLoc);
          }
        }

        return;
      } else {
        //one is already expanded, so unexpand everything
        if (expandedLeft != -1 && loopCounter != expandedLeft) {
          int[] size = {widgetLeft[0].sizeX, 150};
          widgetLeft[expandedLeft].changeSize(size);
          if (expandedLeft <= 2) {
            for (int i = 0; i <= 2; i++) {
              int[] fixedLoc = {widgetLeft[loopCounter].x, normalY[i]};
              widgetLeft[i].changeCoord(fixedLoc);
            }
          }
        }
        //now do expansion
        expandedLeft = loopCounter;
        int[] newSize = {widgetLeft[0].sizeX, 300};
        widgetLeft[loopCounter].changeSize(newSize);

        if (loopCounter < 2) {
          for (int i = loopCounter+1; i <= 2; i++) {
            int[] fixedLoc = {widgetLeft[loopCounter].x, widgetLeft[i].y + 150};
            widgetLeft[i].changeCoord(fixedLoc);
          }
        }
        return;
      }
    }
  }
  for (int loopCounter=0; loopCounter < widgetRight.length; loopCounter++) {
    float[][] verts = rectVerts(widgetRight[loopCounter].getCoords(), widgetRight[loopCounter].getSize());
    float[] widgetX = verts[0];
    float[] widgetY = verts[1];

    if (pnpoly(4, widgetX, widgetY, mouseX, mouseY) == 1) {
      //we have selected an app, work on it
      if (appSelected != -1) {
        if (widgetRight[loopCounter].name != null && widgetRight[loopCounter].name.equals("music") && !appArr[appSelected].name.equals("music")) {
          playFlag = 0;
          stopSad();
          stopAmanda();
        }
        for (int i = 0; i < widgetLeft.length; i++) {
          if (widgetLeft[i].name != null && widgetLeft[i].name.equals(appArr[appSelected].name))
            widgetLeft[i].name = null;
          if (widgetRight[i].name != null &&widgetRight[i].name.equals(appArr[appSelected].name))
            widgetRight[i].name = null;
        }
        widgetRight[loopCounter].giveName(appArr[appSelected].name);

        appArr[appSelected].clicked = 0;
        appSelected = -1;
        return;
      }
      //if we are moving
      else if (moveButton.clicked == 1) {
        for (int i = 0; i < widgetLeft.length; i++) {
          if (widgetLeft[i].moveFlag == 1) {
            String nam = widgetRight[loopCounter].name;
            widgetRight[loopCounter].name = widgetLeft[i].name;
            widgetLeft[i].name = nam;
            widgetLeft[i].moveFlag = 0;
            widgetLeft[i].changeStrokeColor("white");
            moveButton.clicked = 0;
            return;
          }
          if (widgetRight[i].moveFlag == 1) {
            String nam = widgetRight[loopCounter].name;
            widgetRight[loopCounter].name = widgetRight[i].name;
            widgetRight[i].name = nam;
            widgetRight[i].moveFlag = 0;
            widgetRight[i].changeStrokeColor("white");
            moveButton.clicked = 0;
            return;
          }
        }
        widgetRight[loopCounter].moveFlag = 1;
        widgetRight[loopCounter].changeStrokeColor("yellow");
        return;
      }
      if (expandedRight == loopCounter) {
        expandedRight = -1;
        int[] newSize = {widgetRight[0].sizeX, 150};
        widgetRight[loopCounter].changeSize(newSize);

        if (loopCounter < 2) {
          for (int i = loopCounter+1; i <= 2; i++) {
            int[] fixedLoc = {widgetRight[loopCounter].x, widgetRight[i].y - 150};
            widgetRight[i].changeCoord(fixedLoc);
          }
        }

        return;
      } else {
        if (expandedRight != -1 && loopCounter != expandedRight) {
          int[] size = {widgetRight[0].sizeX, 150};
          widgetRight[expandedRight].changeSize(size);
          if (expandedRight <= 2) {
            for (int i = 0; i <= 2; i++) {
              int[] fixedLoc = {widgetRight[loopCounter].x, normalY[i]};
              widgetRight[i].changeCoord(fixedLoc);
            }
          }
        }
        expandedRight = loopCounter;
        int[] newSize = {widgetRight[0].sizeX, 300};
        widgetRight[loopCounter].changeSize(newSize);

        if (loopCounter < 2) {
          for (int i = loopCounter+1; i <= 2; i++) {
            int[] fixedLoc = {widgetRight[loopCounter].x, widgetRight[i].y + 150};
            widgetRight[i].changeCoord(fixedLoc);
          }
        }
        return;
      }
    }
  }

  float[][] vertsApp = rectVerts(appButton.getCoords(), appButton.getSize());
  float[] appX = vertsApp[0];
  float[] appY = vertsApp[1];
  if (pnpoly(4, appX, appY, mouseX, mouseY) == 1) {
    /*if(appExpanded == 0){
     appExpanded = 1; 
     moveButton.x = 925;
     }
     else{
     appExpanded = 0;
     }*/
    if (appSelected != -1) {
      appArr[appSelected].clicked = 0;
      appSelected = -1;
    }
    appButton.clickedOn();
  }

  float[][] vertsSetting = rectVerts(settingButton.getCoords(), settingButton.getSize());
  float[] setX = vertsSetting[0];
  float[] setY = vertsSetting[1];
  if (pnpoly(4, setX, setY, mouseX, mouseY) == 1) {
    /*if(settingExpanded == 0){
     settingExpanded = 1; 
     }
     else{
     settingExpanded = 0;
     }*/
    settingButton.clickedOn();
  }


  float[][] vertsMove = rectVerts(moveButton.getCoords(), moveButton.getSize());
  float[] movX = vertsMove[0];
  float[] movY = vertsMove[1];
  if (pnpoly(4, movX, movY, mouseX, mouseY) == 1) {
    if (appSelected != -1)
      return;
    moveButton.clickedOn();
  }

  for (int i = 0; i < appArr.length; i++) {
    float[][] app = rectVerts(appArr[i].getCoords(), appArr[i].getSize());
    float[] appsX = app[0];
    float[] appsY = app[1];
    if (pnpoly(4, appsX, appsY, mouseX, mouseY) == 1) {
      if (moveButton.clicked == 1)
        return;
      if (appArr[i].clicked == 1) {
        appArr[i].clicked = 0;
        appSelected = -1;
        return;
      }
      //make sure none of the others are clicked, brute force it
      for (int j = 0; j < appArr.length; j++) {
        appArr[j].clicked = 0;
      }
      appSelected = i;
      appArr[i].clicked = 1;
      return;
    }
  }
}

//returns verticies of a rectangle, given the top left coordinate and the size
//verts[0] = x verticies
//verts[1] = y verticies
float[][] rectVerts(int[] topLeft, int[] size) {
  int x = topLeft[0];
  int dx = size[0];
  int y = topLeft[1];
  int dy = size[1];
  float[] vertX = {x, x+dx, x+dx, x};
  float[] vertY = {y, y, y+dy, y+dy};

  float[][] verts = {vertX, vertY};
  return verts;
}

//magic function
int pnpoly(int nvert, float[] vertx, float[] verty, float testx, float testy)
{
  int i, j, c = 0;
  for (i = 0, j = nvert - 1; i < nvert; j = i++) {
    if (((verty[i]>testy) != (verty[j]>testy)) &&
      (testx < (vertx[j] - vertx[i]) * (testy - verty[i]) / (verty[j] - verty[i]) + vertx[i])) {
      if (c == 0)
        c = 1;
      else
        c = 0;
      //c = c;
    }
  }
  return c;
}