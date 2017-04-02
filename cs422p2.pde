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

int h, m, s;
int mo, d, y;

String[] months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};

String timeString = "";
String dateString = "";

int militaryFlag = 0;
int mdy = 1;

//background boxes
BackgroundBox appBox = new BackgroundBox(125, 1325, 775, 200);
BackgroundBox settingBox = new BackgroundBox(2307, 825, 400, 600);

//icons
AppButton weatherIcon = new AppButton(135, 1330, 90, 90, "weather");
AppButton musicIcon = new AppButton(135, 1430, 90, 90, "music");
int appSelected = -1;

AppButton[] appArr;

void setup() {
  size(2732, 1536);
  
  appImg = loadImage("app.png", "png");
  //http://i.imgsafe.org/bc2015d4a8.png
  appImg.loadPixels();
  
  appImgSelected = loadImage("appSelected2.png", "png");
  appImgSelected.loadPixels();
  
  settingImg = loadImage("setting.png", "png");
  //http://iconshow.me/media/images/ui/ios7-icons/png/512/gear.png
  settingImg.loadPixels();
    
  settingImgSelected = loadImage("settingSelected.png", "png");
  settingImgSelected.loadPixels();
  
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
  
  sunny = loadImage("sunny.png", "png");
  //https://www.iconfinder.com/icons/317415/blue_sky_clear_forecast_sun_sunny_weather_icon
  sunny.loadPixels();
  
  appArr = new AppButton[]{weatherIcon, musicIcon};
  
  f = createFont("SansSerif.plain", 24, true);
  
}

void draw() {
  background(bg);
  noStroke();
  
  //setup date time on the top center
  h = hour();
  m = minute();
  s = second();
  
  mo = month();
  d = day();
  y = year();
  
  textFont(f);
  textAlign(CENTER);
  textSize(80);
  fill(0);
  if(militaryFlag == 0){
    String min;
    if(h > 12){
      h -= 12;
      if(m < 10)
        min = "0" + str(m);
      else
        min = str(m);
      timeString = h + ":" + min + " PM";
    }
    else{
      if(m < 10)
        min = "0" + str(m);
      else
        min = str(m);
      timeString = h + ":" + m + "AM"; 
    }
  }
  else
    timeString = h + ":" + m + ":" + s;
  
  if(mdy == 1){
   dateString = months[mo] + " " + d + ", " + y; 
  }
  else{
   dateString = d + " " + months[mo] + ", " + y; 
  }
  
  text(timeString, 2732/2, 80);
  
  textSize(50);
  text(dateString, 2732/2, 150);
  
  strokeWeight(4);
  //left 3 widgets
  fill(0, 255, 123);
  for (int loopCounter=0; loopCounter < widgetLeft.length; loopCounter++){
    if(widgetLeft[loopCounter].name != null){
      if(widgetLeft[loopCounter].strokeColor[2] == 0)
       strokeWeight(8);
      else
       strokeWeight(4);
      stroke(widgetLeft[loopCounter].strokeColor[0], widgetLeft[loopCounter].strokeColor[1], widgetLeft[loopCounter].strokeColor[2]);
      fill(140);
      rect(widgetLeft[loopCounter].x, widgetLeft[loopCounter].y, 
         widgetLeft[loopCounter].sizeX, widgetLeft[loopCounter].sizeY, 10);
      processWidgetInfo(widgetLeft[loopCounter]);
    }
    else if(appSelected != -1 || moveButton.clicked == 1){
     if(widgetLeft[loopCounter].strokeColor[2] == 0)
       strokeWeight(8);
     else
       strokeWeight(4);
     stroke(widgetLeft[loopCounter].strokeColor[0], widgetLeft[loopCounter].strokeColor[1], widgetLeft[loopCounter].strokeColor[2]);
     fill(255, 140, 140); 
     rect(widgetLeft[loopCounter].x, widgetLeft[loopCounter].y, 
         widgetLeft[loopCounter].sizeX, widgetLeft[loopCounter].sizeY, 10);
    }
    else{
      stroke(255,0);
      fill(140,140,140,0);
      rect(widgetLeft[loopCounter].x, widgetLeft[loopCounter].y, 
         widgetLeft[loopCounter].sizeX, widgetLeft[loopCounter].sizeY, 10);
    }
  }
  
  //right 3 widgets
  fill(0, 255, 123);
    for (int loopCounter=0; loopCounter < widgetRight.length; loopCounter++){
      if(widgetRight[loopCounter].name != null){
        if(widgetRight[loopCounter].strokeColor[2] == 0)
         strokeWeight(8);
        else
         strokeWeight(4);
        stroke(widgetRight[loopCounter].strokeColor[0], widgetRight[loopCounter].strokeColor[1], widgetRight[loopCounter].strokeColor[2]);
        fill(140);
        rect(widgetRight[loopCounter].x, widgetRight[loopCounter].y, 
           widgetRight[loopCounter].sizeX, widgetRight[loopCounter].sizeY, 10);
        processWidgetInfo(widgetRight[loopCounter]);
        stroke(255,0);
      }
      else if(appSelected != -1 || moveButton.clicked == 1){
       if(widgetRight[loopCounter].strokeColor[2] == 0)
         strokeWeight(8);
       else
         strokeWeight(4);
       stroke(widgetRight[loopCounter].strokeColor[0], widgetRight[loopCounter].strokeColor[1], widgetRight[loopCounter].strokeColor[2]);
       fill(255, 140, 140); 
       rect(widgetRight[loopCounter].x, widgetRight[loopCounter].y, 
           widgetRight[loopCounter].sizeX, widgetRight[loopCounter].sizeY, 10);
       stroke(255,0);
      }
      else{
        stroke(255,0);
        fill(140,140,140,0);
        rect(widgetRight[loopCounter].x, widgetRight[loopCounter].y, 
           widgetRight[loopCounter].sizeX, widgetRight[loopCounter].sizeY, 10);
      }
    }
    strokeWeight(4);
  fill(0);
  //app button
  if(appButton.clicked == 0){
    moveButton.x = 135;
    appSelected = -1;
    appImg.resize(appButton.sizeX, appButton.sizeY);
    image(appImg, appButton.x, appButton.y);
  }
  else{
    moveButton.x = 925;
    appImgSelected.resize(appButton.sizeX, appButton.sizeY);
    image(appImgSelected, appButton.x, appButton.y);
    fill(140);
    rect(appBox.x, appBox.y, appBox.sizeX, appBox.sizeY, 10);
    
    for(int i = 0; i < appArr.length; i++){
      if(appArr[i].clicked == 1){
        fill(255,255,0);
       rect(appArr[i].x, appArr[i].y, appArr[i].sizeX, appArr[i].sizeY, 10);
      }
      fill(140);
      appArr[i].image.resize(appArr[i].sizeX, appArr[i].sizeY);
      image(appArr[i].image, appArr[i].x, appArr[i].y);
    }
  }
  
  //move widget button
  if(moveButton.clicked == 0){
    moveImg.resize(moveButton.sizeX, moveButton.sizeY);
    image(moveImg, moveButton.x, moveButton.y);
  }
  else{
    moveImgSelected.resize(moveButton.sizeX, moveButton.sizeY);
    image(moveImgSelected, moveButton.x, moveButton.y);
  }
  
  //setting button
  if(settingButton.clicked == 0){
    settingImg.resize(settingButton.sizeX, settingButton.sizeY);
    image(settingImg,  settingButton.x, settingButton.y);
  }
  else{
    settingImgSelected.resize(settingButton.sizeX, settingButton.sizeY);
    image(settingImgSelected,  settingButton.x, settingButton.y);
    fill(140);
    rect(settingBox.x, settingBox.y, settingBox.sizeX, settingBox.sizeY, 10);
  }
}

