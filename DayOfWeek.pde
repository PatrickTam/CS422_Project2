//from https://forum.processing.org/two/discussion/3350/getting-the-day-of-the-week-without-calendar
String[] dayName = { 
  "Sunday", "Monday", "Tuesday", "Wednesday", 
  "Thursday", "Friday", "Saturday"
};

String[] sdayName = { 
  "Domingo", "Lunes", "Martes", "Miércoles", 
  "Jueves", "Viernes", "Sábado "
};

int w;
 
// d = day in month
// m = month (January = 1 : December = 12)
// y = 4 digit year
// Returns 0 = Sunday .. 6 = Saturday
public int dow(int day, int month, int year) {
  if (month < 3) {
    month += 12;
    year--;
  }
  return (day + int((month+1)*2.6) +  year + int(year/4) + 6*int(year/100) + int(year/400) + 6) % 7;
}