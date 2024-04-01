import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/category.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(categories[index].image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                categories[index].title,
                style: const TextStyle(color: Colors.black),
              )
            ],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        itemCount: categories.length,
      ),
    );
  }
}
