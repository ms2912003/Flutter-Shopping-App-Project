class Product {
final String id;
final String title;
final String description;
final double price;
final String imageUrl;


Product({required this.id, required this.title, required this.description, required this.price, required this.imageUrl});
}


final sampleProducts = List.generate(
8,
(i) => Product(
id: 'p\$i',
title: 'Product \$i',
description: 'Description for product \$i',
price: 9.99 + i,
imageUrl: 'https://picsum.photos/seed/p\$i/400/400',
),
);