DateTimeItem dti;

Clickable  powerButton = new Clickable(2607, 1425, 100, 100);
PImage power;
boolean on;
boolean firstLogin;

Audio wrongSound = new Audio();

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

BackgroundBox profileBox = new BackgroundBox(1066, 668, 600, 460);
boolean profileSelect = false;
//equilateral 40
int[][] arrows = {{1616, 738, 1596, 778, 1636, 778}, {1616, 1118, 1596, 1078, 1636, 1078}};

BackgroundBox socialMediaBox = new BackgroundBox(1066, 668, 600, 360);
boolean socialMediaSelect = false;

BackgroundBox blueToothBox = new BackgroundBox(1066, 668, 600, 360);
boolean blueToothSelect = false;
boolean blueToothOn = true;
Clickable blueToothToggle = new Clickable(1426, 748, 120, 60);

BackgroundBox timeDateBox = new BackgroundBox(1066, 668, 600, 360);
boolean timeDateSelect = false;
Clickable[] timeToggle = {new Clickable(1226, 748, 120, 60, "AM/PM"), new Clickable(1426, 748, 120, 60, "Military")};
Clickable[] dateToggle = {new Clickable(1226, 848, 120, 60, "M/D/Y"), new Clickable(1426, 848, 120, 60, "D/M/Y")};
Clickable[] tempToggle = {new Clickable(1226, 948, 120, 60, "°F"), new Clickable(1426, 948, 120, 60, "°C")};

BackgroundBox brightnessBox = new BackgroundBox(1066, 668, 600, 360);
boolean brightnessSelect = false;
int brightnessValue = 100;
int[][] brightnessArrow = {{1076, 878, 1116, 898, 1116, 858},{1656, 878, 1616, 898, 1616, 858}};

boolean languageSelect = false;

Clickable currentWifiSet = null;
boolean wifiSelect = false;

BackgroundBox emailBox = new BackgroundBox(1066, 668, 600, 360);
boolean emailSelect = false;
Clickable emailButton = new Clickable(1426, 748, 120, 60);
PImage emailImage;

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

PImage registerImg;

Clickable moveButton = new Clickable(135, 1425, 100, 100);
PImage moveImg;
PImage moveImgSelected; 

Clickable trashButton = new Clickable(1316, 1416, 100, 100);
PImage trashImg;

int dayOfWeek;

//background boxes
BackgroundBox appBox = new BackgroundBox(125, 1325, 775, 200);

BackgroundBox settingBox = new BackgroundBox(2307, 695, 400, 730);
Clickable register = new Clickable(2307, 1300, 400, 55);
Clickable selectProfile = new Clickable(2307, 1365, 400, 55);
Clickable powerOff = new Clickable(2307, 1235, 400, 55);
Clickable clearScreen = new Clickable(2307, 1170, 400, 55);
Clickable socialMedia = new Clickable(2307, 1105, 400, 55);
Clickable blueTooth = new Clickable(2307, 1040, 400, 55);
Clickable timeDate = new Clickable(2307, 975, 400, 55);
Clickable brightness = new Clickable(2307, 910, 400, 55);
Clickable languageSetting = new Clickable(2307, 845, 400, 55);
Clickable wifiSetting = new Clickable(2307, 780, 400, 55);
Clickable emailSetting = new Clickable(2307, 715, 400, 55);

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
AppButton stopwatchIcon = new AppButton(435, 1330, 90, 90, "stopwatch");
AppButton noteIcon = new AppButton(435, 1430, 90, 90, "note");
AppButton emailIcon = new AppButton(535, 1330, 90, 90, "email");
AppButton twitterIcon = new AppButton(535, 1430, 90, 90, "twitter");
PImage twitterImage;
AppButton instagramIcon = new AppButton(635, 1330, 90, 90, "instagram");
PImage instagramImage;
AppButton facebookIcon = new AppButton(635, 1430, 90, 90, "facebook");
PImage facebookImage;
int appSelected = -1;

//Put all AppButtons in here
AppButton[] appArr;

void setup() {
  size(2732, 1536);

  dti = new DateTimeItem(new Point(width/2, 80), new Point(width/2, 150));

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
  powerOff.setName("Power Off");
  clearScreen.setName("Clear Screen");
  socialMedia.setName("Social Media");
  blueTooth.setName("Bluetooth");
  timeDate.setName("Time/Date/Temp");
  brightness.setName("Brightness");
  languageSetting.setName("Language");
  wifiSetting.setName("WiFi");
  emailSetting.setName("Email");
  
  settings = new Clickable[]{register, selectProfile, powerOff, clearScreen, socialMedia, blueTooth, timeDate, brightness, languageSetting, wifiSetting, emailSetting};
    
  guestProfile = new Profile("Guest", "0000");
  currentProfile = guestProfile;
  
  registerImg = loadImage("register.png", "png");
  registerImg.loadPixels();
  
  timeToggle[0].clicked = 1;
  dateToggle[0].clicked = 1;
  tempToggle[0].clicked = 1;
/********* SETTING ***********/


  moveImg = loadImage("move.png", "png");
  //https://www.iconfinder.com/icons/237454/arrow_cursor_move_icon
  moveImg.loadPixels();
  
  trashImg = loadImage("trash.png", "png");
  //https://thenounproject.com/term/trash-can/425731/
  trashImg.loadPixels();

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

  stopwatchIcon.image = loadImage("stopwatch.png", "png");
  //https://thenounproject.com/term/stopwatch/141007/
  stopwatchIcon.image.loadPixels();

  noteIcon.image = loadImage("note.png", "png");
  //https://www.iconfinder.com/icons/261628/document_modify_note_notes_paper_pencil_record_icon
  noteIcon.image.loadPixels();

  emailIcon.image = loadImage("email.png", "png");
  //http://www.freeiconspng.com/icons/email-icon
  emailIcon.image.loadPixels();

  twitterIcon.image = loadImage("twitter.png", "png");
  //http://www.iconarchive.com/show/socialmedia-icons-by-uiconstock/Twitter-icon.html
  twitterIcon.image.loadPixels();

  twitterImage = loadImage("twitter.png", "png");
  twitterImage.loadPixels();

  instagramIcon.image = loadImage("instagram.png", "png");
  //https://www.reddit.com/r/Android/comments/4j7x3w/material_instagram_icons/
  instagramIcon.image.loadPixels();

  instagramImage = loadImage("instagram.png", "png");
  instagramImage.loadPixels();

  facebookIcon.image = loadImage("facebook.png", "png");
  //http://www.business2community.com/small-business/social-media-beneficial-small-business-owners-5-sites-best-ways-use-01772814#bvFfklVSsoJosYYG.97
  facebookIcon.image.loadPixels();
  
  facebookImage = loadImage("facebook.png", "png");
  facebookImage.loadPixels();

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
  appArr = new AppButton[]{weatherIcon, musicIcon, healthIcon, calendarIcon, newsIcon, timerIcon, stopwatchIcon, noteIcon, emailIcon, twitterIcon, instagramIcon, facebookIcon};

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
/********* KEYBOARD ***********/
  profileList = new ArrayList();
  profileIndex = 0;
  
  wrongSound.setAttribute("src", "wrong.wav");

  currentMediaUsername = "";
  
  emailImage = loadImage("gmail.png", "png");
  //https://cdn4.iconfinder.com/data/icons/free-colorful-icons/360/gmail.png
  emailImage.loadPixels();
  
  calendarImage = loadImage("april.png", "png");
  //http://www.free-printable-calendar.com/printable-calendar-images/april-2017-printable-calendar.gif
  calendarImage.loadPixels();
  
  cnnIcon = loadImage("cnn.png", "png");
  //http://www.siriusxm.com/cmds/displayLogo?key=cnn&imageType=16
  cnnIcon.loadPixels();
  
  reutersIcon = loadImage("reuters.jpg", "jpg");
  //https://pbs.twimg.com/profile_images/806242452528975872/noWUmHen.jpg
  reutersIcon.loadPixels();
  
  googleNewsIcon = loadImage("google.png", "png");
  //https://uappexplorer.com/api/icon/320d6f32c23cc7e4197b42df9d625d18/googlenews.mreese.png
  googleNewsIcon.loadPixels();
}

