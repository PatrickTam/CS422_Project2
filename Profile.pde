ArrayList profile;

class Profile{
  String name;
  int[] pin;
  String language;
  Widget[] widgetLeft;
  Widget[] widgetRight;
  
  Profile(String n, int[] pw){
   name = n;
   pin = pw;
  }
  
  void saveInfo(String language, Widget[] left, Widget[] right){
   this.language = language;
   widgetLeft = left;
   widgetRight = right;
  }
  
  void setLanguage(String language){
   this.language = language; 
  }
}

Profile guestProfile;
Profile currentProfile;