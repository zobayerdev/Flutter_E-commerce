class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

List<Category> categories = [
  Category(title: 'Clothes', image: 'assets/beauty.png'),
  Category(title: 'Shoes', image: 'assets/shoes.jpg'),
  Category(title: 'Watches', image: 'assets/watch.png'),
  Category(title: 'Electronics', image: 'assets/wireless.png'),
  Category(title: 'Phones', image: 'assets/sweet.png'),
  Category(title: 'Laptops', image: 'assets/pc.jpg'),
];
