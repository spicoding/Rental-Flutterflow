import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/transactionhistoryresponsivemodel.dart';

class TransactionHistoryResponsiveWidget extends StatefulWidget {
  const TransactionHistoryResponsiveWidget({super.key});

  static String routeName = 'TransactionHistoryResponsive';
  static String routePath = '/transactionHistoryResponsive';

  @override
  State<TransactionHistoryResponsiveWidget> createState() =>
      _TransactionHistoryResponsiveWidgetState();
}

class _TransactionHistoryResponsiveWidgetState
    extends State<TransactionHistoryResponsiveWidget> {
  late TransactionHistoryResponsiveModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = TransactionHistoryResponsiveModel();
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
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: MediaQuery.sizeOf(context).width <= 991
            ? AppBar(
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: Color(0xFF15161E),
                    size: 30,
                  ),
                  onPressed: () async {
                    Navigator.of(context).pop();
                  },
                ),
                title: Text(
                  'Order Details',
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xFF15161E),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                actions: [],
                centerTitle: false,
                elevation: 0,
              )
            : null,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (MediaQuery.sizeOf(context).width > 991)
                Container(
                  width: 270,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F4F8),
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(color: Color(0xFFE5E7EB), width: 1),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                            16,
                            0,
                            16,
                            12,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.add_task_rounded,
                                color: Color(0xFF6F61EF),
                                size: 32,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  12,
                                  0,
                                  0,
                                  0,
                                ),
                                child: Text(
                                  'check.io',
                                  style: GoogleFonts.outfit(
                                    textStyle: Theme.of(
                                      context,
                                    ).textTheme.headlineMedium,
                                    color: const Color(0xFF15161E),
                                    fontSize: 24,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 12,
                          thickness: 2,
                          color: Color(0xFFE5E7EB),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  16,
                                  12,
                                  0,
                                  0,
                                ),
                                child: Text(
                                  'Platform Navigation',
                                  style: GoogleFonts.plusJakartaSans(
                                    textStyle: Theme.of(
                                      context,
                                    ).textTheme.labelMedium,
                                    color: const Color(0xFF606A85),
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  16,
                                  0,
                                  16,
                                  0,
                                ),
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.easeInOut,
                                  width: double.infinity,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1F4F8),
                                    borderRadius: BorderRadius.circular(12),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      8,
                                      0,
                                      6,
                                      0,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.space_dashboard,
                                          color: Color(0xFF15161E),
                                          size: 24,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                12,
                                                0,
                                                0,
                                                0,
                                              ),
                                          child: Text(
                                            'Dashboard',
                                            style: GoogleFonts.plusJakartaSans(
                                              textStyle: Theme.of(
                                                context,
                                              ).textTheme.bodyMedium,
                                              color: const Color(0xFF15161E),
                                              fontSize: 14,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  16,
                                  0,
                                  16,
                                  0,
                                ),
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.easeInOut,
                                  width: double.infinity,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1F4F8),
                                    borderRadius: BorderRadius.circular(12),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      8,
                                      0,
                                      6,
                                      0,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.forum_rounded,
                                          color: Color(0xFF15161E),
                                          size: 24,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                12,
                                                0,
                                                0,
                                                0,
                                              ),
                                          child: Text(
                                            'Chats',
                                            style: GoogleFonts.plusJakartaSans(
                                              textStyle: Theme.of(
                                                context,
                                              ).textTheme.bodyMedium,
                                              color: const Color(0xFF15161E),
                                              fontSize: 14,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  16,
                                  0,
                                  16,
                                  0,
                                ),
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.easeInOut,
                                  width: double.infinity,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1F4F8),
                                    borderRadius: BorderRadius.circular(12),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      8,
                                      0,
                                      6,
                                      0,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.work,
                                          color: Color(0xFF15161E),
                                          size: 24,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                12,
                                                0,
                                                0,
                                                0,
                                              ),
                                          child: Text(
                                            'Projects',
                                            style: GoogleFonts.plusJakartaSans(
                                              textStyle: Theme.of(
                                                context,
                                              ).textTheme.bodyMedium,
                                              color: const Color(0xFF15161E),
                                              fontSize: 14,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  16,
                                  0,
                                  16,
                                  0,
                                ),
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.easeInOut,
                                  width: double.infinity,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    color: Color(0x4D9489F5),
                                    borderRadius: BorderRadius.circular(12),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      8,
                                      0,
                                      6,
                                      0,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.receipt_rounded,
                                          color: Color(0xFF6F61EF),
                                          size: 24,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                  12,
                                                  0,
                                                  0,
                                                  0,
                                                ),
                                            child: Text(
                                              'Recent Orders',
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                    textStyle: Theme.of(
                                                      context,
                                                    ).textTheme.bodyMedium,
                                                    color: const Color(
                                                      0xFF15161E,
                                                    ),
                                                    fontSize: 14,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 32,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF6F61EF),
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                          ),
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                              0,
                                              0,
                                            ),
                                            child: Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                    8,
                                                    4,
                                                    8,
                                                    4,
                                                  ),
                                              child: Text(
                                                '12',
                                                style:
                                                    GoogleFonts.plusJakartaSans(
                                                      textStyle: Theme.of(
                                                        context,
                                                      ).textTheme.bodyMedium,
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  16,
                                  0,
                                  0,
                                  0,
                                ),
                                child: Text(
                                  'Settings',
                                  style: GoogleFonts.plusJakartaSans(
                                    textStyle: Theme.of(
                                      context,
                                    ).textTheme.labelMedium,
                                    color: const Color(0xFF606A85),
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  16,
                                  0,
                                  16,
                                  0,
                                ),
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.easeInOut,
                                  width: double.infinity,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1F4F8),
                                    borderRadius: BorderRadius.circular(12),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      8,
                                      0,
                                      6,
                                      0,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.attach_money_rounded,
                                          color: Color(0xFF15161E),
                                          size: 24,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                12,
                                                0,
                                                0,
                                                0,
                                              ),
                                          child: Text(
                                            'Billing',
                                            style: GoogleFonts.plusJakartaSans(
                                              textStyle: Theme.of(
                                                context,
                                              ).textTheme.bodyMedium,
                                              color: const Color(0xFF15161E),
                                              fontSize: 14,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  16,
                                  0,
                                  16,
                                  0,
                                ),
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.easeInOut,
                                  width: double.infinity,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1F4F8),
                                    borderRadius: BorderRadius.circular(12),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      8,
                                      0,
                                      6,
                                      0,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.wifi_tethering_rounded,
                                          color: Color(0xFF15161E),
                                          size: 24,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                12,
                                                0,
                                                0,
                                                0,
                                              ),
                                          child: Text(
                                            'Explore',
                                            style: GoogleFonts.plusJakartaSans(
                                              textStyle: Theme.of(
                                                context,
                                              ).textTheme.bodyMedium,
                                              color: const Color(0xFF15161E),
                                              fontSize: 14,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, -1),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              0,
                              8,
                              0,
                              16,
                            ),
                            child: Container(
                              width: 250,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFFF1F4F8),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Color(0xFFE5E7EB),
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(4),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          setState(() {
                                            // Logic to set light mode
                                          });
                                        },
                                        child: Container(
                                          width: 115,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color:
                                                Theme.of(context).brightness ==
                                                    Brightness.light
                                                ? Colors.white
                                                : Color(0xFFF1F4F8),
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            border: Border.all(
                                              color:
                                                  Theme.of(
                                                        context,
                                                      ).brightness ==
                                                      Brightness.light
                                                  ? const Color(0xFFE5E7EB)
                                                  : const Color(0xFFF1F4F8),
                                              width: 1,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.wb_sunny_rounded,
                                                color:
                                                    Theme.of(
                                                          context,
                                                        ).brightness ==
                                                        Brightness.light
                                                    ? Color(0xFF15161E)
                                                    : Color(0xFF606A85),
                                                size: 16,
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.fromSTEB(
                                                      4,
                                                      0,
                                                      0,
                                                      0,
                                                    ),
                                                child: Text(
                                                  'Light Mode',
                                                  style:
                                                      GoogleFonts.plusJakartaSans(
                                                        textStyle: Theme.of(
                                                          context,
                                                        ).textTheme.bodyMedium,
                                                        color:
                                                            Theme.of(
                                                                  context,
                                                                ).brightness ==
                                                                Brightness.light
                                                            ? const Color(
                                                                0xFF15161E,
                                                              )
                                                            : const Color(
                                                                0xFF606A85,
                                                              ),
                                                        fontSize: 14,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          setState(() {
                                            // Logic to set dark mode
                                          });
                                        },
                                        child: Container(
                                          width: 115,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color:
                                                Theme.of(context).brightness ==
                                                    Brightness.dark
                                                ? Colors.white
                                                : Color(0xFFF1F4F8),
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            border: Border.all(
                                              color:
                                                  Theme.of(
                                                        context,
                                                      ).brightness ==
                                                      Brightness.dark
                                                  ? const Color(0xFFE5E7EB)
                                                  : const Color(0xFFF1F4F8),
                                              width: 1,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.nightlight_round,
                                                color:
                                                    Theme.of(
                                                          context,
                                                        ).brightness ==
                                                        Brightness.dark
                                                    ? Color(0xFF15161E)
                                                    : Color(0xFF606A85),
                                                size: 16,
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.fromSTEB(
                                                      4,
                                                      0,
                                                      0,
                                                      0,
                                                    ),
                                                child: Text(
                                                  'Dark Mode',
                                                  style:
                                                      GoogleFonts.plusJakartaSans(
                                                        textStyle: Theme.of(
                                                          context,
                                                        ).textTheme.bodyMedium,
                                                        color:
                                                            Theme.of(
                                                                  context,
                                                                ).brightness ==
                                                                Brightness.dark
                                                            ? const Color(
                                                                0xFF15161E,
                                                              )
                                                            : const Color(
                                                                0xFF606A85,
                                                              ),
                                                        fontSize: 14,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
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
                          ),
                        ),
                        Divider(
                          height: 12,
                          thickness: 2,
                          color: Color(0xFFE5E7EB),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                            16,
                            12,
                            16,
                            12,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0x4D9489F5),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Color(0xFF6F61EF),
                                    width: 2,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(2),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: CachedNetworkImage(
                                      fadeInDuration: Duration(
                                        milliseconds: 500,
                                      ),
                                      fadeOutDuration: Duration(
                                        milliseconds: 500,
                                      ),
                                      imageUrl:
                                          'https://images.unsplash.com/photo-1624561172888-ac93c696e10c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjJ8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                                      width: 44,
                                      height: 44,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    12,
                                    0,
                                    0,
                                    0,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Andrew D.',
                                        style: GoogleFonts.plusJakartaSans(
                                          textStyle: Theme.of(
                                            context,
                                          ).textTheme.bodyLarge,
                                          color: const Color(0xFF15161E),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'admin@gmail.com',
                                        style: GoogleFonts.plusJakartaSans(
                                          textStyle: Theme.of(
                                            context,
                                          ).textTheme.labelMedium,
                                          color: const Color(0xFF606A85),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.menu_open_rounded,
                                color: Color(0xFF606A85),
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, -1),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(maxWidth: 1170),
                    decoration: BoxDecoration(color: Colors.white),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: double.infinity,
                            constraints: BoxConstraints(maxWidth: 1170),
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (MediaQuery.sizeOf(context).width > 991)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      16,
                                      12,
                                      0,
                                      12,
                                    ),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                  0,
                                                  2,
                                                  0,
                                                  2,
                                                ),
                                            child: IconButton(
                                              icon: const Icon(
                                                Icons.home_rounded,
                                                color: Color(0xFF606A85),
                                                size: 22,
                                              ),
                                              iconSize: 40,
                                              onPressed: () {},
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                  8,
                                                  0,
                                                  8,
                                                  0,
                                                ),
                                            child: Icon(
                                              Icons.chevron_right_rounded,
                                              color: Color(0xFF606A85),
                                              size: 16,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                  0,
                                                  8,
                                                  16,
                                                  8,
                                                ),
                                            child: Container(
                                              height: 32,
                                              decoration: BoxDecoration(
                                                color: Color(0x4D9489F5),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              alignment: AlignmentDirectional(
                                                0,
                                                0,
                                              ),
                                              child: Padding(
                                                padding:
                                                    EdgeInsetsDirectional.fromSTEB(
                                                      12,
                                                      4,
                                                      12,
                                                      4,
                                                    ),
                                                child: Text(
                                                  'Order Details',
                                                  style:
                                                      GoogleFonts.plusJakartaSans(
                                                        textStyle: Theme.of(
                                                          context,
                                                        ).textTheme.bodyMedium,
                                                        color: const Color(
                                                          0xFF6F61EF,
                                                        ),
                                                        fontSize: 14,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    16,
                                    0,
                                    0,
                                    0,
                                  ),
                                  child: Text(
                                    'Order #49224222',
                                    style: GoogleFonts.outfit(
                                      textStyle: Theme.of(
                                        context,
                                      ).textTheme.headlineSmall,
                                      color: const Color(0xFF15161E),
                                      fontSize: 22,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                    16,
                                    4,
                                    0,
                                    0,
                                  ),
                                  child: Text(
                                    'Below are the details of your order.',
                                    style: GoogleFonts.plusJakartaSans(
                                      textStyle: Theme.of(
                                        context,
                                      ).textTheme.labelMedium,
                                      color: const Color(0xFF606A85),
                                      fontSize: 14,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, -1),
                            child: Padding(
                              padding: EdgeInsets.all(16),
                              child: Container(
                                width: double.infinity,
                                constraints: BoxConstraints(maxWidth: 1170),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Color(0xFFE5E7EB)),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 8,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          16,
                                          16,
                                          0,
                                          16,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Payment Details',
                                              style: GoogleFonts.outfit(
                                                textStyle: Theme.of(
                                                  context,
                                                ).textTheme.headlineMedium,
                                                color: const Color(0xFF15161E),
                                                fontSize: 24,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                    0,
                                                    8,
                                                    0,
                                                    0,
                                                  ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Transaction ID',
                                                    style:
                                                        GoogleFonts.plusJakartaSans(
                                                          textStyle:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelMedium,
                                                          color: const Color(
                                                            0xFF606A85,
                                                          ),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                  Text(
                                                    'TXN123456789',
                                                    style:
                                                        GoogleFonts.plusJakartaSans(
                                                          textStyle:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyMedium,
                                                          color: const Color(
                                                            0xFF15161E,
                                                          ),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                    0,
                                                    16,
                                                    0,
                                                    16,
                                                  ),
                                              child: Divider(
                                                thickness: 2,
                                                color: Color(0xFFE5E7EB),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                    0,
                                                    0,
                                                    0,
                                                    12,
                                                  ),
                                              child: Text(
                                                'Transaction Breakdown',
                                                style:
                                                    GoogleFonts.plusJakartaSans(
                                                      textStyle: Theme.of(
                                                        context,
                                                      ).textTheme.bodyLarge,
                                                      color: const Color(
                                                        0xFF15161E,
                                                      ),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            // Transaction breakdowns simplified for diff clarity...
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                    0,
                                                    8,
                                                    0,
                                                    0,
                                                  ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Total',
                                                    style:
                                                        GoogleFonts.plusJakartaSans(
                                                          textStyle:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelLarge,
                                                          color: const Color(
                                                            0xFF606A85,
                                                          ),
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                  Text(
                                                    '\$500.00',
                                                    style: GoogleFonts.outfit(
                                                      textStyle: Theme.of(
                                                        context,
                                                      ).textTheme.headlineSmall,
                                                      color: const Color(
                                                        0xFF15161E,
                                                      ),
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                    0,
                                                    16,
                                                    0,
                                                    16,
                                                  ),
                                              child: Divider(
                                                thickness: 2,
                                                color: Color(0xFFE5E7EB),
                                              ),
                                            ),
                                            Text(
                                              'Notes',
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                    textStyle: Theme.of(
                                                      context,
                                                    ).textTheme.labelMedium,
                                                    color: const Color(
                                                      0xFF606A85,
                                                    ),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                    0,
                                                    8,
                                                    0,
                                                    0,
                                                  ),
                                              child: Text(
                                                'Transaction for monthly subscription.',
                                                style:
                                                    GoogleFonts.plusJakartaSans(
                                                      textStyle: Theme.of(
                                                        context,
                                                      ).textTheme.bodyLarge,
                                                      color: const Color(
                                                        0xFF15161E,
                                                      ),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                              ),
                                            ),
                                            if (MediaQuery.sizeOf(
                                                  context,
                                                ).width <=
                                                991)
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.fromSTEB(
                                                      0,
                                                      16,
                                                      0,
                                                      0,
                                                    ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            4,
                                                            0,
                                                            12,
                                                          ),
                                                      child: Text(
                                                        'Customer Details',
                                                        style: GoogleFonts.plusJakartaSans(
                                                          textStyle:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelMedium,
                                                          color: const Color(
                                                            0xFF606A85,
                                                          ),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            0,
                                                            0,
                                                            12,
                                                          ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                12,
                                                              ),
                                                          border: Border.all(
                                                            color: Color(
                                                              0xFFE5E7EB,
                                                            ),
                                                            width: 2,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional.fromSTEB(
                                                                0,
                                                                0,
                                                                0,
                                                                12,
                                                              ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets.all(
                                                                      12,
                                                                    ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      width: 44,
                                                                      height:
                                                                          44,
                                                                      decoration: BoxDecoration(
                                                                        color: Colors
                                                                            .white,
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                              12,
                                                                            ),
                                                                        border: Border.all(
                                                                          color: Color(
                                                                            0xFFE5E7EB,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      child: Padding(
                                                                        padding:
                                                                            EdgeInsets.all(
                                                                              2,
                                                                            ),
                                                                        child: ClipRRect(
                                                                          borderRadius: BorderRadius.circular(
                                                                            10,
                                                                          ),
                                                                          child: Image.network(
                                                                            'https://source.unsplash.com/random/1280x720?profile&5',
                                                                            width:
                                                                                44,
                                                                            height:
                                                                                44,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                            12,
                                                                            0,
                                                                            0,
                                                                            0,
                                                                          ),
                                                                      child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Haily Brown',
                                                                            style: GoogleFonts.plusJakartaSans(
                                                                              textStyle: Theme.of(
                                                                                context,
                                                                              ).textTheme.bodyLarge,
                                                                              color: const Color(
                                                                                0xFF15161E,
                                                                              ),
                                                                              fontSize: 16,
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              4,
                                                                              0,
                                                                              0,
                                                                            ),
                                                                            child: Text(
                                                                              '@brownisthenewblack',
                                                                              style: GoogleFonts.plusJakartaSans(
                                                                                textStyle: Theme.of(
                                                                                  context,
                                                                                ).textTheme.labelSmall,
                                                                                color: const Color(
                                                                                  0xFF6F61EF,
                                                                                ),
                                                                                fontSize: 12,
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
                                                                padding:
                                                                    EdgeInsetsDirectional.fromSTEB(
                                                                      16,
                                                                      0,
                                                                      0,
                                                                      0,
                                                                    ),
                                                                child: Text(
                                                                  'Address',
                                                                  style: GoogleFonts.plusJakartaSans(
                                                                    textStyle:
                                                                        Theme.of(
                                                                          context,
                                                                        ).textTheme.labelSmall,
                                                                    color: const Color(
                                                                      0xFF606A85,
                                                                    ),
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional.fromSTEB(
                                                                      16,
                                                                      8,
                                                                      0,
                                                                      0,
                                                                    ),
                                                                child: Text(
                                                                  '123 West Hollywood Blvd. San Mateo, CA. 90294',
                                                                  style: GoogleFonts.plusJakartaSans(
                                                                    textStyle:
                                                                        Theme.of(
                                                                          context,
                                                                        ).textTheme.bodyMedium,
                                                                    color: const Color(
                                                                      0xFF15161E,
                                                                    ),
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional.fromSTEB(
                                                                  0,
                                                                  12,
                                                                  0,
                                                                  0,
                                                                ),
                                                            child: ElevatedButton(
                                                              onPressed: () {},
                                                              style: ElevatedButton.styleFrom(
                                                                backgroundColor:
                                                                    Colors
                                                                        .white,
                                                                elevation: 0,
                                                                side: const BorderSide(
                                                                  color: Color(
                                                                    0xFFE5E7EB,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                                shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        12,
                                                                      ),
                                                                ),
                                                                minimumSize:
                                                                    const Size(
                                                                      0,
                                                                      48,
                                                                    ),
                                                              ),
                                                              child: Text(
                                                                'Report Now',
                                                                style: GoogleFonts.plusJakartaSans(
                                                                  textStyle:
                                                                      Theme.of(
                                                                        context,
                                                                      ).textTheme.bodyLarge,
                                                                  color: const Color(
                                                                    0xFF15161E,
                                                                  ),
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    if (MediaQuery.sizeOf(context).width > 991)
                                      Flexible(
                                        flex: 5,
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                16,
                                                16,
                                                16,
                                                0,
                                              ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.fromSTEB(
                                                      0,
                                                      4,
                                                      0,
                                                      12,
                                                    ),
                                                child: Text(
                                                  'Customer Details',
                                                  style:
                                                      GoogleFonts.plusJakartaSans(
                                                        textStyle: Theme.of(
                                                          context,
                                                        ).textTheme.labelMedium,
                                                        color: const Color(
                                                          0xFF606A85,
                                                        ),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.fromSTEB(
                                                      0,
                                                      0,
                                                      0,
                                                      12,
                                                    ),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          12,
                                                        ),
                                                    border: Border.all(
                                                      color: Color(0xFFE5E7EB),
                                                      width: 2,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional.fromSTEB(
                                                          0,
                                                          0,
                                                          0,
                                                          12,
                                                        ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                12,
                                                              ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 44,
                                                                height: 44,
                                                                decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        12,
                                                                      ),
                                                                  border: Border.all(
                                                                    color: Color(
                                                                      0xFFE5E7EB,
                                                                    ),
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets.all(
                                                                        2,
                                                                      ),
                                                                  child: ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          10,
                                                                        ),
                                                                    child: Image.network(
                                                                      'https://source.unsplash.com/random/1280x720?profile&5',
                                                                      width: 44,
                                                                      height:
                                                                          44,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional.fromSTEB(
                                                                      12,
                                                                      0,
                                                                      0,
                                                                      0,
                                                                    ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Haily Brown',
                                                                      style: GoogleFonts.plusJakartaSans(
                                                                        textStyle: Theme.of(
                                                                          context,
                                                                        ).textTheme.bodyLarge,
                                                                        color: const Color(
                                                                          0xFF15161E,
                                                                        ),
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight.w600,
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
                                                                        '@brownisthenewblack',
                                                                        style: GoogleFonts.plusJakartaSans(
                                                                          textStyle: Theme.of(
                                                                            context,
                                                                          ).textTheme.labelSmall,
                                                                          color: const Color(
                                                                            0xFF6F61EF,
                                                                          ),
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.w500,
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
                                                          padding:
                                                              EdgeInsetsDirectional.fromSTEB(
                                                                16,
                                                                0,
                                                                0,
                                                                0,
                                                              ),
                                                          child: Text(
                                                            'Address',
                                                            style: GoogleFonts.plusJakartaSans(
                                                              textStyle:
                                                                  Theme.of(
                                                                        context,
                                                                      )
                                                                      .textTheme
                                                                      .labelSmall,
                                                              color:
                                                                  const Color(
                                                                    0xFF606A85,
                                                                  ),
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional.fromSTEB(
                                                                16,
                                                                8,
                                                                0,
                                                                0,
                                                              ),
                                                          child: Text(
                                                            '123 West Hollywood Blvd. San Mateo, CA. 90294',
                                                            style: GoogleFonts.plusJakartaSans(
                                                              textStyle:
                                                                  Theme.of(
                                                                        context,
                                                                      )
                                                                      .textTheme
                                                                      .bodyMedium,
                                                              color:
                                                                  const Color(
                                                                    0xFF15161E,
                                                                  ),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 12),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                  0,
                                                  0,
                                                ),
                                                child: Padding(
                                                  padding:
                                                      EdgeInsetsDirectional.fromSTEB(
                                                        0,
                                                        12,
                                                        0,
                                                        0,
                                                      ),
                                                  child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ElevatedButton.styleFrom(
                                                      backgroundColor:
                                                          const Color(
                                                            0xFF6F61EF,
                                                          ),
                                                      elevation: 3,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              12,
                                                            ),
                                                      ),
                                                      minimumSize: const Size(
                                                        double.infinity,
                                                        48,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      'Message Customer',
                                                      style:
                                                          GoogleFonts.plusJakartaSans(
                                                            textStyle:
                                                                Theme.of(
                                                                      context,
                                                                    )
                                                                    .textTheme
                                                                    .titleSmall,
                                                            color: Colors.white,
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 12),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                  0,
                                                  0,
                                                ),
                                                child: Padding(
                                                  padding:
                                                      EdgeInsetsDirectional.fromSTEB(
                                                        0,
                                                        12,
                                                        0,
                                                        0,
                                                      ),
                                                  child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ElevatedButton.styleFrom(
                                                      backgroundColor:
                                                          Colors.white,
                                                      elevation: 0,
                                                      side: const BorderSide(
                                                        color: Color(
                                                          0xFFE5E7EB,
                                                        ),
                                                        width: 2,
                                                      ),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              12,
                                                            ),
                                                      ),
                                                      minimumSize: const Size(
                                                        double.infinity,
                                                        48,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      'Report Now',
                                                      style:
                                                          GoogleFonts.plusJakartaSans(
                                                            textStyle:
                                                                Theme.of(
                                                                      context,
                                                                    )
                                                                    .textTheme
                                                                    .bodyLarge,
                                                            color: const Color(
                                                              0xFF15161E,
                                                            ),
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    const SizedBox(width: 16),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
