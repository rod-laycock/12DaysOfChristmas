fn main() {
  
  let _gifts = [
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
    ];

  let mut _gifts_given = Vec::new();

  println!("12 Days of Christmas");
  println!("====================");

  for _day in 0.._gifts.len() {

    println!("On the {} day of Christmas my true love gave to me.", get_day_text(_day));

    _gifts_given.push(_gifts[_day]);

    for _idx in (0.._gifts_given.len()).rev() {
      if _idx == 0 && _day == 0 {
        println!("A {}", _gifts_given[_idx]);  
      } else if _day > 0 && _idx == 0 {
        println!("And a {}", _gifts_given[_idx]);  
      } else {
        println!("{}", _gifts_given[_idx]);  
      }
    }

  print!(" \n");
    
  }
}


fn get_day_text(day: usize) -> &'static str {
if day == 0 {
      return "first";
    } else if day == 1 {
      return "second";
    } else if day == 2 {
      return "third";
    } else if day == 3 {
      return "fourth";
    } else if day == 4 {
      return "fifth";
    } else if day == 5 {
      return "sixth";
    } else if day == 6 {
      return "seventh";
    } else if day == 7 {
      return "eigth";
    } else if day == 8 {
      return "nineth";
    } else if day == 9 {
      return "tenth";
    } else if day == 10 {
      return "eleventh";
    } else if day == 11 {
      return "twelfth";
    }

  return "";
}

