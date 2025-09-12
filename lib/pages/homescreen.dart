// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF1F1F2),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 _buildGreetingSection(),
//                 const SizedBox(height: 24),
//                 _buildAccountDetailsSection(),
//                 const SizedBox(height: 24),
//                 _buildHowItWorksSection(),
//                 const SizedBox(height: 24),
//                 _buildLiveRateSection(),
//               ],
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.grey[600],
//         selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_balance),
//             label: 'Account',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.receipt_long),
//             label: 'Transactions',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline),
//             label: 'Profile',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.headset_mic_outlined),
//             label: 'Help',
//           ),
//         ],
//       ),
//     );
//   }

//   // Section 1: Greeting
//   Widget _buildGreetingSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Hello Lorem Ipsum',
//           style: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold),
//         ),
//         Text(
//           'Welcome to Frex',
//           style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[600]),
//         ),
//       ],
//     );
//   }

//   // Section 2: Account Details
//   Widget _buildAccountDetailsSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Your Frex account details:',
//           style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
//         ),
//         const SizedBox(height: 12),
//         Card(
//           elevation: 0,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//           ),
//           child: Container(
//             color: Color(0xFFFFFFFF),

//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 _buildDetailRow('Account Holder Name:', 'Lorem Ipsum'),

//                 _buildDetailRow('Account Number:', '8765436783432'),
//                 _buildDetailRow('Routing Number:', 'SDF243242'),
//                 _buildDetailRow('Bank Name:', 'Lorem Ipsum'),

