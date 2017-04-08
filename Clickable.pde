class Clickable{  
  int x, y, sizeX, sizeY, clicked;
  String name;
  Clickable(int topLeftX, int topLeftY, int _sizeX, int _sizeY){
     x = topLeftX;
     y = topLeftY;
     sizeX = _sizeX;
     sizeY = _sizeY;
     clicked = 0;
     name = "";
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
  
}