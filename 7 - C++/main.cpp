#include <iostream>
#include <cstring>

const char * convert_to_day_string(int day) {
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

int main() {

  char gifts[12][26] = { 
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
  
    char gifts_given [12][26];

    std::cout << "12 Days of Christmas\n";
    std::cout << "====================\n";

    // Printing Strings stored in 2D array 
    for (int day = 0; day <= (sizeof(gifts)/sizeof(*gifts)); day++) {
        std::cout << "On the " << convert_to_day_string(day) << " day of Christmas my true love gave to me.\n";

        strcpy(gifts_given[day], gifts[day]);

        for (int gifts_given_index = sizeof(gifts_given)/sizeof(*gifts_given); gifts_given_index >= 0; gifts_given_index--) {

          if (strlen(gifts_given[gifts_given_index]) > 0) { 
            if (day == 0 && gifts_given_index == 0) {
              std::cout << "A ";
            }
            else if (day > 0 && gifts_given_index == 0)
            {
              std::cout << "And a ";
            }

            std::cout << gifts_given[gifts_given_index] << "\n"; 
            
          }
        }
        std::cout << "\n";

    }
    return 0; 
  
}
