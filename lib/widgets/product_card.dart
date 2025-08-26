import 'package:assignment5/models/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import '../utils/app_styles.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Image.asset(product.image, fit: BoxFit.cover)),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(product.name, style: AppStyles.productTitle),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text("\$${product.price}", style: AppStyles.productPrice),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: () => cartProvider.addToCart(product),
              child: const Text("Add to Cart"),
            ),
          ),
        ],
      ),
    );
  }
}
