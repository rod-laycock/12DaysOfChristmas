var gifts = [ 
  'Partridge in a pear tree.',
  'Two Turtle Doves,',
  'Three Calling Birds,',
  'Four French Hens,',
  'Five Gold Rings,',
  'Six Geese a Laying,',
  'Seven Swans a Swimming,',
  'Eight Maids a Milking,',
  'Nine Ladies Dancing,',
  'Ten Lords a Leaping,',
  'Eleven Pipers Piping,',
  'Twelve Drummers Drumming,' 
];

var giftsGiven = new Array();

console.log("12 Days of Christmas.");
console.log("=====================");

gifts.forEach( function  (gift) {
  console.log("On the " + GetDay(gift) + " day of Christmas my true love gave to me.")

  giftsGiven.push(gift);

  var tmpGiftsGiven = new Array();
  tmpGiftsGiven = JSON.parse(JSON.stringify(giftsGiven));

  tmpGiftsGiven.reverse().forEach( function (giftGiven) {
    
    if (giftsGiven.length == 1)
    {
      console.log("A " + giftGiven);
    }
    else if (giftGiven.length > 1 && (giftGiven.indexOf('Partridge') > -1))
    {
      console.log("And a " + giftGiven);
    }
    else
    {
      console.log(giftGiven);
    }
  
  });

  console.log();

});

function GetDay(gift) {
  var day = gifts.indexOf(gift);

  switch (day)
  {
    case 0: return 'first';
    case 1: return 'second';
    case 2: return 'third';
    case 3: return 'fourth';
    case 4: return 'fifth';
    case 5: return 'sixth';
    case 6: return 'seventh';
    case 7: return 'eigth';
    case 8: return 'ninth';
    case 9: return 'tenth';
    case 10: return 'eleventh';
    case 11: return 'twelfth';
  }
  return "";

    
} 


