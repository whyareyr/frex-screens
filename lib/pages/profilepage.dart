import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Info Card
            const SizedBox(height: 29),

            Card(
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.purple[100],
                  child: Text(
                    'N',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                title: Text(
                  'Niel Mathew',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  '+1 1237217839',
                  style: GoogleFonts.poppins(fontSize: 13),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Recipient Bank Account Details
            _sectionHeader(
              'Recipient Bank Account Details',
              actionText: 'Edit',
              onAction: () {},
            ),
            _accountDetailsCard(
              context,
              details: {
                'Account Number': '8765436783432',
                'IFSC': 'FREX0K00023',
                'Bank Name': 'Lorem Ipsum',
                'Status': 'Active',
              },
            ),
            const SizedBox(height: 16),

            // Frex Virtual Account
            _sectionHeader('Frex Virtual Account'),
            _accountDetailsCard(
              context,
              details: {
                'Account Holder Name': 'Lorem Ipsum',
                'Account Number': '8765436783432',
                'Routing Number': 'SDF243242',
                'Bank Name': 'Lorem Ipsum',
                'Status': 'Active',
              },
            ),
            const SizedBox(height: 16),

            // Help, Terms, Privacy
            _simpleListTile('Help', Icons.open_in_new, onTap: () {}),
            _simpleListTile('Term of Service', Icons.open_in_new, onTap: () {}),
            _simpleListTile('Privacy Policy', Icons.open_in_new, onTap: () {}),
            const SizedBox(height: 16),

            // Logout Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  side: BorderSide(color: Colors.grey[300]!),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Logout',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2, // Profile tab selected
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

  Widget _sectionHeader(
    String title, {
    String? actionText,
    VoidCallback? onAction,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
          if (actionText != null)
            GestureDetector(
              onTap: onAction,
              child: Text(
                actionText,
                style: GoogleFonts.poppins(
                  color: Colors.purple,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _accountDetailsCard(
    BuildContext context, {
    required Map<String, String> details,
  }) {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: details.entries.map((entry) {
            if (entry.key == 'Status') {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${entry.key}:',
                    style: GoogleFonts.poppins(
                      color: Colors.grey[700],
                      fontSize: 14,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      entry.value,
                      style: GoogleFonts.poppins(
                        color: Colors.green[800],
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              );
            }
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${entry.key}:',
                    style: GoogleFonts.poppins(
                      color: Colors.grey[700],
                      fontSize: 14,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      entry.value,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _simpleListTile(String title, IconData icon, {VoidCallback? onTap}) {
    return Card(
      color: Colors.white,
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          title,
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
        ),
        trailing: Icon(icon, size: 20, color: Colors.grey[700]),
        onTap: onTap,
      ),
    );
  }
}
