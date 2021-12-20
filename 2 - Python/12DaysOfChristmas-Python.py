#!/usr/bin/python

# Defined the functions to be used
# Function to return the day of christmas as a textual representation
def getDayOfChristmas(day):
    switch = {
        1: "First",
        2: "Second",
        3: "Third",
        4: "Forth",
        5: "Fifth",
        6: "Sixth",
        7: "Seventh",
        8: "Eigth",
        9: "Ninth",
        10: "Tenth",
        11: "Eleventh",
        12: "Twelfth"
    }
    return switch.get(day, "Invalid")


# Define the variables to be used in the song
day = 1
lyricLine = "On the {0} day of Christmas my true love gave to me:"
presents = ["Partridge in a pear tree.",
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
            "Twelve Drummers Drumming,"]

presentsGiven = list()

print("12 Days of Christmas")
print("====================")

# Main loop - iterate the days of christmas
for present in presents:

    # Add the current present to the presents given
    presentsGiven.append(present)

    # Display the lyrics
    print("")
    print(lyricLine.replace("{0}", getDayOfChristmas(day)))
    for presentGiven in presentsGiven[::-1]:
        if presentGiven.find("partridge") == 0 and len(presentsGiven) == 1:
	    print("A " + presentGiven)
        elif presentGiven.find("partridge") == 0 and len(presentsGiven) > 1:
            print("And a " + presentGiven)
        else:
            print(presentGiven)
    day += 1
