import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BridgeScreen extends StatelessWidget {
  const BridgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // We set the background color for the entire screen here.
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8F9),
      appBar: AppBar(
        backgroundColor: Colors.white, // Matches the top container
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          // 1. Top White Section
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Replace with your security icon asset
                Image.asset(
                  'assets/images/security.png',
                  height: 40,
                  width: 40,
                ),
                const SizedBox(height: 16),
                Text(
                  'Frex uses Bridge, a Stripe company, to securely move funds',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF2F2F34),
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),

          // 2. Bottom Section with Centered Card
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Image.asset(
                  'assets/images/bridge.png', // This is your loading indicator
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
