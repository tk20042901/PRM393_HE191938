import 'package:prm393/data/model/product.dart';

class ProductDAO {
  static final List<Product> _products = [
    Product(
      id: 1,
      name: 'iPhone 15',
      description:
          'Experience the latest technology with the new iPhone 15. Stunning design, powerful performance.',
      price: 1099,
      discountPercen: 9,
      image: 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-15-finish-select-202309-6-1inch-blue?wid=5120&hei=2880&fmt=p-jpg&qlt=80&.v=1693009278906',
    ),
    Product(
      id: 3,
      name: 'MacBook Air',
      description:
          'The new MacBook Air with M2 chip is impossibly thin with a stunning display and all-day battery life.',
      price: 1299,
      discountPercen: 7,
      image: 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/macbook-air-midnight-select-20220606?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1653084303665',
    ),
    Product(
      id: 4,
      name: 'iPad Pro',
      description:
          'iPad Pro with M2 chip delivers powerful performance for professionals on the go.',
      price: 799,
      discountPercen: 5,
      image: 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-pro-13-select-wifi-spacegray-202210?wid=5120&hei=2880&fmt=p-jpg&qlt=95&.v=1664411207213',
    )
  ];
  List<Product> getAllProduct() {
    return List.unmodifiable(_products);
  }
}
