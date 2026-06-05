import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/receiptdetailsmodel.dart';

class ReceiptDetailsWidget extends StatefulWidget {
  const ReceiptDetailsWidget({super.key});

  static String routeName = 'ReceiptDetails';
  static String routePath = '/receiptDetails';

  @override
  State<ReceiptDetailsWidget> createState() => _ReceiptDetailsWidgetState();
}

class _ReceiptDetailsWidgetState extends State<ReceiptDetailsWidget> {
  late ReceiptDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = ReceiptDetailsModel();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF1F4F8),
        appBar: AppBar(
          backgroundColor: Color(0xFFF1F4F8),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF15161E),
              size: 30,
            ),
            onPressed: () async {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            'Receipt Details',
            style: GoogleFonts.outfit(
              color: const Color(0xFF15161E),
              fontSize: 24,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, -1),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 12),
                    child: Container(
                      width: double.infinity,
                      constraints: BoxConstraints(maxWidth: 770),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            color: Color(0x33000000),
                            offset: Offset(0, 1),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Color(0xFFE5E7EB)),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, -1),
                              child: Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  color: Color(0x4C39D2C0),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0x4C39D2C0),
                                    width: 4,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Container(
                                    width: 140,
                                    height: 140,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF39D2C0),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0x4C39D2C0),
                                        width: 4,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.check_rounded,
                                      color: Colors.white,
                                      size: 64,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Align(
                              alignment: AlignmentDirectional(0, -1),
                              child: Text(
                                'Transaction Success',
                                style: GoogleFonts.outfit(
                                  color: const Color(0xFF606A85),
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Align(
                              alignment: AlignmentDirectional(0, -1),
                              child: Text(
                                '\$25,250',
                                style: GoogleFonts.outfit(
                                  color: const Color(0xFF15161E),
                                  fontSize: 44,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Divider(
                              height: 16,
                              thickness: 2,
                              color: Color(0xFFE5E7EB),
                            ),
                            const SizedBox(height: 8),
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'Bank Address\n',
                                    style: TextStyle(),
                                  ),
                                  TextSpan(
                                    text:
                                        '459 West Hollywood Blvd. Los Angeles California, 98201',
                                    style: GoogleFonts.figtree(
                                      color: const Color(0xFF15161E),
                                      fontSize: 16,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                                style: GoogleFonts.outfit(
                                  color: const Color(0xFF606A85),
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'Bank Name: ',
                                    style: TextStyle(),
                                  ),
                                  TextSpan(
                                    text: 'Bankisimo.io',
                                    style: GoogleFonts.figtree(
                                      color: const Color(0xFF15161E),
                                      fontSize: 16,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                                style: GoogleFonts.outfit(
                                  color: const Color(0xFF606A85),
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'Account #: ',
                                    style: TextStyle(),
                                  ),
                                  TextSpan(
                                    text: '123456789',
                                    style: GoogleFonts.figtree(
                                      color: const Color(0xFF15161E),
                                      fontSize: 16,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                                style: GoogleFonts.outfit(
                                  color: const Color(0xFF606A85),
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'IBAN: ',
                                    style: TextStyle(),
                                  ),
                                  TextSpan(
                                    text: '1234567890123',
                                    style: GoogleFonts.figtree(
                                      color: const Color(0xFF15161E),
                                      fontSize: 16,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                                style: GoogleFonts.outfit(
                                  color: const Color(0xFF606A85),
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Divider(
                              height: 16,
                              thickness: 2,
                              color: Color(0xFFE5E7EB),
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                12,
                                0,
                                12,
                                0,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Recipient',
                                    style: GoogleFonts.outfit(
                                      color: const Color(0xFF606A85),
                                      fontSize: 14,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'Abigail Rogers',
                                    textAlign: TextAlign.end,
                                    style: GoogleFonts.outfit(
                                      color: const Color(0xFF15161E),
                                      fontSize: 22,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'abigail.rogers@domain.com',
                                    textAlign: TextAlign.end,
                                    style: GoogleFonts.outfit(
                                      color: const Color(0xFF6F61EF),
                                      fontSize: 14,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 48,
                                          height: 48,
                                          decoration: BoxDecoration(
                                            color: Color(0x4D9489F5),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Color(0xFF6F61EF),
                                              width: 2,
                                            ),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(2),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(40),
                                              ),
                                              child: Image(
                                                image: NetworkImage(
                                                  'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                                                ),
                                                width: 60,
                                                height: 60,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 16),
                                        Stack(
                                          alignment: AlignmentDirectional(0, 0),
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                0,
                                                0,
                                              ),
                                              child: Container(
                                                width: 120,
                                                height: 4,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFE5E7EB),
                                                  borderRadius:
                                                      BorderRadius.circular(2),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 44,
                                              height: 44,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFE5E7EB),
                                                shape: BoxShape.circle,
                                              ),
                                              alignment: AlignmentDirectional(
                                                0,
                                                0,
                                              ),
                                              child: const Icon(
                                                Icons
                                                    .keyboard_double_arrow_right_rounded,
                                                color: Color(0xFF606A85),
                                                size: 32,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 16),
                                        Container(
                                          width: 48,
                                          height: 48,
                                          decoration: BoxDecoration(
                                            color: Color(0x4D9489F5),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Color(0xFF6F61EF),
                                              width: 2,
                                            ),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(2),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(40),
                                              ),
                                              child: Image(
                                                image: NetworkImage(
                                                  'https://images.unsplash.com/photo-1505033575518-a36ea2ef75ae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZSUyMHVzZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=900&q=60',
                                                ),
                                                width: 60,
                                                height: 60,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 44),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