//                 _buildDetailRow(
//                   'Status:',
//                   'Active',
//                   valueWidget: Container(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 12,
//                       vertical: 4,
//                     ),
//                     decoration: BoxDecoration(
//                       color: Colors.green.withOpacity(0.15),
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Text(
//                       'Active',
//                       style: GoogleFonts.poppins(
//                         color: Colors.green[800],
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   // Section 3: How it works
//   Widget _buildHowItWorksSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'How it works:',
//           style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
//         ),
//         const SizedBox(height: 12),
//         Card(
//           elevation: 0,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//           ),
//           child: Container(
//             color: Color(0xFFFFFFFF),

//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 _buildStepRow(
//                   '1',
//                   'Add your Frex Virtual Account as a payee in your U.S. bank account',
//                 ),
//                 const Divider(height: 24),
//                 _buildStepRow(
//                   '2',
//                   'Transfer USD from your U.S. bank account to your Frex Virtual Account',
//                 ),
//                 const Divider(height: 24),
//                 _buildStepRow(
//                   '3',
//                   'As soon as the funds arrive, Frex converts them at the live Google rate and transfers INR directly to your Indian bank account',
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   // Section 4: Live Transaction Rate
//   Widget _buildLiveRateSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Frex Live Transaction Rate',
//           style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
//         ),
//         const SizedBox(height: 12),
//         Stack(
//           alignment: Alignment.center,
//           children: [
//             Column(
//               children: [
//                 _buildCurrencyCard('US Dollar', 'USD', '100', isInput: true),
//                 const SizedBox(height: 8),
//                 _buildCurrencyCard('Indian Rupees', 'INR', '8,000'),
//               ],
//             ),
//             Container(
//               padding: const EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 shape: BoxShape.circle,
//                 border: Border.all(color: Colors.grey[300]!, width: 1),
//               ),
//               child: const Icon(Icons.swap_vert, color: Colors.black54),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   // Helper widgets
//   Widget _buildDetailRow(String title, String value, {Widget? valueWidget}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(title, style: GoogleFonts.poppins(color: Colors.grey[600])),
//           valueWidget ??
//               Text(
//                 value,
//                 style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
//               ),
//         ],
//       ),
//     );
//   }

//   Widget _buildStepRow(String number, String text) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           number,
//           style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(width: 16),
//         Expanded(
//           child: Text(
//             text,
//             style: GoogleFonts.poppins(
//               fontSize: 14,
//               color: Colors.grey[700],
//               height: 1.4,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildCurrencyCard(
//     String currency,
//     String code,
//     String amount, {
//     bool isInput = false,
//   }) {
//     return Card(
//       elevation: 0,
//       color: Color(0xFFFFFFFF),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   currency,
//                   style: GoogleFonts.poppins(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(code, style: GoogleFonts.poppins(color: Colors.grey[600])),
//               ],
//             ),
//             Text(
//               amount,
//               style: GoogleFonts.poppins(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: isInput ? Colors.black : Colors.grey[800],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // CORRECTED: Using the neutral light grey from the design
//       backgroundColor: const Color(0xFFF2F4F7),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 _buildGreetingSection(),
//                 const SizedBox(height: 24),
//                 _buildAccountDetailsSection(),
//                 const SizedBox(height: 24),
//                 _buildHowItWorksSection(),
//                 const SizedBox(height: 24),
//                 _buildLiveRateSection(),
//               ],
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.grey[600],
//         selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_balance),
//             label: 'Account',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.receipt_long),
//             label: 'Transactions',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline),
//             label: 'Profile',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.headset_mic_outlined),
//             label: 'Help',
//           ),
//         ],
//       ),
//     );
//   }

//   // Section 1: Greeting
//   Widget _buildGreetingSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Hello Lorem Ipsum',
//           style: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold),
//         ),
//         Text(
//           'Welcome to Frex',
//           style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[600]),
//         ),
//       ],
//     );
//   }

//   // Section 2: Account Details
//   Widget _buildAccountDetailsSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Your Frex account details:',
//           style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
//         ),
//         const SizedBox(height: 12),
//         Card(
//           // CORRECTED: Properties are now set directly on the Card
//           color: Colors.white,
//           elevation: 0,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//           ),
//           // CORRECTED: Padding is applied via a Padding widget as the Card's child
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 _buildDetailRow('Account Holder Name:', 'Lorem Ipsum'),
//                 _buildDetailRow('Account Number:', '8765436783432'),
//                 _buildDetailRow('Routing Number:', 'SDF243242'),
//                 _buildDetailRow('Bank Name:', 'Lorem Ipsum'),
//                 _buildDetailRow(
//                   'Status:',
//                   'Active',
//                   valueWidget: Container(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 12,
//                       vertical: 4,
//                     ),
//                     decoration: BoxDecoration(
//                       color: Colors.green.withOpacity(0.15),
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Text(
//                       'Active',
//                       style: GoogleFonts.poppins(
//                         color: Colors.green[800],
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   // Section 3: How it works
//   Widget _buildHowItWorksSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'How it works:',
//           style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
//         ),
//         const SizedBox(height: 12),
//         Card(
//           // CORRECTED: Properties set directly on the Card
//           color: Colors.white,
//           elevation: 0,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//           ),
//           // CORRECTED: Padding is applied via a Padding widget
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 _buildStepRow(
//                   '1',
//                   'Add your Frex Virtual Account as a payee in your U.S. bank account',
//                 ),
//                 const Divider(height: 24),
//                 _buildStepRow(
//                   '2',
//                   'Transfer USD from your U.S. bank account to your Frex Virtual Account',
//                 ),
//                 const Divider(height: 24),
//                 _buildStepRow(
//                   '3',
//                   'As soon as the funds arrive, Frex converts them at the live Google rate and transfers INR directly to your Indian bank account',
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   // Section 4: Live Transaction Rate
//   Widget _buildLiveRateSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Frex Live Transaction Rate',
//           style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
//         ),
//         const SizedBox(height: 12),
//         Stack(
//           alignment: Alignment.center,
//           children: [
//             Column(
//               children: [
//                 _buildCurrencyCard('US Dollar', 'USD', '100', isInput: true),
//                 const SizedBox(height: 8),
//                 _buildCurrencyCard('Indian Rupees', 'INR', '8,000'),
//               ],
//             ),
//             Container(
//               padding: const EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 shape: BoxShape.circle,
//                 border: Border.all(color: Colors.grey[300]!, width: 1),
//               ),
//               child: const Icon(Icons.swap_vert, color: Colors.black54),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   // Helper widgets (no changes needed here)
//   Widget _buildDetailRow(String title, String value, {Widget? valueWidget}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(title, style: GoogleFonts.poppins(color: Colors.grey[600])),
//           valueWidget ??
//               Text(
//                 value,
//                 style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
//               ),
//         ],
//       ),
//     );
//   }

//   Widget _buildStepRow(String number, String text) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           number,
//           style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(width: 16),
//         Expanded(
//           child: Text(
//             text,
//             style: GoogleFonts.poppins(
//               fontSize: 14,
//               color: Colors.grey[700],
//               height: 1.4,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildCurrencyCard(
//     String currency,
//     String code,
//     String amount, {
//     bool isInput = false,
//   }) {
//     return Card(
//       color: Colors.white,
//       elevation: 0,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   currency,
//                   style: GoogleFonts.poppins(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(code, style: GoogleFonts.poppins(color: Colors.grey[600])),
//               ],
//             ),
//             Text(
//               amount,
//               style: GoogleFonts.poppins(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: isInput ? Colors.black : Colors.grey[800],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8F9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top spacing
                const SizedBox(height: 8),
                // Welcome
                Text(
                  "Welcome Niel",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF2F2F34),
                  ),
                ),
                const SizedBox(height: 20),
                // "Get The Best Rates With Frex"
                Text(
                  "Get The Best Rates With Frex",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF2F2F34),
                  ),
                ),
                const SizedBox(height: 10),
                // USD Input Card
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  child: Row(
                    children: [
                      // Flag and USD
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/flag_us.png',
                            width: 28,
                            height: 28,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "USD",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: const Color(0xFF2F2F34),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      // Amount
                      Text(
                        "\$1000",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: const Color(0xFF2F2F34),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                // Frex Rate Card
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 18,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "frex",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: const Color(0xFF9B51E0),
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        "₹91,823.32",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: const Color(0xFF9B51E0),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // Live Transaction Rates Title
                Text(
                  "Live Transaction Rates On Other Platforms",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF2F2F34),
                  ),
                ),
                const SizedBox(height: 10),
                // Google
                _platformRateTile(
                  logo: 'assets/images/google_logo.png',
                  rate: '₹88,000.23',
                  diff: '-₹3,000.21',
                  height: 32,
                ),
                const SizedBox(height: 8),
                // Xoom
                _platformRateTile(
                  logo: 'assets/images/xoom_logo.png',
                  rate: '₹88,000.23',
                  diff: '-₹3,000.21',
                  height: 42,
                ),
                const SizedBox(height: 8),
                // Wise
                _platformRateTile(
                  logo: 'assets/images/wise_logo.png',
                  rate: '₹88,000.23',
                  diff: '-₹3,000.21',
                  height: 32,
                ),
                const SizedBox(height: 8),
                // Remitly
                _platformRateTile(
                  logo: 'assets/images/remitly_logo.png',
                  rate: '₹88,000.23',
                  diff: '-₹3,000.21',
                  height: 32,
                ),
                const SizedBox(height: 18),
                // Updated At
                Text(
                  "Updated At XX:XX AM On DD-MM-YYYY",
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[600],
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.headset_mic_outlined),
            label: 'Help',
          ),
        ],
      ),
    );
  }

  //   Widget _platformRateTile({
  //     required String logo,
  //     required String name,
  //     required String rate,
  //     required String diff,
  //     double logoWidth = 30,
  //   }) {
  //     return Container(
  //       decoration: BoxDecoration(
  //         color: Colors.white,
  //         borderRadius: BorderRadius.circular(12),
  //       ),
  //       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           Image.asset(logo, width: logoWidth, height: 24, fit: BoxFit.contain),
  //           const SizedBox(width: 12),

  //           Column(
  //             crossAxisAlignment: CrossAxisAlignment.end,
  //             children: [
  //               Text(
  //                 rate,
  //                 style: GoogleFonts.poppins(
  //                   fontWeight: FontWeight.w600,
  //                   fontSize: 15,
  //                   color: const Color(0xFF2F2F34),
  //                 ),
  //               ),
  //               Text(
  //                 diff,
  //                 style: GoogleFonts.poppins(
  //                   fontWeight: FontWeight.w500,
  //                   fontSize: 13,
  //                   color: const Color(0xFFFF3B30),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ],
  //       ),
  //     );

  //   }
  // }
  Widget _platformRateTile({
    required String logo,
    required String rate,
    required String diff,
    required double height,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            logo,
            height: height,
            // Match Figma
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 16), // Figma-like spacing
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  rate,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: const Color(0xFF2F2F34),
                  ),
                ),
                Text(
                  diff,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: const Color(0xFFFF3B30),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
