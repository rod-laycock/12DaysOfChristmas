DIM gifts(12) AS STRING
gifts(1) = "Partridge in a pear tree."
gifts(2) = "Two Turtle Doves,"
gifts(3) = "Three Calling Birds,"
gifts(4) = "Four French Hens,"
gifts(5) = "Five Gold Rings,"
gifts(6) = "Six Geese a Laying,"
gifts(7) = "Seven Swans a Swimming,"
gifts(8) = "Eight Maids a Milking,"
gifts(9) = "Nine Ladies Dancing,"
gifts(10) = "Ten Lords a Leaping,"
gifts(11) = "Eleven Pipers Piping,"
gifts(12) = "Twelve Drummers Drumming,"

DIM gifts_given(12) AS STRING

PRINT("12 Days of Christmas")
PRINT("====================")

DIM line$ AS STRING

FOR day = 1 TO 12 

  d$ = ""
  IF day = 1 THEN 
    d$ = "first"
  ELSE IF day = 2 THEN
    d$ = "second"
  ELSE IF day = 3 THEN
    d$ = "third"
  ELSE IF day = 4 THEN
    d$ = "fourth"
  ELSE IF day = 5 THEN
    d$ = "fifth"
  ELSE IF day = 6 THEN
    d$ = "sixth"
  ELSE IF day = 7 THEN
    d$ = "seventh"
  ELSE IF day = 8 THEN
    d$ = "eigth"
  ELSE IF day = 9 THEN
    d$ = "ninth"
  ELSE IF day = 10 THEN 
    d$ = "tenth"
  ELSE IF day = 11 THEN
    d$ = "eleventh"
  ELSE IF day = 12 THEN
    d$ = "twelfth"
  ELSE   
    d$ = ""
  END IF

  PRINT("On the " + d$ + " day of Christmas my true love gave to me.")

  gifts_given(day) = gifts(day)

  maxGiftCount = day
  FOR giftCount = maxGiftCount TO 1 STEP -1
    'PRINT(giftCount)
    IF giftCount = 1 AND day = 1 THEN
      PRINT("A " + gifts(giftCount))
    ELSE IF giftCount = 1 AND day > 1 THEN
      PRINT("And a " + gifts(giftCount))
    ELSE
      PRINT(gifts(giftCount))
    END IF
  NEXT giftCount
  
  PRINT("")

NEXT day



