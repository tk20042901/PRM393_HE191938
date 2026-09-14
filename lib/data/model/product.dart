class Product{
  final int id;
  final String name;
  final double price;
  final String? image;
  final String? description;

  Product({required this.id, required this.name, required this.price, this.image, this.description});
  Product copyTo({
    int? id,
    String? name,
    String? image,
    double? price,
    String? description,
  }) => Product(
    id: id ?? this.id,
    name: name ?? this.name,
    price: price ?? this.price,
    image: image ?? this.image,
    description: description ?? this.description,
  );

  //json sang product
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String,
      price: json['price'] as double,
      description: json['description'] as String
    );
  }
  //product sang json
  Map<String, dynamic> toJson(){
    return {
      "id": id,
      "name": name,
      "image": image,
      "price": price,
      "description": description,
    };
  }

}