void playWrong(){
  wrongSound.play(); 
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
  
  fill(0, 100-brightnessValue);
  rect(0,0,2732, 1536);
  
  noStroke();

  //setup date time on the top center
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
    
    if(reason.equals("registerUsername")){
      registerImg.resize(250,250);
      image(registerImg, 2732/2 - 125, 575);
      
      fill(0);
      textSize(80);
      textAlign(CENTER);
      text("Please Your Desired Username:", 2732/2, 550);
    }
    else if(reason.equals("registerPassword")){
      registerImg.resize(250,250);
      image(registerImg, 2732/2 - 125, 575);
      
      fill(0);
      textSize(80);
      textAlign(CENTER);
      text("Please Your Desired Password:", 2732/2, 550);
    }
    else if(reason.equals("profilePassword")){
      fill(0);
      textSize(80);
      textAlign(CENTER);
      text("Please Enter " + loggingIn.name + "'s Password:", 2732/2, 550);
    }
    else if(reason.equals("socialMediaUsername")){
      fill(0);
      textSize(80);
      textAlign(CENTER);
      String s = "";
      if(mediaIndex == 0)
        s = "Twitter";
      else if(mediaIndex == 1)
        s = "Instagram";
      else
        s = "Facebook";
      text("Please Enter Your " + s + " Username:", 2732/2, 550);
    }
    else if(reason.equals("socialMediaPassword")){
      fill(0);
      textSize(80);
      textAlign(CENTER);
      String s = "";
      if(mediaIndex == 0)
        s = "Twitter";
      else if(mediaIndex == 1)
        s = "Instagram";
      else
        s = "Facebook";
      text("Please Enter Your " + s + " Password:", 2732/2, 550);
    }
    else if(reason.equals("wifiSetting")){
    fill(0);
    textSize(80);
    textAlign(CENTER);
    text("Please Enter " + currentWifiSet.name + "'s Password:", 2732/2, 350);
    }
    else if(reason.equals("emailUsername")){
      fill(0);
      textSize(80);
      textAlign(CENTER);
      text("Please Enter Gmail Username:", 2732/2, 550);
    }
    else if(reason.equals("emailPassword")){
      fill(0);
      textSize(80);
      textAlign(CENTER);
      text("Please Enter " + currentProfile.emailLog + "'s Password:", 2732/2, 550);
    }
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
    
    if(!keyboardShow){
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
      
      trashImg.resize(trashButton.sizeX, trashButton.sizeY);
      image(trashImg, trashButton.x, trashButton.y);
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
      line(clearScreen.x+10, clearScreen.y-20, clearScreen.x+clearScreen.sizeX-10, clearScreen.y-20);
    }

    textAlign(RIGHT);
    textSize(40);
    fill(0);
    text("Welcome, " + currentProfile.name + "!", settingButton.x - 30, settingButton.y+60);

    if(profileSelect){
      strokeWeight(4);
      fill(0,0);
      rect(skipButton.x, skipButton.y, skipButton.sizeX, skipButton.sizeY);      
      textAlign(CENTER);
      fill(0);
      textSize(50);
      text("Exit", skipButton.x+(skipButton.sizeX/2), skipButton.y+(skipButton.sizeY/2)+20);
      
      fill(180);
      stroke(0);
      strokeWeight(4);
      rect(profileBox.x, profileBox.y, profileBox.sizeX, profileBox.sizeY);

      fill(0);
      text("Profiles", profileBox.x+(profileBox.sizeX/2), profileBox.y+50);

      line(profileBox.x, profileBox.y+60, profileBox.x+profileBox.sizeX, profileBox.y+60);

      if(profileIndex != 0){
        triangle(arrows[0][0], arrows[0][1], arrows[0][2], arrows[0][3], arrows[0][4], arrows[0][5]);
      }
      if(profileIndex+4 < profileList.size()){
        triangle(arrows[1][0], arrows[1][1], arrows[1][2], arrows[1][3], arrows[1][4], arrows[1][5]);
      }
      
      strokeWeight(2);
      textAlign(LEFT);
      int i = 0;
      for(Clickable pButton : profileButtons){
        if(!pButton.hasProfile())
          break;
        fill(0);
        textSize(40);
        text(pButton.profile.name, pButton.x + 50, pButton.y+70);
        pButton.drawLine();
        
        fill(180,0);
        rect(acutalProfileButtons[i].x, acutalProfileButtons[i].y, acutalProfileButtons[i].sizeX, acutalProfileButtons[i].sizeY, 10);
        fill(0);
        textSize(30);
        if(currentProfile.name.equals(pButton.profile.name)){
         fill(255, 0, 140); 
         text("Delete", acutalProfileButtons[i].x+15, acutalProfileButtons[i].y+40);
        }
        else{
          text("Select", acutalProfileButtons[i].x+15, acutalProfileButtons[i].y+40);
        }
        i++;
      }
    }
    
    if(socialMediaSelect){
      strokeWeight(4);
      fill(0,0);
      rect(skipButton.x, skipButton.y, skipButton.sizeX, skipButton.sizeY);      
      textAlign(CENTER);
      fill(0);
      textSize(50);
      text("Exit", skipButton.x+(skipButton.sizeX/2), skipButton.y+(skipButton.sizeY/2)+20);
      
      fill(180);
      stroke(0);
      strokeWeight(4);
      rect(socialMediaBox.x, socialMediaBox.y, socialMediaBox.sizeX, socialMediaBox.sizeY);
      
      fill(0);
      text("Social Media", socialMediaBox.x+(socialMediaBox.sizeX/2), socialMediaBox.y+50);

      line(socialMediaBox.x, socialMediaBox.y+60, socialMediaBox.x+socialMediaBox.sizeX, socialMediaBox.y+60);
      
      currentProfile.drawSocialMedia(socialMediaBox);
    }
    
    if(blueToothSelect){
      strokeWeight(4);
      fill(0,0);
      rect(skipButton.x, skipButton.y, skipButton.sizeX, skipButton.sizeY);      
      textAlign(CENTER);
      fill(0);
      textSize(50);
      text("Exit", skipButton.x+(skipButton.sizeX/2), skipButton.y+(skipButton.sizeY/2)+20);
      
      fill(180);
      stroke(0);
      strokeWeight(4);
      rect(blueToothBox.x, blueToothBox.y, blueToothBox.sizeX, blueToothBox.sizeY);
      
      fill(0);
      text("Bluetooth", blueToothBox.x+(blueToothBox.sizeX/2), blueToothBox.y+50);

      line(blueToothBox.x, blueToothBox.y+60, blueToothBox.x+blueToothBox.sizeX, blueToothBox.y+60);
      
      fill(180,0);
      rect(blueToothToggle.x, blueToothToggle.y, blueToothToggle.sizeX, blueToothToggle.sizeY, 10);
      
      fill(0);
      textSize(30);
      String textVal = "Turn Off";
      if(!blueToothOn){
        textVal = "Turn On";
      }
      text(textVal, blueToothToggle.x+60, blueToothToggle.y+40);
      
      fill(50, 255, 50);
      textAlign(LEFT);
      textVal = "Status: ON";
      if(!blueToothOn){
       fill(255, 50, 50);
       textVal = "Status: OFF"; 
      }

      textSize(40);
      text(textVal, blueToothBox.x + 60, blueToothToggle.y+40);
      
      fill(0);
      if(blueToothOn){
       text("✓ FitBit",   blueToothBox.x + 60, blueToothToggle.y+140);
       text("✓ iPhone 6",  blueToothBox.x + 60, blueToothToggle.y+200);
      }
    }
    
    
    if(timeDateSelect){
      strokeWeight(4);
      fill(0,0);
      rect(skipButton.x, skipButton.y, skipButton.sizeX, skipButton.sizeY);      
      textAlign(CENTER);
      fill(0);
      textSize(50);
      text("Exit", skipButton.x+(skipButton.sizeX/2), skipButton.y+(skipButton.sizeY/2)+20);
      
      fill(180);
      stroke(0);
      strokeWeight(4);
      rect(timeDateBox.x, timeDateBox.y, timeDateBox.sizeX, timeDateBox.sizeY);
      
      fill(0);
      text("Time/Date/Temp", timeDateBox.x+(timeDateBox.sizeX/2), timeDateBox.y+50);
      line(timeDateBox.x, timeDateBox.y+60, timeDateBox.x+timeDateBox.sizeX, timeDateBox.y+60);
      
      fill(180,0);
      rect(timeToggle[0].x, timeToggle[0].y, timeToggle[0].sizeX, timeToggle[0].sizeY, 10);  
      rect(timeToggle[1].x, timeToggle[1].y, timeToggle[1].sizeX, timeToggle[1].sizeY, 10);
      socialMediaClick[0].drawLine();
      
      fill(180,0);
      rect(dateToggle[0].x, dateToggle[0].y, dateToggle[0].sizeX, dateToggle[0].sizeY, 10);  
      rect(dateToggle[1].x, dateToggle[1].y, dateToggle[1].sizeX, dateToggle[1].sizeY, 10); 
      socialMediaClick[1].drawLine();
      
      fill(180,0);  
      rect(tempToggle[0].x, tempToggle[0].y, tempToggle[0].sizeX, tempToggle[0].sizeY, 10);  
      rect(tempToggle[1].x, tempToggle[1].y, tempToggle[1].sizeX, tempToggle[1].sizeY, 10); 
      socialMediaClick[2].drawLine();
      
      fill(0);
      textAlign(LEFT);
      textSize(30);
      text("Time: ", timeToggle[0].x-140,  timeToggle[0].y+40);
      if(timeToggle[0].clicked == 1)
        fill(255, 50, 50);
      text(timeToggle[0].name, timeToggle[0].x+10,  timeToggle[0].y+40);
      fill(0);
      if(timeToggle[1].clicked == 1)
        fill(255, 50, 50);
      text(timeToggle[1].name, timeToggle[1].x+10,  timeToggle[1].y+40);
      
      fill(0);
      text("Date: ", dateToggle[0].x-140,  dateToggle[0].y+40);
      if(dateToggle[0].clicked == 1)
        fill(255, 50, 50);
      text(dateToggle[0].name, dateToggle[0].x+10,  dateToggle[0].y+40);
      fill(0);
      if(dateToggle[1].clicked == 1)
        fill(255, 50, 50);
      text(dateToggle[1].name, dateToggle[1].x+10,  dateToggle[1].y+40);
      
      fill(0);
      text("Temp: ", tempToggle[0].x-140,  tempToggle[0].y+40);
      if(tempToggle[0].clicked == 1)
        fill(255, 50, 50);
      text(tempToggle[0].name, tempToggle[0].x+10,  tempToggle[0].y+40);
      fill(0);
      if(tempToggle[1].clicked == 1)
        fill(255, 50, 50);
      text(tempToggle[1].name, tempToggle[1].x+10,  tempToggle[1].y+40);
    }
    
    if(brightnessSelect){
      strokeWeight(4);
      fill(0,0);
      rect(skipButton.x, skipButton.y, skipButton.sizeX, skipButton.sizeY);      
      textAlign(CENTER);
      fill(0);
      textSize(50);
      text("Exit", skipButton.x+(skipButton.sizeX/2), skipButton.y+(skipButton.sizeY/2)+20);
      
      fill(180);
      stroke(0);
      strokeWeight(4);
      rect(brightnessBox.x, brightnessBox.y, brightnessBox.sizeX, brightnessBox.sizeY);
      
      fill(0);
      text("Brightness", brightnessBox.x+(brightnessBox.sizeX/2), brightnessBox.y+50);
      line(brightnessBox.x, brightnessBox.y+60, brightnessBox.x+brightnessBox.sizeX, brightnessBox.y+60);
      
      if(brightnessValue != 0)
        triangle(brightnessArrow[0][0], brightnessArrow[0][1], brightnessArrow[0][2], brightnessArrow[0][3], brightnessArrow[0][4], brightnessArrow[0][5]);
      if(brightnessValue != 100)
        triangle(brightnessArrow[1][0], brightnessArrow[1][1], brightnessArrow[1][2], brightnessArrow[1][3], brightnessArrow[1][4], brightnessArrow[1][5]);
      
      text(brightnessValue+"%", 1356, 898);
    }
    
    if(languageSelect){
      textAlign(CENTER);
      fill(180);
      stroke(0);
      strokeWeight(4);
      rect(langBox.x, langBox.y, langBox.sizeX, langBox.sizeY);
      strokeWeight(0);
      fill(0,0);
      rect(skipButton.x, skipButton.y, skipButton.sizeX, skipButton.sizeY);      

      fill(0);
      textSize(50);
      text("Exit", skipButton.x+(skipButton.sizeX/2), skipButton.y+(skipButton.sizeY/2)+20);

      text("Language", langBox.x+(langBox.sizeX/2), langBox.y+50);
      stroke(0);
      strokeWeight(4);
      line(langBox.x, langBox.y+60, langBox.x+langBox.sizeX, langBox.y+60);

      strokeWeight(2);
      english.getFillColor();
      text(english.name, english.x+(english.sizeX/2), english.y+70);
      english.drawLine();
      spanish.getFillColor();
      text(spanish.name, spanish.x+(spanish.sizeX/2), spanish.y+70);
      spanish.drawLine();
      french.getFillColor();
      text(french.name, french.x+(french.sizeX/2), french.y+70);
      french.drawLine();
      lang4.getFillColor();
      text(lang4.name, lang4.x+(lang4.sizeX/2), lang4.y+70);
      lang4.drawLine(); 
      
      fill(0);
    }
    
    if(wifiSelect){
      textAlign(CENTER);
      fill(180);
      stroke(0);
      strokeWeight(4);
      rect(wifiBox.x, wifiBox.y, wifiBox.sizeX, wifiBox.sizeY);
      strokeWeight(0);
      fill(0,0);
      rect(skipButton.x, skipButton.y, skipButton.sizeX, skipButton.sizeY);
      
      fill(0);
      textSize(50);
      text("Exit", skipButton.x+(skipButton.sizeX/2), skipButton.y+(skipButton.sizeY/2)+20);
      
      text("WiFi", wifiBox.x+(wifiBox.sizeX/2), wifiBox.y+50);
      stroke(0);
      strokeWeight(4);
      line(wifiBox.x, wifiBox.y+60, wifiBox.x+wifiBox.sizeX, wifiBox.y+60);
      
      //I know that I can do this smarter, but for now I want to keep it like this in case I change anything
      
      strokeWeight(2);
      wifi1.getFillColor();
      text(wifi1.name, wifi1.x+(wifi1.sizeX/2), wifi1.y+70);
      wifiMax.resize(60,60);
      image(wifiMax, wifi1.x+30, wifi1.y+30);
      wifi1.drawLine();
      
      wifi2.getFillColor();
      text(wifi2.name, wifi2.x+(wifi2.sizeX/2), wifi2.y+70);
      wifiMed.resize(60,60);
      image(wifiMed, wifi2.x+30, wifi2.y+30);
      wifi2.drawLine();
      
      wifi3.getFillColor();
      text(wifi3.name, wifi3.x+(wifi3.sizeX/2), wifi3.y+70);
      wifiMed.resize(60,60);
      image(wifiMed, wifi3.x+30, wifi3.y+30);
      wifi3.drawLine();
      
      wifi4.getFillColor();
      text(wifi4.name, wifi4.x+(wifi4.sizeX/2), wifi4.y+70);
      wifiLow.resize(60,60);
      image(wifiLow, wifi4.x+30, wifi4.y+30);
      wifi4.drawLine(); 
      
      fill(0);
    }
    
    if(emailSelect){
      strokeWeight(4);
      fill(0,0);
      rect(skipButton.x, skipButton.y, skipButton.sizeX, skipButton.sizeY);      
      textAlign(CENTER);
      fill(0);
      textSize(50);
      text("Exit", skipButton.x+(skipButton.sizeX/2), skipButton.y+(skipButton.sizeY/2)+20);
      
      fill(180);
      stroke(0);
      strokeWeight(4);
      rect(emailBox.x, emailBox.y, emailBox.sizeX, emailBox.sizeY);
      
      fill(0);
      text("Email", emailBox.x+(emailBox.sizeX/2), emailBox.y+50);

      line(emailBox.x, emailBox.y+60, emailBox.x+emailBox.sizeX, emailBox.y+60);
      

      
      if(currentProfile.name.equals("Guest")){
         textAlign(CENTER);
         textSize(40);
         text("Please create a profile first",emailBox.x+(emailBox.sizeX/2), emailBox.y+(emailBox.sizeY/2));
      }
      else{
        fill(180,0);
        rect(emailButton.x, emailButton.y, emailButton.sizeX, emailButton.sizeY, 10);
      
        fill(0);
        textSize(30);
        String textVal = "Log In";
        if(!currentProfile.emailLog.equals("None")){
          textVal = "Log Off";
        }
        text(textVal, emailButton.x+60, emailButton.y+40);
        
        textAlign(LEFT);
        textVal = "Not Logged In";
        if(!currentProfile.emailLog.equals("None")){
         textVal = currentProfile.emailLog; 
        }
    
        textSize(40);
        text(textVal, emailBox.x + 60, emailButton.y+40);
        
        emailImage.resize(100,100);
        image(emailImage, emailBox.x+(emailBox.sizeX/2)-50,  emailBox.y+(emailBox.sizeY/2));
      }
    }

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
    
    if(timerStart){
     if(millis() - timerBegin < timerMillisTotal){
     }
     else{
       //play alarm
       timerStart = false;
       timerSec = 0;
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
           if(currentText.length() == 0){
            playWrong(); 
            return;
           }
           //IMPORTANT:: You need the reason or else we don't know what we are using the keyboard for!
           if(reason.equals("wifi")){
            wifiPwSet = true;
            reason = "none";
            keyboardShow = false;
            currentWifiSet.clicked = 1;
            currentWifiSet = null;
           }
           else if(reason.equals("registerUsername")){
            for(int i = 0; i < profileList.size(); i++){
              Profile p = (Profile)profileList.get(i);
              if(p.name.equals(currentText)){
                playWrong();
                return;
              }
            }
            reason = "registerPassword";
            currentUsername = currentText;
            currentText = "";
           }
           else if(reason.equals("registerPassword")){
            reason = "none";
            
            Profile p = new Profile(currentUsername, currentText);
            profileList.add(p);
            currentProfile.saveInfo(language, widgetLeft, widgetRight);
            currentProfile = p;
            
            widgetLeft = new Widget[]{new Widget(100, 500, 800, 150), new Widget(100, 750, 800, 150), new Widget(100, 1000, 800, 150)};
            widgetRight = new Widget[]{new Widget(1832, 500, 800, 150), new Widget(1832, 750, 800, 150), new Widget(1832, 1000, 800, 150)};
            
            keyboardShow = false;
            register.clicked = 0;
            register.changeFillColor("black");
            
            register.name = "Logout";
           }
           else if(reason.equals("profilePassword")){
             if(currentText.equals(loggingIn.pin)){
               register.name = "Logout";
               
               currentProfile.saveInfo(language, widgetLeft, widgetRight);
               
               currentProfile = loggingIn;
         
               widgetLeft = loggingIn.widgetLeft;
               widgetRight = loggingIn.widgetRight;
               
               selectProfile.clicked = 0;
               selectProfile.changeFillColor("black");
                              
               profileSelect = false;
               profileIndex = 0;
               keyboardShow = false;
             }
             else{
               playWrong();
               currentText = "";
             }
           }
           else if(reason.equals("socialMediaUsername")){
             reason = "socialMediaPassword";
             currentMediaUsername = currentText;
             currentText = "";
           }
           else if(reason.equals("socialMediaPassword")){
             currentProfile.setMedia(currentMediaUsername, mediaIndex);
             currentMediaUsername = "";
             mediaIndex = -1;
             
             socialMediaSelect = true;
             keyboardShow = false;
           }
           else if(reason.equals("wifiSetting")){
            wifiPwSet = true;
            reason = "none";
            keyboardShow = false;
            for(Clickable wifiConn : wifiConns){
              wifiConn.clicked = 0;
            }
            wifi = currentWifiSet.name;
            currentWifiSet.clicked = 1;
            
             wifiSetting.clicked = 0;
             wifiSetting.changeFillColor("black");
           }
           else if(reason.equals("emailUsername")){
            currentProfile.emailLog = currentText;
            reason = "emailPassword";
            currentText = "";
           }
           else if(reason.equals("emailPassword")){
            keyboardShow = false;
            emailSelect = true;
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
        currentWifiSet = null;
      }
      else if(reason.equals("registerUsername") || reason.equals("registerPassword")){
        reason = "none";
        keyboardShow = false;
        register.clicked = 0;
        register.changeFillColor("black");
      }
      else if(reason.equals("profilePassword")){
        reason = "none";
        keyboardShow = false;
        profileSelect = true;
      }
      else if(reason.equals("socialMediaUsername") || reason.equals("socialMediaPassword")){
        reason = "none";
        keyboardShow = false;
        socialMediaSelect = true;
      }
      else if(reason.equals("wifiSetting")){
        keyboardShow = false;
        wifiSelect = true;
        reason = "none";
        currentWifiSet = null;
      }
      else if(reason.equals("emailUsername") || reason.equals("emailPassword")){
        currentProfile.emailLog = "None";
        emailSelect = true;
        reason = "none";
      }
    }
  }
  
  if(profileSelect){
   if(profileIndex != 0){
     float[] arrowX = {arrows[0][0], arrows[0][2], arrows[0][4]};
     float[] arrowY = {arrows[0][1], arrows[0][3], arrows[0][5]};
     if(pnpoly(3, arrowX, arrowY, mouseX, mouseY) == 1){
       profileIndex--;
       for(int i = profileIndex; i < profileIndex+4; i++){
        if(i > profileList.size()-1){
           for(int j = i-profileIndex; j < 4; j++){
            profileButtons[j].addProfile(null); 
           }
           break;
        }
        profileButtons[i-profileIndex].addProfile((Profile)profileList.get(i));
        acutalProfileButtons[i-profileIndex].addProfile((Profile)profileList.get(i));
       }
     }
    }
    if(profileIndex+4 < profileList.size()){
     float[] arrowX = {arrows[1][0], arrows[1][2], arrows[1][4]};
     float[] arrowY = {arrows[1][1], arrows[1][3], arrows[1][5]};
     if(pnpoly(3, arrowX, arrowY, mouseX, mouseY) == 1){
       profileIndex++;
       for(int i = profileIndex; i < profileIndex+4; i++){
        if(i > profileList.size()-1){
           for(int j = i-profileIndex; j < 4; j++){
            profileButtons[j].addProfile(null); 
           }
           break;
        }
        profileButtons[i-profileIndex].addProfile((Profile)profileList.get(i));
        acutalProfileButtons[i-profileIndex].addProfile((Profile)profileList.get(i));
      }
     }
    }
    
   for(int i = 0; i < acutalProfileButtons.length; i++){
    Clickable c = acutalProfileButtons[i];
    float[][] profileVerts = rectVerts(c.getCoords(), c.getSize());
    float[] profileX = profileVerts[0];
    float[] profileY = profileVerts[1];
    
    if(pnpoly(4, profileX, profileY, mouseX, mouseY) == 1){
      if(!c.hasProfile())
        return;
      
      //we are deleting
      if(c.profile.name.equals(currentProfile.name)){
         register.name = "Register";
         
         currentProfile = guestProfile;
         
         widgetLeft = guestProfile.widgetLeft;
         widgetRight = guestProfile.widgetRight;
         
         selectProfile.clicked = 0;
         selectProfile.changeFillColor("black");
         
         profileList.remove(i+profileIndex);
         
         profileSelect = false;
         profileIndex = 0;
         return;
      }
      else{
        keyboardShow = true;
        reason = "profilePassword";
        currentText = "";
        loggingIn = (Profile)profileList.get(i+profileIndex);
        profileSelect = false;
        return;
      }
    }
   }
  }
  
  if(socialMediaSelect){
    if(!currentProfile.name.equals("Guest")){
      for(int i = 0; i < socialMediaButtons.length; i++){
        Clickable c = socialMediaButtons[i];
        float[][] socialVerts = rectVerts(c.getCoords(), c.getSize());
        float[] socialX = socialVerts[0];
        float[] socialY = socialVerts[1];
        
        if(pnpoly(4, socialX, socialY, mouseX, mouseY) == 1){
          if(currentProfile.getMedia(i).equals("None")){
            keyboardShow = true;
            socialMediaSelect = false;
            reason = "socialMediaUsername";
            currentText = "";
            mediaIndex = i;
            return;
          }
          else{
            currentProfile.setMedia("None", i);
            return;
          }
        }
      }
    }
  }
  
  if(blueToothSelect){
   float[][] blueVerts = rectVerts(blueToothToggle.getCoords(), blueToothToggle.getSize());
   float[] blueX = blueVerts[0];
   float[] blueY = blueVerts[1];
   if(pnpoly(4, blueX, blueY, mouseX, mouseY) == 1){
     if(blueToothOn)
       blueToothOn = false;
     else
       blueToothOn = true;
     return;
   }
  }
  
  //I'm also a bit ashamed of this code
  if(timeDateSelect){
    for(int i = 0; i < 2; i++){
     Clickable c = timeToggle[i];
     float[][] vert = rectVerts(c.getCoords(), c.getSize()); 
     float[] vertX = vert[0];
     float[] vertY = vert[1];
     
     if(pnpoly(4, vertX, vertY, mouseX, mouseY) == 1){
        if(c.clicked == 0){
           if(i == 1){
            timeToggle[0].clicked = 0;
            c.clicked = 1;
            dti.militaryTime = true;
           }
           else{
            timeToggle[1].clicked = 0;
            c.clicked = 1;
            dti.militaryTime = false;
           }
           return;
        }
     }
     
     c = dateToggle[i];
     vert = rectVerts(c.getCoords(), c.getSize());
     vertX = vert[0];
     vertY = vert[1];
     
     if(pnpoly(4, vertX, vertY, mouseX, mouseY) == 1){
       if(c.clicked == 0){
        if(i == 1){
          dti.monthDayYear = false;
          dateToggle[0].clicked = 0;
          c.clicked = 1;
        }
        else{
         dti.monthDayYear = true;
         dateToggle[1].clicked = 0;
         c.clicked = 1;
        }
        return;
       }
     }
     
     c = tempToggle[i];
     vert = rectVerts(c.getCoords(), c.getSize());
     vertX = vert[0];
     vertY = vert[1];
     
     if(pnpoly(4, vertX, vertY, mouseX, mouseY) == 1){
       if(c.clicked == 0){
        if(i == 1){
         farenheit = false;
         tempToggle[0].clicked = 0;
         c.clicked = 1;
        }
        else{
         farenheit = true;
         tempToggle[1].clicked = 0;
         c.clicked = 1;
        }
        return;
       }
     }
    }
  }
  
  if(brightnessSelect){
    if(brightnessValue != 0){
      float[] arrowX = {brightnessArrow[0][0], brightnessArrow[0][2], brightnessArrow[0][4]};
      float[] arrowY = {brightnessArrow[0][1], brightnessArrow[0][3], brightnessArrow[0][5]};
      if(pnpoly(3, arrowX, arrowY, mouseX, mouseY) == 1){
        brightnessValue -= 5;
        return;
      }
    }
    
    if(brightnessValue != 100){
      float[] arrowX = {brightnessArrow[1][0], brightnessArrow[1][2], brightnessArrow[1][4]};
      float[] arrowY = {brightnessArrow[1][1], brightnessArrow[1][3], brightnessArrow[1][5]};
      if(pnpoly(3, arrowX, arrowY, mouseX, mouseY) == 1){
        brightnessValue += 5;
        return;
      }
    }
  }
  
  if(languageSelect){
     for(Clickable lang : langs){
        float[][] langVerts = rectVerts(lang.getCoords(), lang.getSize());
        float[] langX = langVerts[0];
        float[] langY = langVerts[1];
        
        if(pnpoly(4, langX, langY, mouseX, mouseY) == 1) {
          language = lang.name;
          if(lang.clicked != 1){
            for(Clickable lang2 : langs){
             lang2.clicked = 0; 
            }
            lang.clicked = 1;
          }
          languageSelect = false;
          languageSetting.clicked = 0;
          languageSetting.changeFillColor("black");
          return;
        }
      }
  }
  
  if(wifiSelect){
   for(Clickable wifiConn : wifiConns){
       float[][] wifiVerts = rectVerts(wifiConn.getCoords(), wifiConn.getSize());
       float[] wifiX = wifiVerts[0];
       float[] wifiY = wifiVerts[1];
       
       if(pnpoly(4, wifiX, wifiY, mouseX, mouseY) == 1) {
          if(!wifiConn.name.equals("Skip")){
            wifi = wifiConn.name;
            keyboardShow = true;
            reason = "wifiSetting";
            currentText = "";
            currentWifiSet = wifiConn;
            wifiSelect = false;
            return;
          }
        }
   }
  }
  
  if(emailSelect){
    float[][] emVerts = rectVerts(emailButton.getCoords(), emailButton.getSize());
    float[] emailX = emVerts[0];
    float[] emailY = emVerts[1];
    
    if(pnpoly(4, emailX, emailY, mouseX, mouseY) == 1) {
      if(currentProfile.emailLog.equals("None")){
        keyboardShow = true;
        reason = "emailUsername";
        emailSelect = false;
        currentText = "";
        return;
      }
      else{
        currentProfile.emailLog = "None";
        return;
      }
    }
  }
  
  
  checkSkip();
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
          lang.clicked = 1;
          languageSelect = false;
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
            currentWifiSet = wifiConn;
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
            profileSelect = false;
            keyboardShow = false;
            socialMediaSelect = false;
            blueToothSelect = false;
            timeDateSelect = false;
            brightnessSelect = false;
            languageSelect = false;
            wifiSelect = false;
            emailSelect = false;
            reason = "";
            //set everything to not be clicked
            for(Clickable setting2 : settings){
               setting2.clicked = 0; 
               setting2.changeFillColor("black");
            }
            //then set this to be clicked
            setting.clicked = 1;
            setting.changeFillColor("yellow");
            
            if(setting.name.equals("Register")){
             keyboardShow = true;
             reason = "registerUsername";
             currentText = "";
            }
            else if(setting.name.equals("Logout")){
             setting.name = "Register";
             currentProfile.saveInfo(language, widgetLeft, widgetRight);
             
             currentProfile = guestProfile;
             
             widgetLeft = guestProfile.widgetLeft;
             widgetRight = guestProfile.widgetRight;
             
             setting.clicked = 0;
             setting.changeFillColor("black");
            }
            else if(setting.name.equals("Select Profile")){
              profileSelect = true;
              profileIndex = 0;
              for(int i = profileIndex; i < profileIndex+4; i++){
                if(i > profileList.size()-1){
                   for(int j = i-profileIndex; j < 4; j++){
                    profileButtons[j].addProfile(null); 
                   }
                   break;
                }
                profileButtons[i-profileIndex].addProfile((Profile)profileList.get(i));
                acutalProfileButtons[i-profileIndex].addProfile((Profile)profileList.get(i));
              }
            }
            else if(setting.name.equals("Power Off")){
             on = false;
             setting.clicked = 0;
             setting.changeFillColor("black");
            }
            else if(setting.name.equals("Clear Screen")){
             widgetLeft = new Widget[]{new Widget(100, 500, 800, 150), new Widget(100, 750, 800, 150), new Widget(100, 1000, 800, 150)};
             widgetRight = new Widget[]{new Widget(1832, 500, 800, 150), new Widget(1832, 750, 800, 150), new Widget(1832, 1000, 800, 150)};
             setting.clicked = 0;
             setting.changeFillColor("black");
            }
            else if(setting.name.equals("Social Media")){
              socialMediaSelect = true;
            }
            else if(setting.name.equals("Bluetooth")){
               blueToothSelect = true; 
            }
            else if(setting.name.equals("Time/Date/Temp")){
               timeDateSelect = true;
            }
            else if(setting.name.equals("Brightness")){
               brightnessSelect = true; 
            }
            else if(setting.name.equals("Language")){
               languageSelect = true; 
            }
            else if(setting.name.equals("WiFi")){
               wifiSelect = true; 
            }
            else if(setting.name.equals("Email")){
               emailSelect = true; 
            }
            return;
          }
          else{
            setting.clicked = 0;
            setting.changeFillColor("black");
            if(keyboardShow){
              keyboardShow = false;
              reason = "none";
            }
            if(profileSelect){
             profileSelect = false; 
             profileIndex = 0;
            }
            if(socialMediaSelect){
              socialMediaSelect = false;
            }
            blueToothSelect = false;
            timeDateSelect = false;
            brightnessSelect = false;
            languageSelect = false;
            wifiSelect = false;
            emailSelect = false;
            return;
          }
       }
     }
  }
  if(stopwatchExist){
    Widget w = null;
    for (int i = 0; i < 3; i++) {
      if (widgetLeft[i].name != null && widgetLeft[i].name.equals("stopwatch")) {
        w = widgetLeft[i];
        break;
      }
      if (widgetRight[i].name != null && widgetRight[i].name.equals("stopwatch")) {
        w = widgetRight[i];
        break;
      }
    }
    
    if(w != null){
     //rect(w.x+370, w.y+(w.sizeY/2)-40, rectSize[0], rectSize[1], 10);
     //rect(w.x+580,  w.y+(w.sizeY/2)-40, rectSize[0], rectSize[1], 10);
     
     float[][] rVerts = rectVerts(new int[]{w.x+370, w.y+(w.sizeY/2)-40}, rectSize);
     float[] rX = rVerts[0];
     float[] rY = rVerts[1];
     
     if(pnpoly(4, rX, rY, mouseX, mouseY) == 1){
      if(stopwatchStart)
        stopwatchStart = false;
      else{
        stopwatchStart = true;
        stopwatchBegin = millis();
      }
      return;
     }
     
     rVerts = rectVerts(new int[]{w.x+580, w.y+(w.sizeY/2)-40}, rectSize);
     rX = rVerts[0];
     rY = rVerts[1];
     if(pnpoly(4, rX, rY, mouseX, mouseY) == 1){
      stopwatchStart = false;
      stopwatchSec = 0;
      stopwatchMin = 0;
      return;
     }
    }
  }
  
  if(timerExist){
    /*triangle(w.x+50, w.y+30, w.x+30, w.y+70, w.x+70, w.y+70);
      triangle(w.x+50, w.y+(w.sizeY - 30), w.x+30, w.y+(w.sizeY - 70), w.x+70, w.y+(w.sizeY - 70));

      triangle(w.x+280, w.y+30, w.x+260, w.y+70, w.x+300, w.y+70);
      triangle(w.x+280, w.y+(w.sizeY - 30), w.x+260, w.y+(w.sizeY - 70), w.x+300, w.y+(w.sizeY - 70));
      
      rect(w.x+540, w.y+40, rectSize[0], rectSize[1], 10);
      */
    Widget w = null;
    for (int i = 0; i < 3; i++) {
      if (widgetLeft[i].name != null && widgetLeft[i].name.equals("timer")) {
        w = widgetLeft[i];
        break;
      }
      if (widgetRight[i].name != null && widgetRight[i].name.equals("timer")) {
        w = widgetRight[i];
        break;
      }
    }
    
    if(w != null){
     float[] triX = {w.x+50, w.x+30, w.x+70};
     float[] triY = {w.y+30, w.y+70, w.y+70};
     if(pnpoly(3, triX, triY, mouseX, mouseY) == 1){
       if(timerMin != 99)
       timerMin+=1; 
       return;
     }
     
     triX = new float[]{w.x+50, w.x+30, w.x+70};
     triY = new float[]{w.y+(w.sizeY - 30), w.y+(w.sizeY - 70), w.y+(w.sizeY - 70)};
     if(pnpoly(3, triX, triY, mouseX, mouseY) == 1){
       if(timerMin != 0)
       timerMin-=1; 
       return;
     }
     
     triX = new float[]{w.x+280, w.x+260, w.x+300};
     triY = new float[]{w.y+30, w.y+70, w.y+70};
     if(pnpoly(3, triX, triY, mouseX, mouseY) == 1){
       if(timerSec != 99)
       timerSec+=1; 
       return;
     }
     
     triX = new float[]{w.x+280, w.x+260, w.x+300};
     triY = new float[]{w.y+(w.sizeY - 30), w.y+(w.sizeY - 70), w.y+(w.sizeY - 70)};
     if(pnpoly(3, triX, triY, mouseX, mouseY) == 1){
       if(timerSec != 0)
       timerSec-=1;
       return;
     }
     
     float[][] rVerts = rectVerts(new int[]{w.x+540, w.y+40}, rectSize);
     float[] rX = rVerts[0];
     float[] rY = rVerts[1];
     if(pnpoly(4, rX, rY, mouseX, mouseY) == 1){
      if(timerStart)
        timerStart = false;
      else{
        timerStart = true;
        timerBegin = millis();
        timerSecond = millis();
        timerMillisTotal = (timerMin * 60000) + (timerSec * 1000);
      }
      return;
     }
     
     if(w.sizeY == 300){
       //rect(w.x+540, w.y+140, rectSize[0], rectSize[1], 10);
       rVerts = rectVerts(new int[]{w.x+540, w.y+140}, rectSize);
       rX = rVerts[0];
       rY = rVerts[1];
       if(pnpoly(4, rX, rY, mouseX, mouseY) == 1){
        if(timerStart)
          timerStart = false;
        timerSec = 0;
        timerMin = 0;
        timerMillisTotal = 0;
        return;
       }
     }
    }
  }
  
  if(newsExist){
   /*    cnnIcon.resize(90, 90);
    image(cnnIcon, w.x+50, w.y+10);
    
    reutersIcon.resize(90, 90);
    image(reutersIcon, w.x+320, w.y+10);
    
    googleNewsIcon.resize(90, 90);
    image(googleNewsIcon, w.x+590, w.y+10);*/
    
    Widget w = null;
    for (int i = 0; i < 3; i++) {
      if (widgetLeft[i].name != null && widgetLeft[i].name.equals("news")) {
        w = widgetLeft[i];
        break;
      }
      if (widgetRight[i].name != null && widgetRight[i].name.equals("news")) {
        w = widgetRight[i];
        break;
      }
    }
    
    if(w != null){
      for (int i = 0; i < 3; i++) {
        float[][] newsVerts = rectVerts(new int[]{w.x+50+(i*270), w.y+10}, new int[]{90, 90});
        float[] newsX = newsVerts[0];
        float[] newsY = newsVerts[1];
        
        if (pnpoly(4, newsX, newsY, mouseX, mouseY) == 1) {
          if(i == 0){
            currentProfile.processNews("cnn");
           }
           else if(i == 1){
            currentProfile.processNews("reuters"); 
           }
           else{
            currentProfile.processNews("google");  
           }
           return;
          }
        }
        
        /*if(currentProfile.newsIndex != 2)
          triangle(w.x+760, w.y+(w.sizeY - 10), w.x+740, w.y+(w.sizeY - 50), w.x+780, w.y+(w.sizeY - 50));
        if(currentProfile.newsIndex != 0)
          triangle(w.x+760, w.y+130, w.x+740, w.y+170, w.x+780, w.y+170);*/
        if(currentProfile.newsIndex != 2 && w.sizeY == 300){
          float[] arrowX = {w.x+760, w.x+740, w.x+780};
          float[] arrowY = {w.y+(w.sizeY - 10), w.y+(w.sizeY - 50),  w.y+(w.sizeY - 50)};
          
          if(pnpoly(3, arrowX, arrowY, mouseX, mouseY) == 1){
            currentProfile.newsIndex += 1;
            return;
          }
        }
        if(currentProfile.newsIndex != 0 && w.sizeY == 300){
          float[] arrowX = {w.x+760, w.x+740, w.x+780};
          float[] arrowY = {w.y+130, w.y+170, w.y+170};
          
          if(pnpoly(3, arrowX, arrowY, mouseX, mouseY) == 1){
            currentProfile.newsIndex -= 1;
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
  
  float[][] trashVerts = rectVerts(trashButton.getCoords(), trashButton.getSize());
  float[] trashX = trashVerts[0];
  float[] trashY = trashVerts[1];
  if(pnpoly(4, trashX, trashY, mouseX, mouseY) == 1){
     if(moveButton.clicked == 1){
      for (int i = 0; i < widgetLeft.length; i++) {
          if (widgetLeft[i].moveFlag == 1) {
            widgetLeft[i].name = null;
            widgetLeft[i].moveFlag = 0;
            widgetLeft[i].changeStrokeColor("white");
            moveButton.clicked = 0;
            return;
          }
          if (widgetRight[i].moveFlag == 1) {
            widgetRight[i].name = null;
            widgetRight[i].moveFlag = 0;
            widgetRight[i].changeStrokeColor("white");
            moveButton.clicked = 0;
            return;
          }
        }
     }
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

void checkSkip(){
  float[][] skipVert = rectVerts(skipButton.getCoords(), skipButton.getSize());
   float[] skipX = skipVert[0];
   float[] skipY = skipVert[1];
   if(pnpoly(4, skipX, skipY, mouseX, mouseY) == 1){
      if(profileSelect){
         profileSelect = false;
         profileIndex = 0;
         selectProfile.clicked = 0;
         selectProfile.changeFillColor("black");
      }
      
      if(socialMediaSelect){
         socialMediaSelect = false;
         socialMedia.clicked = 0;
         socialMedia.changeFillColor("black");
         return;
      }
      
      if(blueToothSelect){
         blueToothSelect = false;
         blueTooth.clicked = 0;
         blueTooth.changeFillColor("black");
         return;
      }
      
      if(timeDateSelect){
         timeDateSelect = false;
         timeDate.clicked = 0;
         timeDate.changeFillColor("black");
         return;
      }
      
      if(brightnessSelect){
         brightnessSelect = false;
         brightness.clicked = 0;
         brightness.changeFillColor("black");
         return;
      }
      
      if(languageSelect){
         languageSelect = false;
         languageSetting.clicked = 0;
         languageSetting.changeFillColor("black");
         return;
      }
      
      if(wifiSelect){
         wifiSelect = false;
         wifiSetting.clicked = 0;
         wifiSetting.changeFillColor("black");
         return;
      }
      
      if(emailSelect){
         emailSelect = false;
         emailSetting.clicked = 0;
         emailSetting.changeFillColor("black");
         return;
      }
  }
}