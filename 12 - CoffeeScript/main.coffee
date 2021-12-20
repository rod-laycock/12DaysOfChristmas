console.log "12 Days of  Christmas."
console.log "======================\n"

dayString = (day) ->
  switch day
    when 1 then "first"
    when 2 then "second"
    when 3 then "third"
    when 4 then "fourth"
    when 5 then "fifth"
    when 6 then "sixth"
    when 7 then "seventh"
    when 8 then "eigth"
    when 9 then "ninth"
    when 10 then "tenth"
    when 11 then "eleventh"
    when 12 then "twelfth"
    else ""

gifts = [
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
]

giftsGiven = []
i = 0

recantGifts = (giftGiven) ->
  if giftsGiven.length == 1
    console.log "A #{ giftGiven }"
  else if giftGiven.indexOf("Partridge") > -1
    console.log "And a #{ giftGiven }"
  else
    console.log giftGiven
    # console.log giftsGiven.length

giveGift = (gift) -> 
    
    console.log "On the #{ dayString i + 1 } day of Christmas my true love gave to me."
    
    giftsGiven[i] = gift

    recantGifts giftGiven for giftGiven in giftsGiven by -1
    
    i++
    
    console.log ""
    
    return



giveGift gift for gift in gifts



