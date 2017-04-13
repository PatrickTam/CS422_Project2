boolean keyboardShow;
String currentText;
String reason;


String[][] keys = {
                  {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "Backspace"},
                  {"q", "w", "e", "r", "t", "y", "u", "i", "o", "p"},
                  {"a", "s", "d", "f", "g", "h", "j", "k", "l"},
                  {"Shift", "z", "x", "c", "v", "b", "n", "m", "Enter"},
                  {" "}
                  };

Keys[][] fullKeyboard;
PImage bksp;
//https://cdn3.iconfinder.com/data/icons/social-productivity-line-art-3/128/delete-512.png
//ArrayList fullKeyboard;

class Keys{
 int x, y, sizeX, sizeY;
 String name;
 int clicked;
 
 Keys(int x, int y, String name){
    this.x = x;
    this.y = y;
    this.name = name;
    if(this.name.equals("Backspace") || this.name.equals("Shift") || this.name.equals("Enter")){
     sizeX = 140; 
    }
    else if(this.name.equals(" ")){
     sizeX = 350; 
    }
    else{
      sizeX = 70;
    }
    sizeY = 70;
    clicked = 0;
 }
 
 void drawKey(){
   fill(140);
   rect(x, y, sizeX, sizeY, 10);
   if(!name.equals("Backspace")){
     fill(0);
     textSize(30);
     textAlign(CENTER);
     if(name.equals("Shift") || name.equals("Enter")){
       text(name, x+60, y+40);
     }
     else
       text(name, x+30, y+40);
   }
   else{
     bksp.resize(50, 50);
     image(bksp, x+35, y+10);
   }
 }
 
 //pass in if the shift has been clicked or not (1 == clicked, 0 == not clicked)
 void toggleUpper(int val){
   if(this.name.equals("Backspace") || this.name.equals("Shift") || this.name.equals("Enter")){
     return;
   }
  if(val == 0){
   name = name.toLowerCase(); 
  }
  else
   name = name.toUpperCase();
 }
 
  int[] getCoords(){
   int[] arr = {x, y};
   return arr; 
  }
  
  int[] getSize(){
   int[] size = {sizeX, sizeY};
   return size;
  }
  void clickedOn(){
    if(clicked == 0)
      clicked = 1;
    else
      clicked = 0;
  }
}