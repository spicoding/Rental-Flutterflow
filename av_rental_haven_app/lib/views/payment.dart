import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/paymentmodel.dart';

class PaymentWidget extends StatefulWidget {
  const PaymentWidget({super.key});

  static String routeName = 'payment';
  static String routePath = '/payment';

  @override
  State<PaymentWidget> createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget>
    with TickerProviderStateMixin {
  late PaymentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = PaymentModel();
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF101213),
              size: 30,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            'Details',
            style: GoogleFonts.plusJakartaSans(
              textStyle: Theme.of(context).textTheme.headlineMedium,
              color: const Color(0xFF101213),
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Invoice Amount',
                      style: GoogleFonts.plusJakartaSans(
                        textStyle: Theme.of(context).textTheme.labelMedium,
                        color: const Color(0xFF57636C),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                      child: Container(
                        height: 32,
                        decoration: BoxDecoration(
                          color: Color(0x66249689),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xFF39D2C0),
                            width: 2,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              12,
                              0,
                              12,
                              0,
                            ),
                            child: Text(
                              'DUE',
                              style: GoogleFonts.plusJakartaSans(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.bodyMedium,
                                color: const Color(0xFF101213),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                child: Text(
                  '\$245.00',
                  style: GoogleFonts.outfit(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    color: const Color(0xFF101213),
                    fontSize: 64,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Due on:',
                              style: GoogleFonts.plusJakartaSans(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.labelSmall,
                                color: const Color(0xFF57636C),
                                fontSize: 12,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0,
                                8,
                                0,
                                0,
                              ),
                              child: Text(
                                'May 30th, 2026',
                                style: GoogleFonts.outfit(
                                  textStyle: Theme.of(
                                    context,
                                  ).textTheme.titleLarge,
                                  color: const Color(0xFF101213),
                                  fontSize: 18,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Invoice #:',
                            style: GoogleFonts.plusJakartaSans(
                              textStyle: Theme.of(context).textTheme.labelSmall,
                              color: const Color(0xFF57636C),
                              fontSize: 12,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: Text(
                              '5242124422',
                              style: GoogleFonts.outfit(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.titleLarge,
                                color: const Color(0xFF101213),
                                fontSize: 18,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
                child: Text(
                  'Note',
                  style: GoogleFonts.plusJakartaSans(
                    textStyle: Theme.of(context).textTheme.labelSmall,
                    color: const Color(0xFF57636C),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                child: Text(
                  'Our invoice details reflect a clear breakdown of the goods and services provided, including item descriptions, quantities, agreed prices, applicable taxes, and payment terms, ensuring a comprehensive and transparent record of the transaction.',
                  style: GoogleFonts.plusJakartaSans(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                    color: const Color(0xFF101213),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
                child: Text(
                  'Customer Information',
                  style: GoogleFonts.plusJakartaSans(
                    textStyle: Theme.of(context).textTheme.labelSmall,
                    color: const Color(0xFF57636C),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                child:
                    Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFF1F4F8),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1610737241336-371badac3b66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      16,
                                      0,
                                      0,
                                      0,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Albert Swiss',
                                          style: GoogleFonts.plusJakartaSans(
                                            textStyle: Theme.of(
                                              context,
                                            ).textTheme.bodyLarge,
                                            color: const Color(0xFF101213),
                                            fontSize: 16,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0,
                                                4,
                                                0,
                                                0,
                                              ),
                                          child: Text(
                                            'albert@companyname.com',
                                            style: GoogleFonts.plusJakartaSans(
                                              textStyle: Theme.of(
                                                context,
                                              ).textTheme.labelSmall,
                                              color: const Color(0xFF57636C),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                        .animate()
                        .fade(duration: 600.ms)
                        .move(
                          begin: const Offset(0, 80),
                          end: Offset.zero,
                          duration: 600.ms,
                        ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Billing Address:',
                              style: GoogleFonts.plusJakartaSans(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.labelSmall,
                                color: const Color(0xFF57636C),
                                fontSize: 12,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0,
                                8,
                                0,
                                0,
                              ),
                              child: Text(
                                'Gig Dynamics Ngong rd next to ASK Dome Nairobi.',
                                style: GoogleFonts.outfit(
                                  textStyle: Theme.of(
                                    context,
                                  ).textTheme.titleLarge,
                                  color: const Color(0xFF101213),
                                  fontSize: 18,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Customer Since:',
                            style: GoogleFonts.plusJakartaSans(
                              textStyle: Theme.of(context).textTheme.labelSmall,
                              color: const Color(0xFF57636C),
                              fontSize: 12,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: Text(
                              'February 30th, 2026',
                              style: GoogleFonts.outfit(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.titleLarge,
                                color: const Color(0xFF101213),
                                fontSize: 18,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          label: const Text('Share'),
                          icon: const Icon(Icons.ios_share, size: 15),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: const Color(0xFF101213),
                            elevation: 0,
                            side: const BorderSide(
                              color: Color(0xFFE0E3E7),
                              width: 1,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            minimumSize: const Size(130, 40),
                            textStyle: GoogleFonts.plusJakartaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                        child: ElevatedButton.icon(
                          onPressed: () async {
                            // context.pushNamed(AddressEditorPageWidget.routeName);
                          },
                          label: const Text('Edit'),
                          icon: const Icon(Icons.edit_outlined, size: 15),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: const Color(0xFF101213),
                            elevation: 0,
                            side: const BorderSide(
                              color: Color(0xFFE0E3E7),
                              width: 1,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            minimumSize: const Size(130, 40),
                            textStyle: GoogleFonts.plusJakartaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                child: ElevatedButton.icon(
                  onPressed: () async {
                    // context.pushNamed(PaymentPageWidget.routeName);
                  },
                  label: const Text('Mark as Paid'),
                  icon: const Icon(
                    Icons.check_circle_outline_rounded,
                    size: 15,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4B39EF),
                    foregroundColor: Colors.white,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize: const Size(double.infinity, 48),
                    textStyle: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
