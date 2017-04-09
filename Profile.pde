ArrayList profile;
String currentUsername;

class Profile{
  String name;
  String pin;
  String language;
  Widget[] widgetLeft;
  Widget[] widgetRight;
  
  Profile(String n, String pw){
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