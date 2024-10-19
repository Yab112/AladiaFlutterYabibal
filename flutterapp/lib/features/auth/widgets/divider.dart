import 'package:flutter/material.dart';

class DividerOr extends StatelessWidget {
  const DividerOr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color dividerColor = Theme.of(context).brightness == Brightness.light
        ? Colors.black
        : Color(0xFFFFD700); // Black for light theme, Gold for dark theme

    return Row(
      children: [
        // Left Side Gradient (from narrow to wider)
        Expanded(
          child: Container(
            height: 5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  dividerColor.withOpacity(0.0), // Narrow (low opacity)
                  dividerColor.withOpacity(0.5), // Wider (higher opacity)
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
        ),
        // "Or" Text in the Middle
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "Or",
            style: TextStyle(
              color: dividerColor, // Text color set to dividerColor
              fontSize: 16,
            ),
          ),
        ),
        // Right Side Gradient (from wider to narrow)
        Expanded(
          child: Container(
            height: 5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  dividerColor.withOpacity(0.5), // Wider (higher opacity)
                  dividerColor.withOpacity(0.0), // Narrow (low opacity)
                ],
                begin: Alignment.centerLeft, // Start wider
                end: Alignment.centerRight, // End narrow
              ),
            ),
          ),
        ),
      ],
    );
  }
}