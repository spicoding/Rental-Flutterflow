// ignore_for_file: avoid_unnecessary_containers, avoid_print

import '../models/paymentpagemodel.dart';
import '/components/billing_option_widget.dart';
import '/components/summary_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// A payment page with multiple billing options
class PaymentPageWidget extends StatefulWidget {
  const PaymentPageWidget({super.key});

  static String routeName = 'PaymentPage';
  static String routePath = '/paymentPage';

  @override
  State<PaymentPageWidget> createState() => _PaymentPageWidgetState();
}

class _PaymentPageWidgetState extends State<PaymentPageWidget> {
  late PaymentPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = PaymentPageModel();
    _model.initState(context);
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
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(shape: BoxShape.rectangle),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.all(24),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: Theme.of(context).colorScheme.onSurface,
                            size: 24,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Payment Method',
                          style: GoogleFonts.interTight(
                            textStyle: Theme.of(context).textTheme.titleLarge,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.0,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.outlineVariant,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(24),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.primary,
                                      borderRadius: BorderRadius.circular(9999),
                                      shape: BoxShape.rectangle,
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Text(
                                      '1',
                                      style: GoogleFonts.inter(
                                        textStyle: Theme.of(
                                          context,
                                        ).textTheme.labelLarge,
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        height: 1.4,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    width: 40,
                                    height: 2,
                                    decoration: BoxDecoration(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.primary,
                                      shape: BoxShape.rectangle,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.primary,
                                      borderRadius: BorderRadius.circular(9999),
                                      shape: BoxShape.rectangle,
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Text(
                                      '2',
                                      style: GoogleFonts.inter(
                                        textStyle: Theme.of(
                                          context,
                                        ).textTheme.labelLarge,
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        height: 1.4,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    width: 40,
                                    height: 2,
                                    decoration: BoxDecoration(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.outlineVariant,
                                      shape: BoxShape.rectangle,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9999),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.outlineVariant,
                                        width: 2,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Text(
                                      '3',
                                      style: GoogleFonts.inter(
                                        textStyle: Theme.of(
                                          context,
                                        ).textTheme.labelLarge,
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.onSurfaceVariant,
                                        letterSpacing: 0.0,
                                        height: 1.4,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Choose Billing Plan',
                                    style: GoogleFonts.interTight(
                                      textStyle: Theme.of(
                                        context,
                                      ).textTheme.titleMedium,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.0,
                                      height: 1.4,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  BillingOptionWidget(
                                    selected: false,
                                    icon: Icon(
                                      Icons.calendar_view_month_rounded,
                                      size: 24,
                                    ),
                                    title: 'Monthly Billing',
                                    description:
                                        'Pay as you go, cancel anytime',
                                  ),
                                  const SizedBox(height: 16),
                                  BillingOptionWidget(
                                    selected: true,
                                    icon: Icon(
                                      Icons.event_available_rounded,
                                      size: 24,
                                    ),
                                    title: 'Annual Billing',
                                    description:
                                        'Save 20% with yearly commitment',
                                  ),
                                  const SizedBox(height: 16),
                                  BillingOptionWidget(
                                    selected: false,
                                    icon: Icon(
                                      Icons.account_balance_wallet_rounded,
                                      size: 24,
                                    ),
                                    title: 'Pay with Credits',
                                    description:
                                        'Use your Haven wallet balance',
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Card Details',
                                    style: GoogleFonts.interTight(
                                      textStyle: Theme.of(
                                        context,
                                      ).textTheme.titleMedium,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.0,
                                      height: 1.4,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.surfaceContainer,
                                  borderRadius: BorderRadius.circular(24),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(24),
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0,
                                                0,
                                                0,
                                                8,
                                              ),
                                          child: Container(
                                            child: Text(
                                              'Order Summary',
                                              style: GoogleFonts.interTight(
                                                textStyle: Theme.of(
                                                  context,
                                                ).textTheme.titleMedium,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 0.0,
                                                height: 1.4,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        SummaryRowWidget(
                                          label: 'Annual Haven Pro',
                                          value: '\$240.00',
                                        ),
                                        const SizedBox(height: 8),
                                        SummaryRowWidget(
                                          label: 'Insurance Coverage',
                                          value: '\$45.00',
                                        ),
                                        const SizedBox(height: 8),
                                        SummaryRowWidget(
                                          label: 'Platform Fee',
                                          value: '\$5.00',
                                        ),
                                        const SizedBox(height: 8),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0,
                                                4,
                                                0,
                                                4,
                                              ),
                                          child: Container(
                                            child: Divider(
                                              height: 16,
                                              thickness: 1,
                                              indent: 0,
                                              endIndent: 0,
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.outlineVariant,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Total Amount',
                                              style: GoogleFonts.interTight(
                                                textStyle: Theme.of(
                                                  context,
                                                ).textTheme.titleMedium,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 0.0,
                                                height: 1.4,
                                              ),
                                            ),
                                            Text(
                                              '\$290.00',
                                              style: GoogleFonts.interTight(
                                                textStyle: Theme.of(
                                                  context,
                                                ).textTheme.titleMedium,
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(
                                                  context,
                                                ).colorScheme.primary,
                                                letterSpacing: 0.0,
                                                height: 1.4,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
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
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainer,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 1,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.outlineVariant,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(24),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.lock_outline_rounded,
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSurfaceVariant,
                                size: 14,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Secure 256-bit SSL Encrypted Payment',
                                style: GoogleFonts.inter(
                                  textStyle: Theme.of(
                                    context,
                                  ).textTheme.labelSmall,
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurfaceVariant,
                                  letterSpacing: 0.0,
                                  height: 1.4,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
