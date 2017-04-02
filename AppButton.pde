class AppButton{  
  int x, y, sizeX, sizeY, clicked, inUse;
  String name;
  PImage image;
  AppButton(int topLeftX, int topLeftY, int _sizeX, int _sizeY, String name){
     x = topLeftX;
     y = topLeftY;
     sizeX = _sizeX;
     sizeY = _sizeY;
     
     this.name = name;
     
     image = new PImage();
     
     clicked = 0;
     inUse = 0;
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