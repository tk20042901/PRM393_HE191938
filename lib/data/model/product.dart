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
}