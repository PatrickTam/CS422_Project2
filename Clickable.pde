class Clickable{  
  int x, y, sizeX, sizeY, clicked;
  int[] fillColor;
  String name;
  Clickable(int topLeftX, int topLeftY, int _sizeX, int _sizeY){
     x = topLeftX;
     y = topLeftY;
     sizeX = _sizeX;
     sizeY = _sizeY;
     clicked = 0;
     name = "";
     fillColor = new int[]{0,0,0};
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
  
  void setName(String n){
   name = n; 
  }
  
  void drawLine(){
   line(x, y+sizeY, x+sizeX, y+sizeY); 
  }
  
  void changeFillColor(String str){
   if(str.equals("yellow")){
    fillColor = new int[]{255,255,0};
   }
   else if(str.equals("black")){
    fillColor = new int[]{0,0,0}; 
   }
  }
  
}