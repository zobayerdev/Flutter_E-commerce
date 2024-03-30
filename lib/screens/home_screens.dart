import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants.dart';
import 'package:flutter_ecommerce/models/products.dart';
import 'package:flutter_ecommerce/screens/categories.dart';
import 'package:flutter_ecommerce/screens/search_field.dart';
import 'package:flutter_ecommerce/widgets/home_appbar.dart';
import 'package:flutter_ecommerce/widgets/home_slider.dart';
import 'package:flutter_ecommerce/widgets/products_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // item counter or banner counter
  int currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppBar(),
                const SizedBox(
                  height: 20,
                ),
                const searchField(),
                const SizedBox(
                  height: 20,
                ),
                HomeSlider(
                  onChange: (index) {
                    setState(() {
                      currentSlide = index;
                    });
                  },
                  currentSlide: currentSlide,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Categories(),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Special For you",
                      style: TextStyle(
                          fontSize: 24,
                          color: kprimaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See all",
                        style: TextStyle(
                            color: kprimaryColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return ProductCard(product: products[index]);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
