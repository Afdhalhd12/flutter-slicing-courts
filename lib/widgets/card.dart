import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sports/views/package_duration.dart';
import 'package:sports/widgets/button.dart';

class CustomCard extends StatelessWidget {
  final String image;
  final String rating;
  final String title;
  final String category;
  final String price;

  const CustomCard({
    super.key,
    this.image = "https://cdn.dribbble.com/userupload/10093106/file/original-b6dd549465ee5871df173b836c97c07e.jpg",
    this.rating = "5.0",
    this.title = "Futsal Court A",
    this.category = "Indoor || Air Conditioned",
    this.price = "Rp. 50.000/hour",
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 2,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),

              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.star, color: Colors.amber),
                    Text(
                      rating,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  category,
                  style: GoogleFonts.poppins(color: fromCssColor("#4b5563")),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      price,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    CustomButton(
                      textButton: "Select",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PackageDuration(),
                          ),
                        );
                      },
                      heighButton: 25,
                      widthButton: 120,
                      titleSize: 12,
                      radius: 8,
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
