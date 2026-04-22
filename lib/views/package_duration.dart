import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sports/widgets/card_duration.dart';

class PackageDuration extends StatelessWidget {
   final List<Map<String, dynamic>> daftarPaket = [
    {
      'duration' : '1 Hour',
      'price' : 'Rp. 50.000',
      'subtitleL' : 'Good For Training',
      'subtitleR' : "Per Session",
    },

    {
      'duration' : '2 Hour',
      'price' : 'Rp. 85.000',
      'subtitleL' : 'Comfortable For Training',
      'subtitleR' : "Per Session",
    },

    {
      'duration' : '3 Hour',
      'price' : 'Rp. 125.000',
      'subtitleL' : 'Perfect For Training',
      'subtitleR' : "Per Session",
    }

   ];

   PackageDuration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Package Duration",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
        elevation: 1,
        shadowColor: Colors.black,
        surfaceTintColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView.separated(
          itemCount: daftarPaket.length,
          separatorBuilder: (context, index) {
            return SizedBox(height: 10);
          },
          itemBuilder: (context, index) {
            final paket = daftarPaket[index];
            return CardDuration(
              duration: paket['duration'],
              price: paket['price'],
              subtitleL: paket['subtitleL'],
              subtitleR: paket['subtitleR'],
            );
          },
        ),
      ),
    );
  }
}
