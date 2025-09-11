// // Recipient Bank Account, 24PX, 500 Weight, #2F2F34
// // Please ensure you are the primary owner of this bank account. 16 PX, 400, #3E3E44
// // Account Holder Name, 12 PX, 500, #505057

// // Create a widget for fill in the box and heading above it

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:my_first_app/widgets/custominputfield.dart';

// // Assume CustomInputField is in another file and imported here
// // import 'custom_input_field.dart';

// class RecipientBankAccountPage extends StatelessWidget {
//   RecipientBankAccountPage({super.key});

//   final List<String> bankNames = [
//     'HDFC Bank',
//     'ICICI Bank',
//     'Axis Bank',
//     'State Bank of India',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         // You can add leading back arrow icon if needed
//         // leading: Icon(Icons.arrow_back, color: Colors.black),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 24.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Recipient Bank Account',
//                 style: GoogleFonts.poppins(
//                   fontSize: 24,
//                   fontWeight: FontWeight.w500,
//                   color: const Color(0xFF2F2F34),
//                 ),
//               ),
//               const SizedBox(height: 8.0),
//               Text(
//                 'Please ensure you are the primary owner of this bank account.',
//                 style: TextStyle(fontSize: 16, color: Color(0xFF3E3E44)),
//               ),
//               const SizedBox(height: 32.0),

//               // Form Fields
//               const CustomInputField(
//                 labelText: 'Account Holder Name',
//                 hintText: 'Niel Mathew',
//               ),
//               const SizedBox(height: 24.0),

//               CustomInputField(
//                 labelText: 'Search Bank Name',
//                 hintText: 'Select Bank Name',
//                 isDropdown: true,
//                 dropdownItems: bankNames,
//               ),
//               const SizedBox(height: 16.0),

//               const CustomInputField(
//                 labelText: 'Bank Account Number',
//                 hintText: 'Enter Account Number',
//               ),
//               const SizedBox(height: 16.0),

//               const CustomInputField(
//                 labelText: 'IFSC Code',
//                 hintText: 'Enter IFSC Code',
//               ),
//               const SizedBox(height: 16.0),

//               const CustomInputField(
//                 labelText: 'Account Type',
//                 hintText: 'Savings',
//               ),
//               const SizedBox(height: 16.0),

//               const CustomInputField(labelText: 'Bank Country', hintText: 'IN'),
//               const SizedBox(height: 16.0),

//               const CustomInputField(
//                 labelText: 'Currency', // Corrected from image
//                 hintText: 'INR',
//               ),
//               const SizedBox(height: 40.0),

//               // Submit Button
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Handle form submission logic
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.yellow[600],
//                     padding: const EdgeInsets.symmetric(vertical: 16.0),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     elevation: 0,
//                   ),
//                   child: Text(
//                     'Submit',
//                     style: GoogleFonts.poppins(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: Color(0xFF2F2F34),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 24.0),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/widgets/custombutton.dart'; // Assuming you save the button here
import 'package:my_first_app/widgets/custominputfield.dart';

class RecipientBankAccountPage extends StatelessWidget {
  RecipientBankAccountPage({super.key});

  final List<String> bankNames = [
    'HDFC Bank',
    'ICICI Bank',
    'Axis Bank',
    'State Bank of India',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F8F9),
      appBar: AppBar(
        backgroundColor: Color(0xFFF7F8F9),
        elevation: 0,
        // Kept your original blank AppBar
        // leading: Icon(Icons.arrow_back, color: Colors.black),
      ),
      // The body is wrapped in a Column to separate the content and the button
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // This Expanded widget allows the scrollable content to fill the space
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // All your original text and fields are preserved here
                    Text(
                      'Recipient Bank Account',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF2F2F34),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Please ensure you are the primary owner of this bank account.',
                      style: TextStyle(fontSize: 16, color: Color(0xFF3E3E44)),
                    ),
                    const SizedBox(height: 32.0),
                    const CustomInputField(
                      labelText: 'Account Holder Name',
                      hintText: 'Niel Mathew',
                    ),
                    const SizedBox(height: 24.0),
                    CustomInputField(
                      labelText: 'Search Bank Name',
                      hintText: 'Select Bank Name',
                      isDropdown: true,
                      dropdownItems: bankNames,
                    ),
                    const SizedBox(height: 16.0),
                    const CustomInputField(
                      labelText: 'Bank Account Number',
                      hintText: 'Enter Account Number',
                    ),
                    const SizedBox(height: 16.0),
                    const CustomInputField(
                      labelText: 'IFSC Code',
                      hintText: 'Enter IFSC Code',
                    ),
                    const SizedBox(height: 16.0),
                    const CustomInputField(
                      labelText: 'Account Type',
                      hintText: 'Savings',
                    ),
                    const SizedBox(height: 16.0),
                    const CustomInputField(
                      labelText: 'Bank Country',
                      hintText: 'IN',
                    ),
                    const SizedBox(height: 16.0),
                    const CustomInputField(
                      labelText: 'Currency',
                      hintText: 'INR',
                    ),
                  ],
                ),
              ),
            ),

            // The button is now outside the scroll view, anchored at the bottom
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 24.0),
              child: CustomButton(
                text: 'Submit',
                onPressed: () {
                  // Handle form submission logic
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
