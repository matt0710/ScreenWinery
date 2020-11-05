class Winery {

  int id;
  String name;
  String street;
  String city;
  String cap;
  String image;
  //realisticamente verrà inserito un campo URL cosi da avere per oggi cantina associata la propria immagine
  //ci sarà anche un array users[] che conterrà un'istanza della classe Users necessaria per il login.
  //ci sarà anche un campo che tiene conto delle zone

  Winery(this.id, this.name, this.street, this.city, this.cap, this.image);

  Winery.fromJson(Map<String, dynamic> json) //costruttore che acquisisce i dati dal json e gli associa ai  campi dello
  //stato interno della classe
    : id = json["id"],
      name = json["name"],
      street = json["street"],
      city = json["city"],
      cap = json["cap"],
      image = json["image"];

  Map<String, dynamic> toJson() => { //metodo non utile, solo a scopo didattico. Esegue il marshalling dal vettore al json
    "id": id,
    "name": name,
    "street": street,
    "city": city,
    "cap": cap
  };

}

/**
 * {
 *    "id": 4,
 *    "name": "Cantina bellissima",
 *    "street": "Via Barletta 379",
 *    "city": "Andria",
 *    "cap": "76123"
 * }
*/

/**
 * [
 * {
 *    "id": 4,
 *    "name": "Cantina bellissima",
 *    "street": "Via Barletta 379",
 *    "city": "Andria",
 *    "cap": "76123"
 * },
 * {
 *    "id": 5,
 *    "name": "Cantina bellissima 2",
 *    "street": "Via Barletta 379",
 *    "city": "Andria",
 *    "cap": "76123"
 * },
 * ]
*/