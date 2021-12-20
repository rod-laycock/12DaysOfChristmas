def GetDay(day)
  case day
    when 0 then return "first"
    when 1 then return "second"
    when 2 then return "third"
    when 3 then return "fourth"
    when 4 then return "fifth"
    when 5 then return "sixth"
    when 6 then return "seventh"
    when 7 then return "eigth"
    when 8 then return "ninth"
    when 9 then return "tenth"
    when 10 then return "eleventh"
    when 11 then return "twelfth"
  end
end

gifts = ["Partridge in a pear tree.", "Two Turtle Doves,", "Three Calling Birds,", "Four French Hens,", "Five Gold Rings,", "Six Geese a Laying,", "Seven Swans a Swimming,", "Eight Maids a Milking,", "Nine Ladies Dancing,", "Ten Lords a Leaping,", "Eleven Pipers Piping,", "Twelve Drummers Drumming,"]

gifts_given = Array.new

puts "12 Days of Christmas"
puts "===================="

$day = 0
while $day < gifts.size do
  print "On the " + GetDay($day) + " day of Christmas my true love gave to me."

  gifts_given[$day] = gifts[$day]

  $idx = gifts_given.size

  while $idx >= 0 do
    if ($day == 0 && $idx == 0) then
      puts "A " + gifts_given[$idx]
    elsif ($day > 0 && $idx == 0) then 
      puts "And a " + gifts_given[$idx]
    else 
      puts gifts_given[$idx]
    end
    $idx -= 1
  end
  puts ""
  
  $day +=1
end