void mouseReleased() {
  for (int loopCounter=0; loopCounter < widgetLeft.length; loopCounter++) {
    float[][] verts = rectVerts(widgetLeft[loopCounter].getCoords(), widgetLeft[loopCounter].getSize());
    float[] widgetX = verts[0];
    float[] widgetY = verts[1];
    
    if(pnpoly(4, widgetX, widgetY, mouseX, mouseY) == 1){
      if(appSelected != -1){
        for(int i = 0; i < widgetLeft.length; i++){
          if(widgetLeft[i].name != null && widgetLeft[i].name.equals(appArr[appSelected].name))
            widgetLeft[i].name = null;
          if(widgetRight[i].name != null && widgetRight[i].name.equals(appArr[appSelected].name))
            widgetRight[i].name = null;
         }
         widgetLeft[loopCounter].giveName(appArr[appSelected].name);
         
        appArr[appSelected].clicked = 0;
        appSelected = -1;
        return;
      }
      else if(moveButton.clicked == 1){
        for(int i = 0; i < widgetLeft.length; i++){
          if(widgetLeft[i].moveFlag == 1){
            String nam = widgetLeft[loopCounter].name;
            widgetLeft[loopCounter].name = widgetLeft[i].name;
            widgetLeft[i].name = nam;
            widgetLeft[i].moveFlag = 0;
            widgetLeft[i].changeStrokeColor("white");
            moveButton.clicked = 0;
            return;
          }
          if(widgetRight[i].moveFlag == 1){
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
      if(expandedLeft == loopCounter){
        expandedLeft = -1;
        int[] newSize = {widgetLeft[0].sizeX, 150};
        //widgetSizeL[loopCounter] = newSize;
        widgetLeft[loopCounter].changeSize(newSize);
        
        if(loopCounter < 2){
          for(int i = loopCounter+1; i <= 2; i++){
            int[] fixedLoc = {widgetLeft[loopCounter].x, widgetLeft[i].y - 150};
            widgetLeft[i].changeCoord(fixedLoc);
          }
        }
        
        return;
      }
      else{
        //one is already expanded, so unexpand everything
        if(expandedLeft != -1 && loopCounter != expandedLeft){
         int[] size = {widgetLeft[0].sizeX, 150};
         widgetLeft[expandedLeft].changeSize(size);
         if(expandedLeft <= 2){
           for(int i = 0; i <= 2; i++){
              int[] fixedLoc = {widgetLeft[loopCounter].x, normalY[i]};
              widgetLeft[i].changeCoord(fixedLoc);
           }
         }
        }
        //now do expansion
        expandedLeft = loopCounter;
        int[] newSize = {widgetLeft[0].sizeX, 300};
        widgetLeft[loopCounter].changeSize(newSize);
        
        if(loopCounter < 2){
          for(int i = loopCounter+1; i <= 2; i++){
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
     
     if(pnpoly(4, widgetX, widgetY, mouseX, mouseY) == 1){
       //we have selected an app, work on it
       if(appSelected != -1){
         for(int i = 0; i < widgetLeft.length; i++){
          if(widgetLeft[i].name != null && widgetLeft[i].name.equals(appArr[appSelected].name))
            widgetLeft[i].name = null;
          if(widgetRight[i].name != null &&widgetRight[i].name.equals(appArr[appSelected].name))
            widgetRight[i].name = null;
         }
         widgetRight[loopCounter].giveName(appArr[appSelected].name);
         
         appArr[appSelected].clicked = 0;
         appSelected = -1;
         return;
       }
       //if we are moving
       else if(moveButton.clicked == 1){
         for(int i = 0; i < widgetLeft.length; i++){
          if(widgetLeft[i].moveFlag == 1){
            String nam = widgetRight[loopCounter].name;
            widgetRight[loopCounter].name = widgetLeft[i].name;
            widgetLeft[i].name = nam;
            widgetLeft[i].moveFlag = 0;
            widgetLeft[i].changeStrokeColor("white");
            moveButton.clicked = 0;
            return;
          }
          if(widgetRight[i].moveFlag == 1){
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
       if(expandedRight == loopCounter){
        expandedRight = -1;
        int[] newSize = {widgetRight[0].sizeX, 150};
        widgetRight[loopCounter].changeSize(newSize);
        
        if(loopCounter < 2){
          for(int i = loopCounter+1; i <= 2; i++){
            int[] fixedLoc = {widgetRight[loopCounter].x, widgetRight[i].y - 150};
            widgetRight[i].changeCoord(fixedLoc);
          }
        }
        
        return;
      }
      else{
        if(expandedRight != -1 && loopCounter != expandedRight){
         int[] size = {widgetRight[0].sizeX, 150};
         widgetRight[expandedRight].changeSize(size);
         if(expandedRight <= 2){
           for(int i = 0; i <= 2; i++){
              int[] fixedLoc = {widgetRight[loopCounter].x, normalY[i]};
              widgetRight[i].changeCoord(fixedLoc);
           }
         }
        }
        expandedRight = loopCounter;
        int[] newSize = {widgetRight[0].sizeX, 300};
        widgetRight[loopCounter].changeSize(newSize);
        
        if(loopCounter < 2){
          for(int i = loopCounter+1; i <= 2; i++){
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
   if(pnpoly(4, appX, appY, mouseX, mouseY) == 1){
     /*if(appExpanded == 0){
       appExpanded = 1; 
       moveButton.x = 925;
     }
     else{
       appExpanded = 0;
     }*/
     if(appSelected != -1){
       appArr[appSelected].clicked = 0;
       appSelected = -1;
     }
     appButton.clickedOn();
   }
   
   float[][] vertsSetting = rectVerts(settingButton.getCoords(), settingButton.getSize());
   float[] setX = vertsSetting[0];
   float[] setY = vertsSetting[1];
   if(pnpoly(4, setX, setY, mouseX, mouseY) == 1){
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
   if(pnpoly(4, movX, movY, mouseX, mouseY) == 1){
     if(appSelected != -1)
       return;
    moveButton.clickedOn(); 
   }
   
   for(int i = 0; i < appArr.length; i++){
    float[][] app = rectVerts(appArr[i].getCoords(), appArr[i].getSize());
    float[] appsX = app[0];
    float[] appsY = app[1];
    if(pnpoly(4, appsX, appsY, mouseX, mouseY) == 1){
      if(moveButton.clicked == 1)
          return;
      if(appArr[i].clicked == 1){
        appArr[i].clicked = 0;
        appSelected = -1;
        return;
      }
      //make sure none of the others are clicked, brute force it
      for(int j = 0; j < appArr.length; j++){
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
float[][] rectVerts(int[] topLeft, int[] size){
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