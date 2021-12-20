package main

import "fmt"

func displayDay(index int) string {
  switch(index){
    case 0 :
      return "first"
    case 1 :
      return "second"
    case 2 :
      return "third"
    case 3 :
      return "fourth"
    case 4 :
      return "fifth"
    case 5 :
      return "sixth"
    case 6 :
      return "seventh"
    case 7 :
      return "eigth"
    case 8 :
      return "ninth"
    case 9 :
      return "tenth"
    case 10 :
      return "eleventh"
    case 11 :
      return "twelfth"
  }
  return ""
}

func main() {

  var gifts [12]string 
    gifts[0] = "Partridge in a pear tree."
    gifts[1] = "Two Turtle Doves,"
    gifts[2] ="Three Calling Birds,"
    gifts[3] ="Four French Hens,"
    gifts[4] ="Five Gold Rings,"
    gifts[5] ="Six Geese a Laying,"
    gifts[6] ="Seven Swans a Swimming,"
    gifts[7] ="Eight Maids a Milking,"
    gifts[8] ="Nine Ladies Dancing,"
    gifts[9] ="Ten Lords a Leaping,"
    gifts[10] ="Eleven Pipers Piping,"
    gifts[11] ="Twelve Drummers Drumming,"

  var giftsGiven [12]string

  fmt.Println("12 Days of Christmas")
  fmt.Println("====================")
  fmt.Println()

  for index, gift := range gifts {

    fmt.Println("On the " + displayDay(index) + " day of Christmas my true love gave to me.")

    giftsGiven[index] = gift

    for i := len(giftsGiven)-1; i >= 0; i -- {
      if giftsGiven[i] != "" {

        if i == 0 && index == 0 {
          fmt.Println("A " + giftsGiven[i])
        } else if i == 0 && index > 0 {
          fmt.Println("And a " + giftsGiven[i])
        } else {
          fmt.Println(giftsGiven[i])
        }

      }
    }

    fmt.Println()
  }  
  
}
