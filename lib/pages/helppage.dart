import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  final List<Map<String, String>> faqList = [
    {
      "question": "What is Frex and how does it work",
      "answer":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
    },
    {
      "question": "What do I do if my transfer is delayed?",
      "answer": "You can contact support if your transfer is delayed.",
    },
    {
      "question": "Is there a minimum transaction amount?",
      "answer": "Yes, the minimum transaction amount is set by your provider.",
    },
    {
      "question":
          "What countries and currencies do you support for sending and receiving?",
      "answer": "We support multiple countries and currencies.",
    },
    {
      "question": "How long will it take for my funds to get transferred?",
      "answer": "Transfers usually take between 1-3 business days.",
    },
  ];

  /// Instead of single index, we now allow multiple expanded items
  final Set<int> expandedIndices = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8F9),
      appBar: AppBar(
        title: Text(
          "Help",
          style: GoogleFonts.poppins(
            color: const Color(0xFF2F2F34), // 👈 Purple color
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: faqList.length,
        itemBuilder: (context, index) {
          final isExpanded = expandedIndices.contains(index);
          return Card(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(vertical: 6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                setState(() {
                  if (isExpanded) {
                    expandedIndices.remove(index);
                  } else {
                    expandedIndices.add(index);
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            faqList[index]["question"] ?? "",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: isExpanded
                                  ? const Color(
                                      0XFF7A00F5,
                                    ) // purple when expanded
                                  : Colors.black, // black when collapsed
                            ),
                          ),
                        ),
                        Icon(
                          isExpanded ? Icons.remove : Icons.add,
                          color: isExpanded
                              ? const Color(0XFF7A00F5)
                              : const Color(0XFF2F2F34),
                        ),
                      ],
                    ),
                    if (isExpanded) ...[
                      const SizedBox(height: 8),
                      Text(
                        faqList[index]["answer"] ?? "",
                        style: GoogleFonts.poppins(
                          color: const Color(0XFF2F2F34),
                          fontSize: 14,
                          height: 1.4,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0XFF7A00F5),

        onPressed: () {
          // Add call action here
        },
        child: const Icon(Icons.call, color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        currentIndex: 3, // highlight Help tab
        onTap: (index) {
          // handle navigation
        },
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
}
