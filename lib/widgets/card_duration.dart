import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sports/views/order_summary.dart';

class CardDuration extends StatelessWidget {
  final String duration;
  final String subtitleR;
  final String subtitleL;
  final String price;

  const CardDuration({
    super.key,
    this.duration = "1 Hour",
    this.price = "Rp. 50.000",
    this.subtitleL = "Perfect For Training",
    this.subtitleR = "Per Session"
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => OrderSummary()));
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey, width: 2),
                ),
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          duration,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            
                          ),
                        ),
                        Spacer(),
                        Text(
                          price,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          subtitleL,
                          style: GoogleFonts.poppins(),
                        ),
                        Spacer(),
                        Text(
                          subtitleR,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
  }
}