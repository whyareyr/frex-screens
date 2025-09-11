import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/widgets/custombutton.dart';
import 'package:my_first_app/widgets/custominputfield.dart';

class NewUserRegistration extends StatefulWidget {
  const NewUserRegistration({super.key});

  @override
  State<NewUserRegistration> createState() => _NewUserRegistrationState();
}

class _NewUserRegistrationState extends State<NewUserRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F8F9),
      appBar: AppBar(
        backgroundColor: Color(0xFFF7F8F9),
        elevation: 0,
        // You can add leading back arrow icon if needed
        // leading: Icon(Icons.arrow_back, color: Colors.black),
      ),
      // The body is now a Column to allow for separating the scroll view and the button
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // This Expanded widget makes the SingleChildScrollView take up all available space
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New User Registration',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF2F2F34),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Complete registration, link your bank account and you are ready to go',
                      style: TextStyle(fontSize: 16, color: Color(0xFF3E3E44)),
                    ),
                    const SizedBox(height: 40.0),

                    // Form Fields
                    const CustomInputField(
                      labelText: 'First Name',
                      hintText: 'Niel',
                    ),
                    const SizedBox(height: 16.0),
                    const CustomInputField(
                      labelText: 'Last Name',
                      hintText: 'Mathew',
                    ),
                    const SizedBox(height: 16.0),
                    const CustomInputField(
                      labelText: 'Email ID',
                      hintText: 'Neil@gmail.com',
                    ),
                    // The large space and the button that were here are now moved outside the scroll view.
                  ],
                ),
              ),
            ),

            // The Submit button is now outside the scroll view and at the bottom of the screen.
            // Padding(
            //   padding: const EdgeInsets.only(
            //     bottom: 24.0,
            //     top: 16.0,
            //   ), // Padding to lift it from the very bottom
            //   child: SizedBox(
            //     width: double.infinity,
            //     child: ElevatedButton(
            //       onPressed: () {
            //         // Handle form submission logic
            //       },
            //       style: ElevatedButton.styleFrom(
            //         backgroundColor: Color(0xFFFFE900),
            //         padding: const EdgeInsets.symmetric(vertical: 16.0),
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(8.0),
            //         ),
            //         elevation: 0,
            //       ),
            //       child: Text(
            //         'Submit',
            //         style: GoogleFonts.poppins(
            //           fontSize: 16,
            //           fontWeight: FontWeight.w600,
            //           color: const Color(0xFF2F2F34),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
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
