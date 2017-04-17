
class DateTimeItem {
  private Point locTime;
  private Point locDate;
  public boolean militaryTime;
  public boolean monthDayYear;
  String[] months = {"January", "February", "March", "April", "May", "June", "July",
    "August", "September", "October", "November", "December"};
    
  String[] smonths = {"Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio",
    "Agosto", "Septiembre", "Octubure", "Noviembre", "Diciembre"};
  
  DateTimeItem(Point locTime, Point locDate) {
    this.locTime = locTime;
    this.locDate = locDate;
    this.militaryTime = false;
    this.monthDayYear = true;
  }
  
  private String constructTimeString() {
    String timeString = "2";
    String minuteString = "";
    String secondString = "";
    int hour1 = hour();
    int minute1 = minute();
    int second1 = second();
    minuteString = str(minute1);
    secondString = str(second1);
    if(minute1 < 10) minuteString = "0" + minuteString;
    if(second1 < 10) secondString = "0" + secondString;
    
    if(militaryTime)
      return hour() + ":" + minuteString + ":" + secondString;
    else {
      boolean isAM = true;
      if(hour1 > 12) { hour1 -= 12; isAM = false; }
      else if(hour1 == 0) hour1 = 12;
      
      if(isAM)
        timeString = hour1 + ":" + minuteString + ":" + secondString + " AM";
      else
        timeString = hour1 + ":" + minuteString + ":" + secondString + " PM";
      return timeString;
    }
  }
  
  private String constructDateString() {
    if(monthDayYear == true){
      
      if (language.equals("Español"))
        {
        return smonths[month()-1] + " " + day() + ", " + year(); 
        }
        else
        {
        return months[month()-1] + " " + day() + ", " + year(); 
        }
      
      
    }
    else{
      if (language.equals("Español"))
        {
        return day() + " " + smonths[month()-1] + ", " + year(); 
        }
        else
        {
        return day() + " " + months[month()-1] + ", " + year(); 
        }
    }
  }
  
  public void drawDateTime() {
    textFont(f);
    textAlign(CENTER);
    fill(0);
    
    String timeString = constructTimeString();
    String dateString = constructDateString();
  
    textSize(80);
    text(timeString, locTime.x, locTime.y);
  
    textSize(50);
    text(dateString, locDate.x, locDate.y);
  }
}