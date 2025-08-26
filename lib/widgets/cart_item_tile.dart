import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_item.dart';
import '../providers/cart_provider.dart';

class CartItemTile extends StatelessWidget {
  final CartItem cartItem;
  const CartItemTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);

    return ListTile(
      leading: Image.asset(cartItem.product.image, width: 50),
      title: Text(cartItem.product.name),
      subtitle: Text("\$${cartItem.subtotal.toStringAsFixed(2)}"),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: () => cartProvider.decreaseQuantity(cartItem.product.id),
          ),
          Text(cartItem.quantity.toString()),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => cartProvider.increaseQuantity(cartItem.product.id),
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => cartProvider.removeItem(cartItem.product.id),
          ),
        ],
      ),
    );
  }
}
