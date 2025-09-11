// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class CustomInputField extends StatelessWidget {
//   final String labelText;
//   final String hintText;
//   final bool isDropdown;
//   final List<String>? dropdownItems;

//   const CustomInputField({
//     super.key,
//     required this.labelText,
//     required this.hintText,
//     this.isDropdown = false,
//     this.dropdownItems,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           labelText,
//           style: GoogleFonts.poppins(color: Color(0xFF505057), fontSize: 12),
//         ),
//         const SizedBox(height: 16.0),
//         isDropdown
//             ? DropdownButtonFormField<String>(
//                 decoration: _inputDecoration(hintText),
//                 initialValue: null,
//                 hint: Text(hintText),
//                 icon: const Icon(Icons.keyboard_arrow_down),
//                 items:
//                     dropdownItems?.map((String value) {
//                       return DropdownMenuItem<String>(
//                         value: value,
//                         child: Text(value),
//                       );
//                     }).toList() ??
//                     [],
//                 onChanged: (_) {},
//               )
//             : TextFormField(decoration: _inputDecoration(hintText)),
//       ],
//     );
//   }

//   InputDecoration _inputDecoration(String hint) {
//     return InputDecoration(
//       hintText: hint,
//       hintStyle: GoogleFonts.poppins(
//         color: Colors.grey[500],
//         fontSize: 16,
//         fontWeight: FontWeight.w400,
//       ),
//       filled: true,
//       fillColor: Colors.grey[100],
//       contentPadding: const EdgeInsets.symmetric(
//         horizontal: 16.0,
//         vertical: 12.0,
//       ),
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8.0),
//         borderSide: BorderSide(color: Colors.grey[300]!, width: 1.0),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8.0),
//         borderSide: BorderSide(color: Colors.grey[300]!, width: 1.0),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8.0),
//         borderSide: const BorderSide(
//           color: Color(0xFF79747E), // Or your primary color
//           width: 1.5,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInputField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool isDropdown;
  final List<String>? dropdownItems;
  final bool isEnabled; // New property to control enabled/disabled state

  const CustomInputField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.isDropdown = false,
    this.dropdownItems,
    this.isEnabled = true, // Default to true (enabled)
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: GoogleFonts.poppins(
            color: Color(0xFF505057),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4.0),
        isDropdown
            ? DropdownButtonFormField<String>(
                decoration: _inputDecoration(hintText, isEnabled),
                initialValue: null,
                hint: Text(
                  hintText,
                  style: TextStyle(
                    color: isEnabled ? Colors.grey[500] : Colors.grey[700],
                  ),
                ),
                icon: const Icon(Icons.keyboard_arrow_down),
                items:
                    dropdownItems?.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList() ??
                    [],
                // Set onChanged to null to disable the dropdown
                onChanged: isEnabled ? (_) {} : null,
              )
            : TextFormField(
                // Use the isEnabled property to control the enabled state
                enabled: isEnabled,
                decoration: _inputDecoration(hintText, isEnabled),
              ),
      ],
    );
  }

  InputDecoration _inputDecoration(String hint, bool isEnabled) {
    return InputDecoration(
      hintText: hint,
      hintStyle: GoogleFonts.poppins(
        color: Color(0xFF49454F),
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      // Conditionally set the background color
      filled: true,
      fillColor: isEnabled ? Colors.white : Colors.grey[100],
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 12.0,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: Colors.grey[300]!, width: 1.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        // Use a slightly different border color when disabled
        borderSide: BorderSide(
          color: isEnabled ? Colors.grey[300]! : Colors.grey[200]!,
          width: 1.0,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: Color(0xFF79747E), width: 1.5),
      ),
      // Define the border style for the disabled state
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: Colors.grey[200]!, width: 1.0),
      ),
    );
  }
}
