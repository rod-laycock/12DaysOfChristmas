<html>
  <head>
    <title>PHP Test</title>
  </head>
  <body>
    <?php 
      function dayString($day) {
          switch ($day) {
            case 1:
                return "first";
            case 2:
                return "second";
            case 3:
                return "third";
            case 4:
                return "fourth";
            case 5:
                return "fifth";
            case 6:
                return "sixth";
            case 7:
                return "seventh";
            case 8:
                return "eigth";
            case 9:
                return "ninth";
            case 10:
                return "tenth";
            case 11:
                return "eleventh";
            case 12:
                return "twelfth";
            default:
                return "";
              } 
      } 

      $gifts =  [
        1 => "Partridge in a pear tree.",
        2 => "Two Turtle Doves,",
        3 => "Three Calling Birds,",
        4 => "Four French Hens,",
        5 => "Five Gold Rings,",
        6 => "Six Geese a Laying,",
        7 => "Seven Swans a Swimming,",
        8 => "Eight Maids a Milking,",
        9 => "Nine Ladies Dancing,",
        10 => "Ten Lords a Leaping,",
        11 => "Eleven Pipers Piping,",
        12 => "Twelve Drummers Drumming,"
      ];
    
      $giftsGiven = [];

      echo "12 Days of Christmas.<br />";
      echo "=====================<br /><br />";

      $day = 1;
      foreach ($gifts as $gift)  {
          echo "On the " . dayString($day) . " day of Christmas my true love gave to me.<br/>";

          $giftsGiven[$day] = $gift;

          for ($i = count($giftsGiven); $i > 0; $i--) {
            if ($i == 1 && count($giftsGiven) == 1) {
              echo "A ". $giftsGiven[$i] ."<br />";
            } else if ($i == 1 && count($giftsGiven) > 1) {
              echo "And a ". $giftsGiven[$i] ."<br />";
            } else {
              echo $giftsGiven[$i] ."<br />";
            }
          }
          echo "<br/>";
          $day ++;
      }
     ?> 
  </body>
</html>
