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
      // CORRECTED: Using the neutral light grey from the design
      backgroundColor: const Color(0xFFF2F4F7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildGreetingSection(),
                const SizedBox(height: 24),
                _buildAccountDetailsSection(),
                const SizedBox(height: 24),
                _buildHowItWorksSection(),
                const SizedBox(height: 24),
                _buildLiveRateSection(),
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
            icon: Icon(Icons.account_balance),
            label: 'Account',
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

  // Section 1: Greeting
  Widget _buildGreetingSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello Lorem Ipsum',
          style: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Text(
          'Welcome to Frex',
          style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[600]),
        ),
      ],
    );
  }

  // Section 2: Account Details
  Widget _buildAccountDetailsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Frex account details:',
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 12),
        Card(
          // CORRECTED: Properties are now set directly on the Card
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          // CORRECTED: Padding is applied via a Padding widget as the Card's child
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _buildDetailRow('Account Holder Name:', 'Lorem Ipsum'),
                _buildDetailRow('Account Number:', '8765436783432'),
                _buildDetailRow('Routing Number:', 'SDF243242'),
                _buildDetailRow('Bank Name:', 'Lorem Ipsum'),
                _buildDetailRow(
                  'Status:',
                  'Active',
                  valueWidget: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Active',
                      style: GoogleFonts.poppins(
                        color: Colors.green[800],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // Section 3: How it works
  Widget _buildHowItWorksSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'How it works:',
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 12),
        Card(
          // CORRECTED: Properties set directly on the Card
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          // CORRECTED: Padding is applied via a Padding widget
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _buildStepRow(
                  '1',
                  'Add your Frex Virtual Account as a payee in your U.S. bank account',
                ),
                const Divider(height: 24),
                _buildStepRow(
                  '2',
                  'Transfer USD from your U.S. bank account to your Frex Virtual Account',
                ),
                const Divider(height: 24),
                _buildStepRow(
                  '3',
                  'As soon as the funds arrive, Frex converts them at the live Google rate and transfers INR directly to your Indian bank account',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // Section 4: Live Transaction Rate
  Widget _buildLiveRateSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Frex Live Transaction Rate',
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 12),
        Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                _buildCurrencyCard('US Dollar', 'USD', '100', isInput: true),
                const SizedBox(height: 8),
                _buildCurrencyCard('Indian Rupees', 'INR', '8,000'),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey[300]!, width: 1),
              ),
              child: const Icon(Icons.swap_vert, color: Colors.black54),
            ),
          ],
        ),
      ],
    );
  }

  // Helper widgets (no changes needed here)
  Widget _buildDetailRow(String title, String value, {Widget? valueWidget}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: GoogleFonts.poppins(color: Colors.grey[600])),
          valueWidget ??
              Text(
                value,
                style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
              ),
        ],
      ),
    );
  }

  Widget _buildStepRow(String number, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          number,
          style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.grey[700],
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCurrencyCard(
    String currency,
    String code,
    String amount, {
    bool isInput = false,
  }) {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currency,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(code, style: GoogleFonts.poppins(color: Colors.grey[600])),
              ],
            ),
            Text(
              amount,
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: isInput ? Colors.black : Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
