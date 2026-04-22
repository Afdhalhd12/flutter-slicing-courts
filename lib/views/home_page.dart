import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sports/widgets/card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, dynamic>> daftarLapangan = [
    {
      'image':
          'https://cdn.dribbble.com/userupload/10093106/file/original-b6dd549465ee5871df173b836c97c07e.jpg',
      'rating': "4.5",
      'title': "Futsal Court A",
      'category': "Indoor || Air Conditioned",
      'price': 'Rp. 50.000',
    },

    {
      'image':
          'https://cdn.dribbble.com/userupload/10093106/file/original-b6dd549465ee5871df173b836c97c07e.jpg',
      'rating': "5.0",
      'title': "Futsal Court B",
      'category': "Indoor || Air Conditioned",
      'price': 'Rp. 60.000',
    },

    {
      'image':
          'https://cdn.dribbble.com/userupload/10093106/file/original-b6dd549465ee5871df173b836c97c07e.jpg',
      'rating': "4.0",
      'title': "Futsal Court C",
      'category': "Indoor || Air Conditioned",
      'price': 'Rp. 65.000',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sports Courts",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.separated(
          itemCount: daftarLapangan.length,
          separatorBuilder: (context, index) {
            return SizedBox(height: 10);
          },
          itemBuilder: (context, index) {
            final produk = daftarLapangan[index];
            return CustomCard(
              image: produk['image'],
              rating: produk['rating'],
              title: produk['title'],
              category: produk['category'],
              price: produk['price'],
            );
          },
        ),
      ),
    );
  }
}
