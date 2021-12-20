import java.util.ArrayList;

import javax.lang.model.util.ElementScanner6;

class Main {

  public static ArrayList<String> Gifts = new ArrayList<String>();

  public static void init() {
    Gifts.add("Partridge in a Pear Tree.");
    Gifts.add("Two Turtle Doves,");
    Gifts.add("Three Calling Birds,");
    Gifts.add("Four French Hens,");
    Gifts.add("Five Gold Rings,");
    Gifts.add("Six Geese a Laying,");
    Gifts.add("Seven Swans a Swimming,");
    Gifts.add("Eight Maids a Milking,");
    Gifts.add("Nine Ladies Dancing,");
    Gifts.add("Ten Lords a Leaping,");
    Gifts.add("Eleven Pipers Piping,");
    Gifts.add("Twelve Drummers Drumming,");
  }

  public static void main(String[] args) {
    init();

    ArrayList<String> GiftsGiven = new ArrayList<String>();

    System.out.println("12 Days Of Christmas");
    System.out.println("====================\n");

    for (int day = 1; day <= Gifts.size(); day++) {
      System.out.printf("On the %s day of Christmas my true love gave to me.\n", ConvertDayToString(day));

      GiftsGiven.add(Gifts.get(day - 1));

      for (int giftCount = GiftsGiven.size(); giftCount > 0; giftCount--) {
        if (day == 1 && giftCount == 1) {
          System.out.printf("A %s\n", GiftsGiven.get(giftCount - 1));
        } else if (day > 0 && giftCount == 1) {
          System.out.printf("And a %s\n", GiftsGiven.get(giftCount - 1));
        } else {
          System.out.println(GiftsGiven.get(giftCount - 1));
        }

      }

      System.out.println("");
    }

  }

  public static String ConvertDayToString(int day) {

    switch (day) {
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

}
