import 'package:flutter/material.dart';
import '../models/item.dart';
import 'item_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      image: 'images/sugar.jpg',
      stock: 20,
      description: 'Gula pasir murni berkualitas tinggi.',
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      image: 'images/salt.jpg',
      stock: 15,
      description: 'Garam dapur murni tanpa bahan tambahan.',
      rating: 4.0,
    ),
    Item(
      name: 'Tea',
      price: 7000,
      image: 'images/tea.jpeg',
      stock: 10,
      description: 'Teh hitam pilihan dengan aroma khas.',
      rating: 4.3,
    ),
    Item(
      name: 'Coffee',
      price: 12000,
      image: 'images/coffee.jpeg',
      stock: 8,
      description: 'Kopi robusta asli dengan cita rasa kuat.',
      rating: 4.7,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "🛒 Shopping List",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
        elevation: 8,
        shadowColor: Colors.blue.shade200,
      ),
      backgroundColor: Colors.grey.shade50,
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: InkWell(
              onTap: () {
                // Navigasi ke halaman detail
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemPage(item: item),
                  ),
                );
              },
              borderRadius: BorderRadius.circular(16),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 0,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Bagian gambar
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            item.image,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),

                      // Bagian teks
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Nama Item
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.blue.shade700,
                                    Colors.blue.shade500,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 4,
                              ),
                              child: Text(
                                item.name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),

                            // Harga
                            Text(
                              "Rp ${item.price}",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.green.shade700,
                                fontFamily: 'monospace',
                              ),
                            ),
                            const SizedBox(height: 12),

                            // Rating
                            Row(
                              children: [
                                Icon(Icons.star,
                                    size: 16,
                                    color: item.rating >= 1
                                        ? Colors.orange
                                        : Colors.grey),
                                Icon(Icons.star,
                                    size: 16,
                                    color: item.rating >= 2
                                        ? Colors.orange
                                        : Colors.grey),
                                Icon(Icons.star,
                                    size: 16,
                                    color: item.rating >= 3
                                        ? Colors.orange
                                        : Colors.grey),
                                Icon(Icons.star,
                                    size: 16,
                                    color: item.rating >= 4
                                        ? Colors.orange
                                        : Colors.grey),
                                Icon(Icons.star,
                                    size: 16,
                                    color: item.rating >= 5
                                        ? Colors.orange
                                        : Colors.grey),
                                const SizedBox(width: 6),
                                Text(
                                  "${item.rating}",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // Bagian kanan (stock + tombol)
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Stock
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.inventory_2,
                                  size: 14, color: Colors.green.shade700),
                              const SizedBox(width: 4),
                              Text(
                                "Stock: ${item.stock}",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.green.shade700,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),

                          // Tombol Add to Cart
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blue.shade600,
                                  Colors.blue.shade400,
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue.shade300,
                                  blurRadius: 4,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add_shopping_cart,
                                size: 14,
                                color: Colors.white,
                              ),
                              label: const Text(
                                "Add to Cart",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
