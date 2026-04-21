import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sports/widgets/button.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order Summary",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
        elevation: 1,
        shadowColor: Colors.black,
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Futsal Court A",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Indoor || Air Conditioned",
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.calendar_month_rounded),
                        SizedBox(width: 5),
                        Text(
                          "Date",
                          style: GoogleFonts.poppins(
                            color: fromCssColor("#4b5563"),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Monday, Apr 30",
                          style: GoogleFonts.poppins(
                            color: fromCssColor("#4b5563"),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                      child: Center(
                        child: Divider(thickness: 1, color: Colors.black),
                      ),
                    ),

                    Row(
                      children: [
                        Icon(Icons.hourglass_bottom),
                        SizedBox(width: 5),
                        Text(
                          "Duration",
                          style: GoogleFonts.poppins(
                            color: fromCssColor("#4b5563"),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "2 Hours",
                          style: GoogleFonts.poppins(
                            color: fromCssColor("#4b5563"),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                      child: Center(
                        child: Divider(thickness: 1, color: Colors.black),
                      ),
                    ),

                    Row(
                      children: [
                        Icon(Icons.discount),
                        SizedBox(width: 5),
                        Text(
                          "Price per Hour",
                          style: GoogleFonts.poppins(
                            color: fromCssColor("#4b5563"),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Rp. 50.000",
                          style: GoogleFonts.poppins(
                            color: fromCssColor("#4b5563"),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                      child: Center(
                        child: Divider(thickness: 1, color: Colors.black),
                      ),
                    ),

                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Subtotal (2 hours)",
                          style: GoogleFonts.poppins(
                            color: fromCssColor("#4b5563"),
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        Spacer(),

                        Text(
                          "Rp. 50.000",
                          style: GoogleFonts.poppins(
                            color: fromCssColor("#4b5563"),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 5),

                    Row(
                      children: [
                        Text(
                          "Service Fee",
                          style: GoogleFonts.poppins(
                            color: fromCssColor("#4b5563"),
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        Spacer(),

                        Text(
                          "Rp. 5.000",
                          style: GoogleFonts.poppins(
                            color: fromCssColor("#4b5563"),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10),

                    Row(
                      children: [
                        Text(
                          "Total",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Spacer(),

                        Text(
                          "Rp. 105.000",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.info),
                        SizedBox(width: 5),
                        Text(
                          "Booking Policy",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.only(left: 30),
                      child: Text(
                        'Free Concellation up to 5 hours before your booking time. Equipment rental available on-site.',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: fromCssColor("#4b5563"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              SizedBox(height: 30, child: Divider(),),
              CustomButton(
                textButton: "Choose Payment Method 🡢",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
