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

// ...existing code...
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
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _goToNextPage() {
    if (_currentPage < 2) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goToPage(int page) {
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
        title: Text(
          'Welcome Neil',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ),
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentPage = index;
            });
          },
          children: [
            // PAGE 1: Welcome and Transfer Rates
            _buildWelcomePage(),

            // PAGE 2: Transfer Instructions
            _buildTransferInstructionsPage(),

            // PAGE 3: Virtual Account Details
            _buildVirtualAccountDetailsPage(),
          ],
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Account"),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: "Transactions",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline),
            label: "Help",
          ),
        ],
      ),
    );
  }

  Widget _buildWelcomePage() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenHeight = constraints.maxHeight;
        final screenWidth = constraints.maxWidth;

        // Calculate responsive spacing based on screen size
        final isSmallScreen = screenHeight < 700;
        final isMediumScreen = screenHeight >= 700 && screenHeight < 900;

        final horizontalPadding = screenWidth < 400 ? 12.0 : 16.0;
        final verticalSpacing = isSmallScreen
            ? 12.0
            : (isMediumScreen ? 16.0 : 20.0);

        return Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: _buildWelcomeSection(isSmallScreen: isSmallScreen),
              ),
              SizedBox(height: verticalSpacing),
              _buildTransferButton(),
              SizedBox(height: verticalSpacing),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTransferInstructionsPage() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenHeight = constraints.maxHeight;
        final screenWidth = constraints.maxWidth;

        // Calculate responsive spacing based on screen size
        final isSmallScreen = screenHeight < 700;
        final isMediumScreen = screenHeight >= 700 && screenHeight < 900;

        final horizontalPadding = screenWidth < 400 ? 12.0 : 16.0;
        final verticalSpacing = isSmallScreen
            ? 12.0
            : (isMediumScreen ? 16.0 : 20.0);

        return Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: _buildTransferInstructionsSection(
                  isSmallScreen: isSmallScreen,
                ),
              ),
              SizedBox(height: verticalSpacing),
              _buildGetVirtualAccountButton(),
              SizedBox(height: verticalSpacing),
            ],
          ),
        );
      },
    );
  }

  Widget _buildVirtualAccountDetailsPage() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenHeight = constraints.maxHeight;
        final screenWidth = constraints.maxWidth;

        // Calculate responsive spacing based on screen size
        final isSmallScreen = screenHeight < 700;
        final isMediumScreen = screenHeight >= 700 && screenHeight < 900;

        final horizontalPadding = screenWidth < 400 ? 12.0 : 16.0;
        final verticalSpacing = isSmallScreen
            ? 12.0
            : (isMediumScreen ? 16.0 : 20.0);

        return Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: _buildVirtualAccountDetailsSection(
                  isSmallScreen: isSmallScreen,
                ),
              ),
              SizedBox(height: verticalSpacing),
            ],
          ),
        );
      },
    );
  }

  Widget _buildWelcomeSection({bool isSmallScreen = false}) {
    final titleFontSize = isSmallScreen ? 14.0 : 16.0;
    final cardFontSize = isSmallScreen ? 16.0 : 18.0;
    final amountFontSize = isSmallScreen ? 20.0 : 22.0;
    final frexFontSize = isSmallScreen ? 24.0 : 28.0;
    final frexRateFontSize = isSmallScreen ? 20.0 : 24.0;
    final platformFontSize = isSmallScreen ? 16.0 : 18.0;
    final platformDiffFontSize = isSmallScreen ? 12.0 : 14.0;
    final updatedFontSize = isSmallScreen ? 12.0 : 14.0;

    final verticalSpacing = isSmallScreen ? 6.0 : 10.0;
    final cardSpacing = isSmallScreen ? 12.0 : 16.0;
    final sectionSpacing = isSmallScreen ? 16.0 : 24.0;
    final platformSpacing = isSmallScreen ? 6.0 : 8.0;
    final logoHeight = isSmallScreen ? 32.0 : 42.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // "Get The Best Rates With Frex"
        Text(
          "Get The Best Rates With Frex",
          style: GoogleFonts.poppins(
            fontSize: titleFontSize,
            fontWeight: FontWeight.w500,
            height: 1.6,
            color: const Color(0xFF2F2F34),
          ),
        ),
        SizedBox(height: verticalSpacing),
        // USD Input Card
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: isSmallScreen ? 14 : 18,
          ),
          child: Row(
            children: [
              // Flag and USD
              Row(
                children: [
                  Image.asset(
                    'assets/images/flag_us.png',
                    width: isSmallScreen ? 24 : 28,
                    height: isSmallScreen ? 24 : 28,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "USD",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: cardFontSize,
                      height: 1.6,
                      color: const Color(0xFF505057),
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
                  fontSize: amountFontSize,
                  color: const Color(0xFF2F2F34),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: cardSpacing),
        // Frex Rate Card
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: isSmallScreen ? 14 : 18,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "frex",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: frexFontSize,
                  color: const Color(0xFF9B51E0),
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                "₹91,823.32",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: frexRateFontSize,
                  color: const Color(0xFF7A00F5),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: sectionSpacing),
        // Live Transaction Rates Title
        Text(
          "Live Transaction Rates On Other Platforms",
          style: GoogleFonts.poppins(
            fontSize: titleFontSize,
            height: 1.6,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF2F2F34),
          ),
        ),
        const SizedBox(height: 7),
        // Google
        _platformRateTile(
          logo: 'assets/images/google_logo.png',
          rate: '₹88,000.23',
          diff: '-₹3,000.21',
          height: logoHeight,
          isSmallScreen: isSmallScreen,
        ),
        SizedBox(height: platformSpacing),
        // Xoom
        _platformRateTile(
          logo: 'assets/images/xoom_logo.png',
          rate: '₹88,000.23',
          diff: '-₹3,000.21',
          height: logoHeight,
          isSmallScreen: isSmallScreen,
        ),
        SizedBox(height: platformSpacing),
        // Wise
        _platformRateTile(
          logo: 'assets/images/wise_logo.png',
          rate: '₹88,000.23',
          diff: '-₹3,000.21',
          height: logoHeight,
          isSmallScreen: isSmallScreen,
        ),
        SizedBox(height: platformSpacing),
        // Remitly
        _platformRateTile(
          logo: 'assets/images/remitly_logo.png',
          rate: '₹88,000.23',
          diff: '-₹3,000.21',
          height: logoHeight,
          isSmallScreen: isSmallScreen,
        ),
        SizedBox(height: isSmallScreen ? 12 : 18),
        // Updated At
        Text(
          "Updated At XX:XX AM On DD-MM-YYYY",
          style: GoogleFonts.poppins(
            fontSize: updatedFontSize,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }

  Widget _buildTransferButton() {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () => _goToPage(1),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFFD700),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        child: Text(
          'Transfer',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildTransferInstructionsSection({bool isSmallScreen = false}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Transfer Directly From Your US Bank Account",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              height: 1.6,
              color: const Color(0xFF2F2F34),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          // Step 1
          _buildStep(
            stepNumber: "Step 1",
            description:
                "We've created a permanent Frex Virtual Account for you.",
          ),
          const SizedBox(height: 24),
          // Step 2
          _buildStep(
            stepNumber: "Step 2",
            description:
                "Transfer funds from your US bank account to your Frex Virtual Account",
          ),
          const SizedBox(height: 24),
          // Step 3
          _buildStep(
            stepNumber: "Step 3",
            description:
                "Once funds arrive in your Virtual Account, it's instantly converted to INR and transferred to your India bank account",
          ),
        ],
      ),
    );
  }

  Widget _buildStep({required String stepNumber, required String description}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          stepNumber,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF9B51E0),
          ),
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color(0xFFFFF8DC),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            description,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: const Color(0xFF2F2F34),
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildGetVirtualAccountButton() {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () => _goToPage(2),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFFD700),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        child: Text(
          'Get Virtual Account Details',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildVirtualAccountDetailsSection({bool isSmallScreen = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Virtual Account Details",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF2F2F34),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        // Account Details Card
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              _buildDetailRow('Account Holder Name:', 'Lorem Ipsum'),
              const SizedBox(height: 16),
              _buildDetailRow('Account Number:', '8765436783432'),
              const SizedBox(height: 16),
              _buildDetailRow('Routing Number:', 'SDF243242'),
              const SizedBox(height: 16),
              _buildDetailRow('Bank Name:', 'Lorem Ipsum'),
              const SizedBox(height: 16),
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
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        // Instruction Card
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFFFFF8DC),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            "Simply add this account as a payee in your U.S. bank account. We recommend using ACH instant for instant transfers.",
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: const Color(0xFF2F2F34),
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget _buildDetailRow(String title, String value, {Widget? valueWidget}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: Colors.grey[600],
            fontWeight: FontWeight.w500,
          ),
        ),
        valueWidget ??
            Text(
              value,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF2F2F34),
              ),
            ),
      ],
    );
  }

  Widget _platformRateTile({
    required String logo,
    required String rate,
    required String diff,
    required double height,
    bool isSmallScreen = false,
  }) {
    final platformFontSize = isSmallScreen ? 16.0 : 18.0;
    final platformDiffFontSize = isSmallScreen ? 12.0 : 14.0;
    final verticalPadding = isSmallScreen ? 8.0 : 12.0;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: verticalPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(logo, height: height, fit: BoxFit.contain),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  rate,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: platformFontSize,
                    color: const Color(0xFF505057),
                  ),
                ),
                Text(
                  diff,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: platformDiffFontSize,
                    color: const Color(0xFFCF0F00),
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
