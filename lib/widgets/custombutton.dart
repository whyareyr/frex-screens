// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class CustomButton extends StatelessWidget {
//   final String text;
//   final VoidCallback? onPressed;
//   final bool isEnabled;

//   const CustomButton({
//     super.key,
//     required this.text,
//     this.onPressed,
//     this.isEnabled = true, // Button is enabled by default
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: ElevatedButton(
//         // Set onPressed to null if disabled, which automatically handles tap events
//         onPressed: isEnabled ? onPressed : null,
//         style: ElevatedButton.styleFrom(
//           // Conditional background color
//           backgroundColor: isEnabled ? Color(0xFFFFE900) : Colors.grey[300],
//           padding: const EdgeInsets.symmetric(vertical: 16.0),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12.0),
//           ),
//           elevation: 0,
//           // Define styles for the disabled state to avoid default grey text
//           disabledBackgroundColor: Colors.grey[200],
//           disabledForegroundColor: Colors.grey[500],
//         ),
//         child: Text(
//           text,
//           style: GoogleFonts.poppins(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//             // Conditional text color
//             color: isEnabled ? const Color(0xFF2F2F34) : Colors.grey[600],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isEnabled;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      // Using a fixed height for consistency, which is a common practice
      height: 56,
      child: ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          // Using a yellow that more closely matches the target image
          backgroundColor: isEnabled
              ? const Color(0xFFFFE900)
              : Colors.grey[300],
          // Disabled state colors for a clearer inactive look
          disabledBackgroundColor: Colors.grey[200],
          disabledForegroundColor: Colors.grey[500],
          elevation: 0,
          shape: RoundedRectangleBorder(
            // FIX: Reduced the border radius to match the less-rounded corners
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 16,
            // FIX: Changed from bold to semi-bold to match the font in the image
            fontWeight: FontWeight.w600,
            color: isEnabled ? const Color(0xFF2F2F34) : Colors.grey[600],
          ),
        ),
      ),
    );
  }
}
