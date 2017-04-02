class Widget{
  int x, y, sizeX, sizeY, moveFlag;
  int[] strokeColor;
  String name;
  Widget(int topLeftX, int topLeftY, int _sizeX, int _sizeY){
     x = topLeftX;
     y = topLeftY;
     sizeX = _sizeX;
     sizeY = _sizeY;
     
     strokeColor = new int[]{255,255,255};
     
     name = null;
  }
  
  int[] getCoords(){
   int[] arr = {x, y};
   return arr; 
  }
  
  int[] getSize(){
   int[] size = {sizeX, sizeY};
   return size;
  }
  
  void changeCoord(int[] newCoord){
    x = newCoord[0];
    y = newCoord[1];
  }
  
  void changeSize(int[] newSize){
   sizeX = newSize[0];
   sizeY = newSize[1];
  }
  
  void giveName(String _name){
   name = _name; 
  }
  
  void toggleMoveFlag(){
   if(moveFlag == 1)
     moveFlag = 0;
   else
     moveFlag = 1;
  }
  
  void changeStrokeColor(String str){
   if(str.equals("yellow")){
    strokeColor = new int[]{255,255,0};
   }
   else if(str.equals("white")){
    strokeColor = new int[]{255,255,255}; 
   }
  }
}