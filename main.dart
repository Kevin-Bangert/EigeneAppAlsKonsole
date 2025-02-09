import 'dart:io';

// Eine Klasse für Restaurants erstellen
class Restaurant {
  Restaurant(
    this.ResName,
    this.foodType,
    this.RestaurantStreetName,
    this.RestaurantStreetNumber,
    this.RestaurantArea,
    this.RestaurantPlz,
    this.RestaurantVerified,
  );
  // Variablen zum Verifizierungsprozess / weiteres filtern nach Ort etc zukünftig
  String ResName;
  String foodType;
  String RestaurantStreetName;
  int RestaurantStreetNumber;
  String RestaurantArea;
  int RestaurantPlz;
  bool RestaurantVerified;
}

// Funktion zum Filtern von Resataurants nach Type
// Erstelle Funktion mit Rückgabewert Liste<Restaurants>
// Ich erstelle eine Liste von Restaurant-Objekten, die ich filtern möchte
// typ beinhaltet den String bzw die Essens-Art, wonach gefiltert werden soll
// where durchsucht die Liste restaurants und prüft
// für jedes Restaurant, ob es eine Bedingung (r) =>... erfüllt
// Lambda-Funktion wird verwendet
// r steht für jedes einzelne Restaurant-Objekt in der Liste
// Mit .toList() wird dieses Iterable in eine Liste umgewandelt,
// weil die Funktion List<Restaurant> zurückgeben soll.
List<Restaurant> filterRestaurants(List<Restaurant> restaurants, String type) {
  return restaurants
      .where((r) => r.foodType.toLowerCase() == type.toLowerCase())
      .toList();
}

// Funktion zum Filtern von verifiziert Restaurants mit Rückgabetyp List<Restaurant>
// Erstelle eine Liste vom Typ Restaurant die ich filtern will
// Ich filtere boolisch nach true ( verifiziert )
// Lambda Funktion wird verwendet
// r steht für jedes einzelne Restaurant-Objekt in der Liste
// Mit .toList() wird dieses Iterable in eine Liste umgewandelt,
// weil die Funktion List<Restaurant> zurückgeben soll.

List<Restaurant> verifiedRestaurants(
  List<Restaurant> restaurants,
  bool status,
) {
  return restaurants.where((r) => r.RestaurantVerified == true).toList();
}

void main() {
  // Beispiel-Daten: Liste mit Restaurants & Type
  List<Restaurant> restaurants = [
    Restaurant(
      "Pizza Palace",
      "Italienisch",
      "Appstr",
      1,
      "Berlin",
      11111,
      false,
    ),
    Restaurant("Sushi World", "Japanisch", "Appstr", 1, "Berlin", 11111, true),
    Restaurant(
      "Burger King",
      "Amerikanisch",
      "Appstr",
      1,
      "Berlin",
      11111,
      true,
    ),
    Restaurant(
      "Taco Heaven",
      "Mexikanisch",
      "Appstr",
      1,
      "Berlin",
      11111,
      false,
    ),
    Restaurant(
      "Pasta Lovers",
      "Italienisch",
      "Appstr",
      1,
      "Berlin",
      11111,
      false,
    ),
  ];

  // Restaurants nach "Italienisch" filtern
  List<Restaurant> italianRestaurants = filterRestaurants(
    restaurants,
    "Italienisch",
  );

  List<Restaurant> verifiedTrue = verifiedRestaurants(restaurants, true);

  // Gefilterte Restaurants ausgeben
  // for in Schleife durchläuft jedes Element in der Liste italienRestaurants
  print("Gefilterte Restaurants:");
  for (var r in italianRestaurants) {
    print(r.ResName);
  }

  print("Verifizierte Restaurants:");
  for (var r in verifiedTrue) {
    print(r.ResName);
  }

  print("Willkommen bei LetsEat - deiner App für ein entspanntes Erlebnis");
  print(
    "Bevor du loslegen kannst, sag mir bitte, ob du bereits ein Konto hast?",
  );
  print("Drücke bitte auf der Tastatur Y für Ja und N für Nein");

  String? kontoJaNein = stdin.readLineSync();

  if (kontoJaNein != null) {
    switch (kontoJaNein) {
      case "Y":
      case "y":
        print("Sehr schön, wir loggen dich ein und weiter gehts...");
        break;

      case "N":
      case "n":
        print("Wir erstellen im Hintergrund einen Account, einen Moment...");

      default:
        print("Bitte Y oder N eingeben");
        break;
    }
  }

  print("Aktuell kann nur ein Restaurant ausgewählt werden.");
  print(
    "Möchtest du vor Ort über die App einen Sitzplatz reservieren? ( y / n )",
  );

  String? sitzplatz = stdin.readLineSync();

  if (sitzplatz != null) {
    switch (sitzplatz) {
      case "Y":
      case "y":
        print("Sehr schön, wir reservieren für dich");
        break;

      case "N":
      case "n":
        print("Wir freuen uns auf deinen Besuch");
        break;

      default:
        print("Bitte Y oder N eingeben");
        break;
    }
  }

  print("Möchtest du deine Bestellung direkt über die App bezahlen?");
  String? bezahlen = stdin.readLineSync();

  if (bezahlen != null) {
    switch (bezahlen) {
      case "Y":
      case "y":
        print("Danke für deine Zahlung");
        break;

      case "N":
      case "n":
        print("Wir freuen uns auf deinen Besuch");

      default:
        print("Bitte Y oder N eingeben");
        break;
    }
  }
}
