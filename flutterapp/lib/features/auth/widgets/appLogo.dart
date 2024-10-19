import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    // You can define the size and path within this component
    double logoHeight = 125; // Define the size of the logo here
    double logoWidth = 125;

    return SizedBox(
      height: logoHeight,
      width: logoWidth,
      child: Image.asset(
        'assets/images/home_logo.png', // Use your logo path directly
        // Ensure the image scales within the given size
      ),
    );
  }
}



// class AppLogo extends StatelessWidget {
//   final String logoPath;

//   const AppLogo({super.key, required this.logoPath});

//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(
//       logoPath,
//       height: MediaQuery.of(context).size.width * 0.25,
//       width: MediaQuery.of(context).size.width * 0.25,
//     );
//   }
// }
