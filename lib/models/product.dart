import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  String model;
  String pk;
  Fields fields;

  Product({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  int user;
  String name;
  int price;
  String description;
  String media;

  Fields({
    required this.user,
    required this.name,
    required this.price,
    required this.description,
    required this.media,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        media: json["media"],
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "description": description,
        "media": media,
      };
}
