ArrayList profileList;
String currentUsername;

int profileIndex;

Clickable[] profileButtons = {new Clickable(1066, 728, 600, 100), new Clickable(1066, 828, 600, 100), new Clickable(1066, 928, 600, 100), new Clickable(1066, 1028, 600, 100)};
Clickable[] acutalProfileButtons = {new Clickable(1426, 748, 120, 60), new Clickable(1426, 848, 120, 60), new Clickable(1426, 948, 120, 60), new Clickable(1426, 1048, 120, 60)};

class Profile{
  SocialMedia media;
  ArrayList noteList;
  int noteIndex;
  String name;
  String pin;
  String language;
  String emailLog;
  String newsSelected;
  int newsIndex = 0;
  Widget[] widgetLeft;
  Widget[] widgetRight;
  
  Profile(String n, String pw){
   name = n;
   pin = pw;
   media = new SocialMedia();
   emailLog = "None";
   newsSelected = "None";
   newsIndex = 0;
   noteList = new ArrayList();
   noteIndex = 0;
  }
  
  void saveInfo(String language, Widget[] left, Widget[] right){
   this.language = language;
   widgetLeft = left;
   widgetRight = right;
  }
  
  void setLanguage(String language){
   this.language = language; 
  }
  
  void setTwitter(String s){
   media.twitter = s;
  }
  
  void setInstagram(String s){
   media.instagram = s;
  }
  
  void setFacebook(String s){
   media.facebook = s;
  }
  
  void setMedia(String s, int i){
    if(i == 0)
     media.twitter = s;
   else if(i == 1)
     media.instagram = s;
   else
     media.facebook = s;
  }
  
  void drawSocialMedia(BackgroundBox b){
   if(name.equals("Guest")){
     textAlign(CENTER);
     textSize(40);
      text("Please create a profile first", b.x+(b.sizeX/2), b.y+(b.sizeY/2));
   }
   else{
      media.drawSocialMedia(b); 
   }
  }
  
  String getMedia(int i){
   if(i == 0)
     return media.twitter;
   else if(i == 2)
     return media.instagram;
   else
     return media.facebook;
  }
  
  void processNews(String news){
   if(newsSelected.equals(news)){
    newsSelected = "None"; 
   }
   else
     newsSelected = news;
  }
  
  String getNote(){
   return (String)noteList.get(noteIndex); 
  }
}

Profile guestProfile;
Profile currentProfile;
Profile loggingIn;