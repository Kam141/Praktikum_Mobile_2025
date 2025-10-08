import 'package:flutter/material.dart';
import '../models/item.dart';
import 'item_page.dart';

// =================== MAIN HOMEPAGE ===================
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
    Item(
      name: 'Fahri',
      price: 10000,
      image: 'images/fahri2.jpg',
      stock: 0,
      description:
          'Dia adalah cowok yang manis, ganteng, dan lucu, sosok yang membuat orang betah di dekatnya karena pesonanya ',
      rating: 5.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: Colors.grey.shade50,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ItemCard(item: items[index]);
              },
            ),
          ),
          const FooterWidget(),
        ],
      ),
    );
  }
}

// =================== APP BAR ===================
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "🛒 Shopping List",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: 1.2,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.blue.shade700,
      elevation: 8,
      shadowColor: Colors.blue.shade200,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(18)),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

// =================== ITEM CARD ===================
class ItemCard extends StatelessWidget {
  final Item item;
  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ItemPage(item: item)),
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
                ItemImage(image: item.image),
                const SizedBox(width: 16),
                Expanded(child: ItemInfo(item: item)),
                const SizedBox(width: 12),
                ItemSidePanel(item: item),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// =================== ITEM IMAGE ===================
class ItemImage extends StatelessWidget {
  final String image;
  const ItemImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Hero(
        tag: image,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            image,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// =================== ITEM INFO ===================
class ItemInfo extends StatelessWidget {
  final Item item;
  const ItemInfo({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
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
        RatingStars(rating: item.rating),
      ],
    );
  }
}

// =================== RATING STARS ===================
class RatingStars extends StatelessWidget {
  final double rating;
  const RatingStars({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(5, (i) {
          return Icon(
            Icons.star,
            size: 16,
            color: rating >= i + 1 ? Colors.orange : Colors.grey,
          );
        }),
        const SizedBox(width: 6),
        Text(
          "$rating",
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

// =================== ITEM SIDE PANEL ===================
class ItemSidePanel extends StatelessWidget {
  final Item item;
  const ItemSidePanel({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.inventory_2,
              size: 14,
              color: Colors.green.shade700,
            ),
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
        const AddToCartButton(),
      ],
    );
  }
}

// =================== ADD TO CART BUTTON ===================
class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        ),
      ),
    );
  }
}

// =================== FOOTER ===================
class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      color: Colors.blue.shade50,
      child: const Text(
        "Name: Kamila Habiba Putri Ananta | NIM: 2341720175", // Ganti dengan nama dan NIM Anda
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        textAlign: TextAlign.center,
      ),
    );
  }
}