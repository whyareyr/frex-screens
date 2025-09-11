// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:my_first_app/widgets/custombutton.dart'; // Make sure this path is correct

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   String? _selectedCountryCode = '+91';
//   final List<String> _countryCodes = ['+91', '+1', '+44', '+61'];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // Matching the light grey background from your reference code
//       backgroundColor: const Color(0xFFF7F8F9),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFFF7F8F9),
//         elevation: 0,
//         leading: const Icon(Icons.arrow_back, color: Colors.black),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(height: 16.0),
//                     Text(
//                       'Enter Your Phone Number',
//                       style: GoogleFonts.poppins(
//                         fontSize: 24,
//                         fontWeight: FontWeight.w500,
//                         color: const Color(0xFF2F2F34),
//                       ),
//                     ),
//                     const SizedBox(height: 8.0),
//                     const Text(
//                       'We\'ll send you a text with a verification code',
//                       style: TextStyle(fontSize: 16, color: Color(0xFF3E3E44)),
//                     ),
//                     const SizedBox(height: 40.0),
//                     _buildPhoneInput(),
//                   ],
//                 ),
//               ),
//             ),
//             _buildFooter(context),
//           ],
//         ),
//       ),
//     );
//   }

//   /// Builds the side-by-side phone input fields.
//   Widget _buildPhoneInput() {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // Country Code Dropdown Field
//         SizedBox(
//           width: 83, // Set a fixed width for the country code field
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Country',
//                 style: GoogleFonts.poppins(
//                   color: const Color(0xFF505057),
//                   fontSize: 12,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               const SizedBox(height: 4),
//               DropdownButtonFormField<String>(
//                 value: _selectedCountryCode,
//                 decoration: _inputDecoration(),
//                 items: _countryCodes.map((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//                 onChanged: (newValue) {
//                   setState(() {
//                     _selectedCountryCode = newValue;
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//         const SizedBox(width: 12), // Space between the two fields
//         // Phone Number Text Field
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Enter Phone Number',
//                 style: GoogleFonts.poppins(
//                   color: const Color(0xFF505057),
//                   fontSize: 12,
//                 ),
//               ),
//               const SizedBox(height: 4),
//               TextFormField(
//                 initialValue: '8765342345',
//                 keyboardType: TextInputType.phone,
//                 decoration: _inputDecoration(),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   /// A helper method to create consistent styling for the input fields.
//   InputDecoration _inputDecoration() {
//     return InputDecoration(
//       filled: true,
//       fillColor: Colors.white, // White background for the input area
//       contentPadding: const EdgeInsets.symmetric(
//         horizontal: 12.0,
//         vertical: 16.0,
//       ),
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8.0),
//         borderSide: BorderSide(color: Colors.grey[300]!),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8.0),
//         borderSide: BorderSide(color: Colors.grey[300]!),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8.0),
//         borderSide: const BorderSide(color: Color(0xFF79747E), width: 1.5),
//       ),
//     );
//   }

//   /// Builds the fixed footer with terms text and the button.
//   Widget _buildFooter(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 24.0, top: 16.0),
//       child: Column(
//         children: [
//           RichText(
//             textAlign: TextAlign.center,
//             text: TextSpan(
//               style: GoogleFonts.poppins(color: Colors.grey[600], fontSize: 12),
//               children: [
//                 const TextSpan(text: 'By Continuing, you agree of our '),
//                 TextSpan(
//                   text: 'T&C',
//                   style: const TextStyle(
//                     color: Colors.purple,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   recognizer: TapGestureRecognizer()
//                     ..onTap = () {
//                       /* Handle T&C tap */
//                     },
//                 ),
//                 const TextSpan(text: ' and '),
//                 TextSpan(
//                   text: 'Privacy Policy',
//                   style: const TextStyle(
//                     color: Colors.purple,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   recognizer: TapGestureRecognizer()
//                     ..onTap = () {
//                       /* Handle Privacy Policy tap */
//                     },
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 16.0),
//           CustomButton(
//             text: 'Get Code',
//             onPressed: () {
//               /* Handle 'Get Code' button press */
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/widgets/custombutton.dart'; // Make sure this path is correct

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _selectedCountryCode = '+91';
  final List<String> _countryCodes = ['+91', '+1', '+44', '+61'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F8F9),
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16.0),
                    Text(
                      'Enter Your Phone Number',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF2F2F34),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'We\'ll send you a text with a verification code',
                      style: TextStyle(fontSize: 16, color: Color(0xFF3E3E44)),
                    ),
                    const SizedBox(height: 40.0),
                    _buildPhoneInput(),
                  ],
                ),
              ),
            ),
            _buildFooter(context),
          ],
        ),
      ),
    );
  }

  /// Builds the side-by-side phone input fields with the overflow fix.
  Widget _buildPhoneInput() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Country Code Dropdown Field
        SizedBox(
          // FIX 1: Increased width slightly to give the dropdown enough space.
          width: 95,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Country',
                style: GoogleFonts.poppins(
                  color: const Color(0xFF505057),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              DropdownButtonFormField<String>(
                value: _selectedCountryCode,
                // Using a custom decoration specifically for the dropdown
                decoration: _inputDecoration(isDropdown: true),
                items: _countryCodes.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _selectedCountryCode = newValue;
                  });
                },
              ),
            ],
          ),
        ),
        const SizedBox(width: 12),
        // Phone Number Text Field
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter Phone Number',
                style: GoogleFonts.poppins(
                  color: const Color(0xFF505057),
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 4),
              TextFormField(
                initialValue: '8765342345',
                keyboardType: TextInputType.phone,
                decoration: _inputDecoration(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// A helper method for input styling. Now handles the dropdown case.
  InputDecoration _inputDecoration({bool isDropdown = false}) {
    return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      // FIX 2: Reduced horizontal padding for the dropdown to make more room.
      contentPadding: EdgeInsets.symmetric(
        horizontal: isDropdown ? 8.0 : 12.0,
        vertical: 16.0,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: Colors.grey[300]!),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: Colors.grey[300]!),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: Color(0xFF79747E), width: 1.5),
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0, top: 16.0),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: GoogleFonts.poppins(
                color: Color(0xFF505057),
                fontSize: 12,
              ),
              children: [
                const TextSpan(text: 'By Continuing, you agree of our '),
                TextSpan(
                  text: 'T&C',
                  style: const TextStyle(
                    color: Color(0xFF7A00F5),
                    fontWeight: FontWeight.w600,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      /* Handle T&C tap */
                    },
                ),
                const TextSpan(text: ' and '),
                TextSpan(
                  text: 'Privacy Policy',
                  style: const TextStyle(
                    color: Color(0xFF7A00F5),
                    fontWeight: FontWeight.w600,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      /* Handle Privacy Policy tap */
                    },
                ),
              ],
            ),
          ),
          const SizedBox(height: 24.0),
          CustomButton(
            text: 'Get Code',
            onPressed: () {
              /* Handle 'Get Code' button press */
            },
          ),
        ],
      ),
    );
  }
}
