import 'package:ahmad/basicHome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/CartProvider.dart';
import 'model/prouducts_models.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final total = cartProvider.totalPrice.toStringAsFixed(2);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 193, 111, 18),
        title: const Text('Your Cart'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BasicHome()),
            );
          },
        ),
      ),
      body: cartProvider.cartItems.isEmpty
          ? const Center(
              child: Text(
                'Your cart is empty',
                style: TextStyle(fontSize: 18),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartProvider.cartItems.length,
                    itemBuilder: (context, index) {
                      final product = cartProvider.cartItems[index];
                      return CartItemWidget(
                        product: product,
                        cartProvider: cartProvider,
                      );
                    },
                  ),
                ),
                CartSummaryWidget(total: total, cartProvider: cartProvider),
              ],
            ),
    );
  }
}

// Widget لعرض عنصر السلة
class CartItemWidget extends StatelessWidget {
  final ProductsModel product;
  final CartProvider cartProvider;

  const CartItemWidget({
    Key? key,
    required this.product,
    required this.cartProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ListTile(
        leading: Image.asset(product.image, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(product.title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        subtitle: Text('${product.price} s.p'),
        trailing: IconButton(
          icon: const Icon(Icons.remove_circle_outline, color: Colors.red),
          onPressed: () => _confirmRemoveProduct(context),
        ),
      ),
    );
  }

  Future<void> _confirmRemoveProduct(BuildContext context) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Remove Product'),
        content: Text('Are you sure you want to remove ${product.title} from your cart?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Remove', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );

    if (confirmed ?? false) {
      cartProvider.removeProduct(product);
    }
  }
}

// Widget لعرض ملخص السلة
class CartSummaryWidget extends StatelessWidget {
  final String total;
  final CartProvider cartProvider;

  const CartSummaryWidget({
    Key? key,
    required this.total,
    required this.cartProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 193, 111, 18),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            offset: const Offset(0, -2),
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'Total: $total s.p',
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: cartProvider.cartItems.isNotEmpty
                ? () => _processCheckout(context)
                : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            ),
            child: const Text(
              'Proceed to Checkout',
              style: TextStyle(color: Color.fromARGB(255, 193, 111, 18)),
            ),
          ),
        ],
      ),
    );
  }

  void _processCheckout(BuildContext context) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    await Future.delayed(const Duration(seconds: 2));

    Navigator.of(context).pop();

    cartProvider.clearCart();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Purchase Successful'),
        content: const Text('Your purchase was successful! Thank you.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
