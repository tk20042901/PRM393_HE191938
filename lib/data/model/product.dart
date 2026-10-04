class Product {
  final int id;
  final String name;
  final String? description;
  final double price;
  final double discountPercen;
  final String? image;

  Product({
    required this.id,
    required this.name,
    this.description,
    required this.price,
    this.discountPercen = 0,
    this.image,
  });

  Product copyTo({
    int? id,
    String? name,
    String? description,
    double? price,
    double? discountPercen,
    String? image,
  }) => Product(
    id: id ?? this.id,
    name: name ?? this.name,
    description: description ?? this.description,
    price: price ?? this.price,
    discountPercen: discountPercen ?? this.discountPercen,
    image: image ?? this.image,
  );

  // Giá sau khi giảm
  double get discountedPrice => price * (1 - discountPercen / 100);

  // json sang product
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String?,
      price: (json['price'] as num).toDouble(),
      discountPercen: (json['discountPercen'] as num?)?.toDouble() ?? 0,
      image: json['image'] as String?,
    );
  }

  // product sang json
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "description": description,
      "price": price,
      "discountPercen": discountPercen,
      "image": image,
    };
  }
}