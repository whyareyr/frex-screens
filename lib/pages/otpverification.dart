// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:my_first_app/widgets/custombutton.dart'; // Make sure this path is correct

// class OtpVerificationPage extends StatefulWidget {
//   const OtpVerificationPage({super.key});

//   @override
//   State<OtpVerificationPage> createState() => _OtpVerificationPageState();
// }

// class _OtpVerificationPageState extends State<OtpVerificationPage> {
//   late Timer _timer;
//   int _start = 59;
//   bool _isResendEnabled = false;

//   // Controllers and FocusNodes for the OTP fields
//   late List<TextEditingController> _controllers;
//   late List<FocusNode> _focusNodes;

//   @override
//   void initState() {
//     super.initState();
//     // Initialize controllers and focus nodes for 6 OTP fields
//     _controllers = List.generate(6, (_) => TextEditingController());
//     _focusNodes = List.generate(6, (_) => FocusNode());
//     startTimer();
//   }

//   void startTimer() {
//     setState(() {
//       _isResendEnabled = false;
//       _start = 59;
//     });
//     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       if (_start == 0) {
//         setState(() {
//           _isResendEnabled = true;
//           _timer.cancel();
//         });
//       } else {
//         setState(() {
//           _start--;
//         });
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _timer.cancel();
//     for (var controller in _controllers) {
//       controller.dispose();
//     }
//     for (var node in _focusNodes) {
//       node.dispose();
//     }
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF7F8F9),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFFF7F8F9),
//         elevation: 0,
//         leading: const Icon(Icons.arrow_back, color: Colors.black),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     const SizedBox(height: 16.0),
//                     Text(
//                       'Enter Verification Code',
//                       textAlign: TextAlign.center,
//                       style: GoogleFonts.poppins(
//                         fontSize: 24,
//                         fontWeight: FontWeight.w500,
//                         color: const Color(0xFF2F2F34),
//                       ),
//                     ),
//                     const SizedBox(height: 8.0),
//                     const Text(
//                       '6 digit verification code was sent to xxxxxx345',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(fontSize: 16, color: Color(0xFF3E3E44)),
//                     ),
//                     const SizedBox(height: 40.0),
//                     _buildOtpInput(),
//                     const SizedBox(height: 24.0),
//                     _buildResendSection(),
//                   ],
//                 ),
//               ),
//             ),
//             _buildFooter(),
//           ],
//         ),
//       ),
//     );
//   }

//   /// Builds the OTP input field with auto-focus logic.
//   Widget _buildOtpInput() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: List.generate(6, (index) {
//         return SizedBox(
//           width: 48,
//           height: 56,
//           child: TextFormField(
//             controller: _controllers[index],
//             focusNode: _focusNodes[index],
//             textAlign: TextAlign.center,
//             keyboardType: TextInputType.number,
//             maxLength: 1,
//             style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             decoration: InputDecoration(
//               counterText: '',
//               filled: true,
//               fillColor: Colors.white,
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(8.0),
//                 borderSide: BorderSide(color: Colors.grey[300]!),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(8.0),
//                 borderSide: BorderSide(color: Colors.grey[300]!),
//               ),
//             ),
//             onChanged: (value) {
//               if (value.isNotEmpty) {
//                 // Move to next field if a character is entered
//                 if (index < 5) {
//                   _focusNodes[index].unfocus();
//                   FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
//                 } else {
//                   // If it's the last field, unfocus to hide keyboard
//                   _focusNodes[index].unfocus();
//                 }
//               } else {
//                 // Move to previous field if character is deleted
//                 if (index > 0) {
//                   _focusNodes[index].unfocus();
//                   FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
//                 }
//               }
//             },
//           ),
//         );
//       }),
//     );
//   }

