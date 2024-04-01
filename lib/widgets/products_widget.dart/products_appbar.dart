import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ProductAppBar extends StatelessWidget {
  const ProductAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Ionicons.chevron_back_outline),
            style: IconButton.styleFrom(
                backgroundColor: Colors.white, foregroundColor: Colors.black),
            padding: const EdgeInsets.all(15),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.share_social_outline),
            style: IconButton.styleFrom(
                backgroundColor: Colors.white, foregroundColor: Colors.black),
            padding: const EdgeInsets.all(15),
          ),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.cart_outline),
            style: IconButton.styleFrom(
                backgroundColor: Colors.white, foregroundColor: Colors.black),
            padding: const EdgeInsets.all(15),
          ),
        ],
      ),
    );
  }
}
