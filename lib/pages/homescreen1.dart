import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

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

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top spacing
                
                const SizedBox(height: 20),
                // "Get The Best Rates With Frex"
                Text(
                  "Get The Best Rates With Frex",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.6,
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
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
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
                          fontSize: 28,
                          color: const Color(0xFF9B51E0),
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        "₹91,823.32",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: const Color(0xFF7A00F5),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                // Live Transaction Rates Title
                Text(
                  "Live Transaction Rates On Other Platforms",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
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
                  height: 42,
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
                  height: 42,
                ),
                const SizedBox(height: 8),
                // Remitly
                _platformRateTile(
                  logo: 'assets/images/remitly_logo.png',
                  rate: '₹88,000.23',
                  diff: '-₹3,000.21',
                  height: 42,
                ),
                const SizedBox(height: 18),
                // Updated At
                Text(
                  "Updated At XX:XX AM On DD-MM-YYYY",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.grey[700],
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
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: const Color(0xFF505057),
                  ),
                ),
                Text(
                  diff,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
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