//   /// Builds the resend OTP section with timer.
//   Widget _buildResendSection() {
//     return Column(
//       children: [
//         if (!_isResendEnabled)
//           Text(
//             "Didn't receive the code? Try again in 00:${_start.toString().padLeft(2, '0')}",
//             style: GoogleFonts.poppins(color: Colors.grey[600], fontSize: 14),
//           ),
//         const SizedBox(height: 8),
//         GestureDetector(
//           onTap: _isResendEnabled
//               ? () {
//                   startTimer(); // Restart the timer on tap
//                 }
//               : null,
//           child: Text(
//             'Resend OTP',
//             style: GoogleFonts.poppins(
//               color: _isResendEnabled ? const Color(0xFF7A00F5) : Colors.grey,
//               fontWeight: FontWeight.w600,
//               fontSize: 14,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   /// Builds the fixed footer button.
//   Widget _buildFooter() {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 24.0, top: 16.0),
//       child: CustomButton(
//         text: 'Verify',
//         onPressed: () {
//           // Handle verification logic
//         },
//       ),
//     );
//   }
// }
import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/widgets/custombutton.dart'; // Make sure this path is correct

class OtpVerificationPage extends StatefulWidget {
  final String phoneNumber;

  const OtpVerificationPage({
    super.key,
    this.phoneNumber = 'xxxxxx345', // Updated default value
  });

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  late Timer _timer;
  int _start = 59;
  bool _isResendEnabled = false;
  bool _isLoading = false;

  late List<TextEditingController> _controllers;
  late List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(6, (_) => TextEditingController());
    _focusNodes = List.generate(6, (_) => FocusNode());
    startTimer();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_focusNodes[0]);
    });
  }

  void startTimer() {
    setState(() {
      _isResendEnabled = false;
      _start = 59;
    });
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }
      if (_start == 0) {
        setState(() {
          _isResendEnabled = true;
          timer.cancel();
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  void _resendCode() {
    print("Resending OTP...");
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('A new OTP has been sent.'),
        backgroundColor: Colors.green,
      ),
    );
    startTimer();
  }

  Future<void> _verifyCode() async {
    final otp = _controllers.map((c) => c.text).join();
    if (otp.length != 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter the complete 6-digit code.'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }

    setState(() => _isLoading = true);
    await Future.delayed(const Duration(seconds: 2));

    if (otp == '123456') {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Verification Successful!'),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Invalid OTP. Please try again.'),
          backgroundColor: Colors.red,
        ),
      );
    }

    if (mounted) {
      setState(() => _isLoading = false);
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F8F9),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16.0),
                    Text(
                      'Enter Verification Code',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF2F2F34),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      '6 digit verification code was sent to ${widget.phoneNumber}',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3E3E44),
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    _buildOtpInput(),
                    const SizedBox(height: 24.0),
                    Center(
                      child: _buildResendSection(),
                    ), // Centered the resend section
                  ],
                ),
              ),
            ),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildOtpInput() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(6, (index) {
        return SizedBox(
          width: 48,
          height: 56,
          child: TextFormField(
            controller: _controllers[index],
            focusNode: _focusNodes[index],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            decoration: InputDecoration(
              counterText: '',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: Colors.grey[300]!),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: Colors.grey[300]!),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(color: Color(0xFF7A00F5)),
              ),
            ),
            onChanged: (value) {
              if (value.isNotEmpty) {
                if (index < 5) {
                  FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
                } else {
                  _focusNodes[index].unfocus();
                }
              } else if (index > 0) {
                FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
              }
            },
          ),
        );
      }),
    );
  }

  /// Builds the resend OTP section with corrected layout.
  Widget _buildResendSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (!_isResendEnabled)
          Text(
            "Didn't receive the code? Try again in 00:${_start.toString().padLeft(2, '0')}",
            style: GoogleFonts.poppins(color: Colors.grey[600], fontSize: 14),
          ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: _isResendEnabled ? _resendCode : null,
          child: Text(
            'Resend OTP',
            style: GoogleFonts.poppins(
              color: _isResendEnabled
                  ? const Color(0xFF7A00F5)
                  : Colors.grey[500],
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0, top: 16.0),
      child: CustomButton(
        text: _isLoading ? 'Verifying...' : 'Verify',
        onPressed: _isLoading ? () {} : _verifyCode,
        // **IMPORTANT**: To match the yellow button, ensure your CustomButton
        // can accept a color property like this:
        // color: const Color(0xFFFFD428),
      ),
    );
  }
}
