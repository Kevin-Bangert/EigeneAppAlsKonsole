import 'dart:io';

void main() {
  print("Willkommen bei LetsEat - deiner App für ein entspanntes Erlebnis");
  print(
      "Bevor du loslegen kannst, sag mir bitte, ob du bereits ein Konto hast?");
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
      "Möchtest du vor Ort über die App einen Sitzplatz reservieren? ( y / n )");

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
