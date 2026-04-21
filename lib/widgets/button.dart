import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String textButton;
  final VoidCallback? onPressed;
  final double widthButton;
  final double heighButton;
  final double titleSize;
  final double radius;
  

  const CustomButton({super.key, 
  required this.textButton, 
  required this.onPressed,
  this.widthButton = double.infinity,
  this.heighButton = 50,
  this.titleSize = 16,
  this.radius = 20


  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthButton,
      height: heighButton,
      child: ElevatedButton(
       onPressed: onPressed,
       style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(radius),
        ),
       ),
       child: Text(textButton, style: GoogleFonts.poppins(
        fontSize: titleSize,
        fontWeight: FontWeight.w500,
        color: Colors.white
       ),)),
    );
  }
}