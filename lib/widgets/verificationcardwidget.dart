import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationCard extends StatelessWidget {
  final String? title;
  final String? statusText;
  final String? additionalMessage;
  final String? actionText;
  final VoidCallback? onActionTap;

  const VerificationCard({
    super.key,
    this.title,
    this.statusText,
    this.additionalMessage,
    this.actionText,
    this.onActionTap,
  });

  Color getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'verified':
        return Colors.green;
      case 'rejected':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        left: 12,
        right: 12,
        top: 12,
      ), // Removed bottom padding
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Optional title
          if (title != null) ...[
            Text(
              title!,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
          ],

          // Status box
          if (statusText != null)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Status:',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    statusText!,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: getStatusColor(statusText!),
                    ),
                  ),
                ],
              ),
            ),

          // Additional message
          if (additionalMessage != null)
            Container(
              width: double.infinity,

              margin: EdgeInsets.only(top: 6), // tight spacing
              padding: EdgeInsets.fromLTRB(12, 10, 12, 14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text.rich(
                TextSpan(
                  text: additionalMessage,
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    color: Colors.black87,
                  ),
                  children: [
                    if (actionText != null)
                      TextSpan(
                        text: ' $actionText',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = onActionTap,
                      ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
