ArrayList profileList;
String currentUsername;

int profileIndex;

Clickable[] profileButtons = {new Clickable(1066, 728, 600, 100), new Clickable(1066, 828, 600, 100), new Clickable(1066, 928, 600, 100), new Clickable(1066, 1028, 600, 100)};
Clickable[] acutalProfileButtons = {new Clickable(1426, 748, 120, 60), new Clickable(1426, 848, 120, 60), new Clickable(1426, 948, 120, 60), new Clickable(1426, 1048, 120, 60)};

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
Profile loggingIn;