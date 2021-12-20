#include <stdio.h>
#include <string.h>


const char * convert_to_day_string(int day) 
{
   switch(day) {

   case 0  :
      return "first";
   case 1  :
      return "second";
    case 2  :
      return "third";
    case 3  :
      return "fourth";
    case 4  :
      return "fifth";
    case 5  :
      return "sixth";
    case 6  :
      return "seventh";
    case 7  :
      return "eighth";
    case 8 :
      return "ninth";
    case 9 :
      return "tenth";
   case 10 :
      return "eleventh";
   case 11 :
      return "twelfth";            
   default : 
    return "";
}; 
}

int main(void) {

char gifts[12][27] = { 
    "Partridge in a pear tree.",
    "Two Turtle Doves,",
    "Three Calling Birds,",
    "Four French Hens,",
    "Five Gold Rings,",
    "Six Geese a Laying,",
    "Seven Swans a Swimming,",
    "Eight Maids a Milking,",
    "Nine Ladies Dancing,",
    "Ten Lords a Leaping,",
    "Eleven Pipers Piping,",
    "Twelve Drummers Drumming,"
 };

char gifts_given[12][27];

printf("12 Days of Christmas\n");
printf("====================\n\n");

size_t day = 0;
for(day = 0; day < sizeof(gifts) / sizeof(gifts[0]); day++)
{
  // print lyric replacing X with i + 1
  printf("On the %s day of Christmas my true love gave to me.\n", convert_to_day_string(day));

  // Add gift to gifts_given
  strcpy(gifts_given[day], gifts[day]);

  for (int gifts_given_count = day; gifts_given_count >= 0; gifts_given_count --)
  {
      if (day == 0 && gifts_given_count == 0)
      { 
        printf("A ");
      }
      else if (day > 0 && gifts_given_count == 0)
      {
        printf("And a ");
      }
      
      printf("%s\n",gifts_given[gifts_given_count]);
  }
  
  printf("\n");
}


  return 0;
}



