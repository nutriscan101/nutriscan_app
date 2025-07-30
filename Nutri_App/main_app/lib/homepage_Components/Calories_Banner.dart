import 'package:flutter/material.dart';
import 'package:main_app/homepage_Components/Calender.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class Calories extends StatefulWidget {
  const Calories({super.key});
  @override
  State<Calories> createState() => CalorState();
}

class CalorState extends State<Calories> {
  int Total_Calories = 1856;
  int target = 2000;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.9,
      height: screenheight * 0.18,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 39, 130, 203),
            const Color.fromARGB(255, 34, 110, 240),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            "Total Calories :",
            style: GoogleFonts.poppins(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(
            Total_Calories.toString() + ' Kcal',
            style: GoogleFonts.poppins(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Target-" + target.toString() + ' Kcal',
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontStyle: FontStyle.italic,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          LinearPercentIndicator(
            width: screenWidth * 0.85,
            lineHeight: 10,
            percent: Total_Calories / target,
            animation: true,
            animateFromLastPercent: true,
            animationDuration: 2000,
            progressColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 137, 192, 238),
          ),
        ],
      ),
    );
  }
}
