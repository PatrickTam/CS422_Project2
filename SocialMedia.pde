Clickable[] socialMediaClick = {new Clickable(1066, 728, 600, 100), new Clickable(1066, 828, 600, 100), new Clickable(1066, 928, 600, 100)};
Clickable[] socialMediaButtons = {new Clickable(1426, 748, 120, 60), new Clickable(1426, 848, 120, 60), new Clickable(1426, 948, 120, 60)};
int mediaIndex = 0;
String currentMediaUsername;

class SocialMedia{
 String twitter;
 String facebook;
 String instagram;
 
 SocialMedia(){
  twitter = "None";
  facebook = "None";
  instagram = "None";
 }
 
 void drawSocialMedia(BackgroundBox b){
   twitterImage.resize(60,60);
   image(twitterImage, socialMediaClick[0].x, socialMediaClick[0].y+20);
   socialMediaClick[0].drawLine();
   fill(180,0);
   rect(socialMediaButtons[0].x, socialMediaButtons[0].y, socialMediaButtons[0].sizeX, socialMediaButtons[0].sizeY, 10);
   
   instagramImage.resize(60,60);
   image(instagramImage, socialMediaClick[1].x, socialMediaClick[1].y+20);
   socialMediaClick[1].drawLine();
   fill(180,0);
   rect(socialMediaButtons[1].x, socialMediaButtons[1].y, socialMediaButtons[1].sizeX, socialMediaButtons[1].sizeY, 10);
   
   facebookImage.resize(60,60);
   image(facebookImage, socialMediaClick[2].x, socialMediaClick[2].y+20);
   socialMediaClick[2].drawLine();
   fill(180,0);
   rect(socialMediaButtons[2].x, socialMediaButtons[2].y, socialMediaButtons[2].sizeX, socialMediaButtons[2].sizeY, 10);
   
   fill(0,0,0);
   textSize(40);
   textAlign(LEFT);
   text(twitter, socialMediaClick[0].x + 70, socialMediaClick[0].y+70);
   text(instagram, socialMediaClick[1].x + 70, socialMediaClick[1].y+70);
   text(facebook, socialMediaClick[2].x + 70, socialMediaClick[2].y+70);
   
   fill(0,0,0);
   textSize(30);
   String textVal = "";
   if(twitter.equals("None"))
     if (language.equals("Español"))
        {
          textVal = "Ingres";
        }
        else
        {
          textVal = "Log In";
        }
   else
     if (language.equals("Español"))
                {
                  textVal = "Salir";
                }
                else
                {
                  textVal = "Log Off";
                }
   text(textVal, socialMediaButtons[0].x+20, socialMediaButtons[0].y+40);
   
   if(instagram.equals("None"))
     if (language.equals("Español"))
        {
          textVal = "Ingres";
        }
        else
        {
          textVal = "Log In";
        }
   else
     if (language.equals("Español"))
                {
                  textVal = "Salir";
                }
                else
                {
                  textVal = "Log Off";
                }
   text(textVal, socialMediaButtons[1].x+20, socialMediaButtons[1].y+40);
   
   if(facebook.equals("None"))
     if (language.equals("Español"))
        {
          textVal = "Ingres";
        }
        else
        {
          textVal = "Log In";
        }
   else
     if (language.equals("Español"))
                {
                  textVal = "Salir";
                }
                else
                {
                  textVal = "Log Off";
                }
   text(textVal, socialMediaButtons[2].x+20, socialMediaButtons[2].y+40);
 }
}