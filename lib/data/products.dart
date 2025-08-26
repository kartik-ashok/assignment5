import 'package:assignment5/models/products.dart';

import '../utils/app_images.dart';

final List<Product> products = [
  Product(id: "1", name: "Smartphone", image: AppImages.phone, price: 499.99),
  Product(
    id: "2",
    name: "Headphones",
    image: AppImages.headphones,
    price: 79.99,
  ),
  Product(id: "3", name: "Shoes", image: AppImages.shoes, price: 59.99),
  Product(id: "4", name: "Backpack", image: AppImages.bag, price: 39.99),
  Product(id: "5", name: "Wrist Watch", image: AppImages.watch, price: 149.99),
];
