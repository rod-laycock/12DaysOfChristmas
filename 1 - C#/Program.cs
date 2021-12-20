using System;
using System.Collections.Generic;

namespace TwelveDaysOfChristmas
{
    class Program
    {
        private static string lyric = "On the {0} day of christmas my true love gave to me:";
        private static string[] presents = {
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

    private static List<string> presentsGiven = new List<string>();
        static void Main(string[] args)
        {
            Console.WriteLine("12 Days of Christmas");
            Console.WriteLine("====================");

            for (int day = 1; day <= presents.Length; day ++)
            {
                presentsGiven.Add(presents[day -1]);

                Console.WriteLine();
                Console.WriteLine(string.Format(lyric, GetDayByName(day)));

                var reversedPresentsGiven = presentsGiven;
                //reversedPresentsGiven.Reverse();

                var presentGivenCount = 1;

                for (int i = presentsGiven.Count -1; i >= 0; i --)
                {
               
                    if (i == 0 && presentsGiven.Count == 1)
                    {
                      Console.WriteLine(String.Format("A {0}", presentsGiven[i]));
                    }
                    else if (i == 0 && presentsGiven.Count > 1)
                    {
                      Console.WriteLine(String.Format("And a {0}", presentsGiven[i]));
                    }
                    else
                    {
                      Console.WriteLine(presentsGiven[i]);
                    }
                }
            }
        }

        private static string GetDayByName(int day)
        {
            switch(day)
            {
                case 1: return "first";
                case 2: return "second";
                case 3: return "third";
                case 4: return "fourth";
                case 5: return "fiftth";
                case 6: return "sixth";
                case 7: return "seventh";
                case 8: return "eigth";
                case 9: return "ninth";
                case 10: return "tenth";
                case 11: return "eleventh";
                case 12: return "twelth";
                default: return "";
            }
        }
    }
}
