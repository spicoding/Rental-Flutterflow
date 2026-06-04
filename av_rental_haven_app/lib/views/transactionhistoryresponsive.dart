import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'transaction_history_responsive_model.dart';
export 'transaction_history_responsive_model.dart';

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
        appBar: MediaQuery.sizeOf(context).width <= 991.0
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
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
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
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        font: GoogleFonts.outfit(
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FlutterFlowTheme.of(
                                            context,
                                          ).headlineMedium.fontStyle,
                                        ),
                                        color: Color(0xFF15161E),
                                        fontSize: 24,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(
                                          context,
                                        ).headlineMedium.fontStyle,
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
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.plusJakartaSans(
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FlutterFlowTheme.of(
                                            context,
                                          ).labelMedium.fontStyle,
                                        ),
                                        color: Color(0xFF606A85),
                                        fontSize: 14,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(
                                          context,
                                        ).labelMedium.fontStyle,
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font:
                                                      GoogleFonts.plusJakartaSans(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                )
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  color: Color(0xFF15161E),
                                                  fontSize: 14,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).bodyMedium.fontStyle,
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font:
                                                      GoogleFonts.plusJakartaSans(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                )
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  color: Color(0xFF15161E),
                                                  fontSize: 14,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).bodyMedium.fontStyle,
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font:
                                                      GoogleFonts.plusJakartaSans(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                )
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  color: Color(0xFF15161E),
                                                  fontSize: 14,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).bodyMedium.fontStyle,
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
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).bodyMedium.override(
                                                    font: GoogleFonts.plusJakartaSans(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                context,
                                                              )
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: Color(0xFF15161E),
                                                    fontSize: 14,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).bodyMedium.fontStyle,
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
                                                    FlutterFlowTheme.of(
                                                      context,
                                                    ).bodyMedium.override(
                                                      font: GoogleFonts.plusJakartaSans(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                )
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                context,
                                                              )
                                                              .bodyMedium
                                                              .fontStyle,
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
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.plusJakartaSans(
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FlutterFlowTheme.of(
                                            context,
                                          ).labelMedium.fontStyle,
                                        ),
                                        color: Color(0xFF606A85),
                                        fontSize: 14,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(
                                          context,
                                        ).labelMedium.fontStyle,
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font:
                                                      GoogleFonts.plusJakartaSans(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                )
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  color: Color(0xFF15161E),
                                                  fontSize: 14,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).bodyMedium.fontStyle,
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font:
                                                      GoogleFonts.plusJakartaSans(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                )
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  color: Color(0xFF15161E),
                                                  fontSize: 14,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).bodyMedium.fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 12)),
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
                                          setDarkModeSetting(
                                            context,
                                            ThemeMode.light,
                                          );
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
                                              color: valueOrDefault<Color>(
                                                Theme.of(context).brightness ==
                                                        Brightness.light
                                                    ? Color(0xFFE5E7EB)
                                                    : Color(0xFFF1F4F8),
                                                Color(0xFFE5E7EB),
                                              ),
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
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).bodyMedium.override(
                                                        font: GoogleFonts.plusJakartaSans(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Theme.of(
                                                                  context,
                                                                ).brightness ==
                                                                Brightness.light
                                                            ? Color(0xFF15161E)
                                                            : Color(0xFF606A85),
                                                        fontSize: 14,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                )
                                                                .bodyMedium
                                                                .fontStyle,
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
                                          setDarkModeSetting(
                                            context,
                                            ThemeMode.dark,
                                          );
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
                                              color: valueOrDefault<Color>(
                                                Theme.of(context).brightness ==
                                                        Brightness.dark
                                                    ? Color(0xFFE5E7EB)
                                                    : Color(0xFFF1F4F8),
                                                Color(0xFFF1F4F8),
                                              ),
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
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).bodyMedium.override(
                                                        font: GoogleFonts.plusJakartaSans(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Theme.of(
                                                                  context,
                                                                ).brightness ==
                                                                Brightness.dark
                                                            ? Color(0xFF15161E)
                                                            : Color(0xFF606A85),
                                                        fontSize: 14,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                )
                                                                .bodyMedium
                                                                .fontStyle,
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
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              font: GoogleFonts.plusJakartaSans(
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FlutterFlowTheme.of(
                                                  context,
                                                ).bodyLarge.fontStyle,
                                              ),
                                              color: Color(0xFF15161E),
                                              fontSize: 16,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterFlowTheme.of(
                                                context,
                                              ).bodyLarge.fontStyle,
                                            ),
                                      ),
                                      Text(
                                        'admin@gmail.com',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.plusJakartaSans(
                                                fontWeight: FontWeight.w500,
                                                fontStyle: FlutterFlowTheme.of(
                                                  context,
                                                ).labelMedium.fontStyle,
                                              ),
                                              color: Color(0xFF606A85),
                                              fontSize: 14,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FlutterFlowTheme.of(
                                                context,
                                              ).labelMedium.fontStyle,
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
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                ))
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
                                            child: FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30,
                                              borderWidth: 1,
                                              buttonSize: 40,
                                              icon: Icon(
                                                Icons.home_rounded,
                                                color: Color(0xFF606A85),
                                                size: 22,
                                              ),
                                              onPressed: () {
                                                print('IconButton pressed ...');
                                              },
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
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).bodyMedium.override(
                                                        font: GoogleFonts.plusJakartaSans(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: Color(
                                                          0xFF6F61EF,
                                                        ),
                                                        fontSize: 14,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                )
                                                                .bodyMedium
                                                                .fontStyle,
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
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          font: GoogleFonts.outfit(
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).headlineSmall.fontStyle,
                                          ),
                                          color: Color(0xFF15161E),
                                          fontSize: 22,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FlutterFlowTheme.of(
                                            context,
                                          ).headlineSmall.fontStyle,
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
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.plusJakartaSans(
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).labelMedium.fontStyle,
                                          ),
                                          color: Color(0xFF606A85),
                                          fontSize: 14,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FlutterFlowTheme.of(
                                            context,
                                          ).labelMedium.fontStyle,
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
                                              style:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).headlineMedium.override(
                                                    font: GoogleFonts.outfit(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                context,
                                                              )
                                                              .headlineMedium
                                                              .fontStyle,
                                                    ),
                                                    color: Color(0xFF15161E),
                                                    fontSize: 24,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                              context,
                                                            )
                                                            .headlineMedium
                                                            .fontStyle,
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
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).labelMedium.override(
                                                          font: GoogleFonts.plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                      context,
                                                                    )
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Color(
                                                            0xFF606A85,
                                                          ),
                                                          fontSize: 14,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                  Text(
                                                    'TXN123456789',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).bodyMedium.override(
                                                          font: GoogleFonts.plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Color(
                                                            0xFF15161E,
                                                          ),
                                                          fontSize: 14,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ],
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
                                                    'Date',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).labelMedium.override(
                                                          font: GoogleFonts.plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                      context,
                                                                    )
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Color(
                                                            0xFF606A85,
                                                          ),
                                                          fontSize: 14,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                  Text(
                                                    'Fri, Jun 23 - 4:30pm',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).bodyMedium.override(
                                                          font: GoogleFonts.plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Color(
                                                            0xFF15161E,
                                                          ),
                                                          fontSize: 14,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ],
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
                                                    'Amount',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).labelMedium.override(
                                                          font: GoogleFonts.plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                      context,
                                                                    )
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Color(
                                                            0xFF606A85,
                                                          ),
                                                          fontSize: 14,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                  Text(
                                                    '\$500.00',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).bodyMedium.override(
                                                          font: GoogleFonts.plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Color(
                                                            0xFF15161E,
                                                          ),
                                                          fontSize: 14,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ],
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
                                                    'Status',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).labelMedium.override(
                                                          font: GoogleFonts.plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                      context,
                                                                    )
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Color(
                                                            0xFF606A85,
                                                          ),
                                                          fontSize: 14,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                  Text(
                                                    'Completed',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).bodyMedium.override(
                                                          font: GoogleFonts.plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Color(
                                                            0xFF15161E,
                                                          ),
                                                          fontSize: 14,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ],
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
                                                    'Payment Method',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).labelMedium.override(
                                                          font: GoogleFonts.plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                      context,
                                                                    )
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Color(
                                                            0xFF606A85,
                                                          ),
                                                          fontSize: 14,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                  Text(
                                                    'Visa ****1234',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).bodyMedium.override(
                                                          font: GoogleFonts.plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Color(
                                                            0xFF15161E,
                                                          ),
                                                          fontSize: 14,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
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
                                                    FlutterFlowTheme.of(
                                                      context,
                                                    ).bodyLarge.override(
                                                      font: GoogleFonts.plusJakartaSans(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                )
                                                                .bodyLarge
                                                                .fontStyle,
                                                      ),
                                                      color: Color(0xFF15161E),
                                                      fontSize: 16,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                            context,
                                                          ).bodyLarge.fontStyle,
                                                    ),
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
                                                    'Subtotal',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).labelMedium.override(
                                                          font: GoogleFonts.plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                      context,
                                                                    )
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Color(
                                                            0xFF606A85,
                                                          ),
                                                          fontSize: 14,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                  Text(
                                                    '\$480.00',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).bodyMedium.override(
                                                          font: GoogleFonts.plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Color(
                                                            0xFF15161E,
                                                          ),
                                                          fontSize: 14,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ],
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
                                                    'Tax',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).labelMedium.override(
                                                          font: GoogleFonts.plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                      context,
                                                                    )
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Color(
                                                            0xFF606A85,
                                                          ),
                                                          fontSize: 14,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                  Text(
                                                    '\$20.00',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).bodyMedium.override(
                                                          font: GoogleFonts.plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Color(
                                                            0xFF15161E,
                                                          ),
                                                          fontSize: 14,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ],
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
                                                    'Total',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).labelLarge.override(
                                                          font: GoogleFonts.plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                      context,
                                                                    )
                                                                    .labelLarge
                                                                    .fontStyle,
                                                          ),
                                                          color: Color(
                                                            0xFF606A85,
                                                          ),
                                                          fontSize: 16,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                  Text(
                                                    '\$500.00',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).headlineSmall.override(
                                                          font: GoogleFonts.outfit(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                      context,
                                                                    )
                                                                    .headlineSmall
                                                                    .fontStyle,
                                                          ),
                                                          color: Color(
                                                            0xFF15161E,
                                                          ),
                                                          fontSize: 22,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .headlineSmall
                                                                  .fontStyle,
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
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).labelMedium.override(
                                                    font: GoogleFonts.plusJakartaSans(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                context,
                                                              )
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                                    color: Color(0xFF606A85),
                                                    fontSize: 14,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).labelMedium.fontStyle,
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
                                                    FlutterFlowTheme.of(
                                                      context,
                                                    ).bodyLarge.override(
                                                      font: GoogleFonts.plusJakartaSans(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                )
                                                                .bodyLarge
                                                                .fontStyle,
                                                      ),
                                                      color: Color(0xFF15161E),
                                                      fontSize: 16,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                            context,
                                                          ).bodyLarge.fontStyle,
                                                    ),
                                              ),
                                            ),

                                            // Create this as a component if you want to use it best.
                                            if (responsiveVisibility(
                                              context: context,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
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
                                                        style:
                                                            FlutterFlowTheme.of(
                                                              context,
                                                            ).labelMedium.override(
                                                              font: GoogleFonts.plusJakartaSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle:
                                                                    FlutterFlowTheme.of(
                                                                          context,
                                                                        )
                                                                        .labelMedium
                                                                        .fontStyle,
                                                              ),
                                                              color: Color(
                                                                0xFF606A85,
                                                              ),
                                                              fontSize: 14,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                        context,
                                                                      )
                                                                      .labelMedium
                                                                      .fontStyle,
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
                                                                            style:
                                                                                FlutterFlowTheme.of(
                                                                                  context,
                                                                                ).bodyLarge.override(
                                                                                  font: GoogleFonts.plusJakartaSans(
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontStyle: FlutterFlowTheme.of(
                                                                                      context,
                                                                                    ).bodyLarge.fontStyle,
                                                                                  ),
                                                                                  color: Color(
                                                                                    0xFF15161E,
                                                                                  ),
                                                                                  fontSize: 16,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  fontStyle: FlutterFlowTheme.of(
                                                                                    context,
                                                                                  ).bodyLarge.fontStyle,
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
                                                                              style:
                                                                                  FlutterFlowTheme.of(
                                                                                    context,
                                                                                  ).labelSmall.override(
                                                                                    font: GoogleFonts.plusJakartaSans(
                                                                                      fontWeight: FontWeight.w500,
                                                                                      fontStyle: FlutterFlowTheme.of(
                                                                                        context,
                                                                                      ).labelSmall.fontStyle,
                                                                                    ),
                                                                                    color: Color(
                                                                                      0xFF6F61EF,
                                                                                    ),
                                                                                    fontSize: 12,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(
                                                                                      context,
                                                                                    ).labelSmall.fontStyle,
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
                                                                  style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                    font: GoogleFonts.plusJakartaSans(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                        context,
                                                                      ).labelSmall.fontStyle,
                                                                    ),
                                                                    color: Color(
                                                                      0xFF606A85,
                                                                    ),
                                                                    fontSize:
                                                                        12,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle:
                                                                        FlutterFlowTheme.of(
                                                                          context,
                                                                        ).labelSmall.fontStyle,
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
                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                    font: GoogleFonts.plusJakartaSans(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                        context,
                                                                      ).bodyMedium.fontStyle,
                                                                    ),
                                                                    color: Color(
                                                                      0xFF15161E,
                                                                    ),
                                                                    fontSize:
                                                                        14,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle:
                                                                        FlutterFlowTheme.of(
                                                                          context,
                                                                        ).bodyMedium.fontStyle,
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
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional.fromSTEB(
                                                                  0,
                                                                  12,
                                                                  0,
                                                                  0,
                                                                ),
                                                            child: FFButtonWidget(
                                                              onPressed: () {
                                                                print(
                                                                  'Button pressed ...',
                                                                );
                                                              },
                                                              text:
                                                                  'Report Now',
                                                              options: FFButtonOptions(
                                                                height: 48,
                                                                padding:
                                                                    EdgeInsetsDirectional.fromSTEB(
                                                                      16,
                                                                      0,
                                                                      16,
                                                                      0,
                                                                    ),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional.fromSTEB(
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0,
                                                                    ),
                                                                color: Colors
                                                                    .white,
                                                                textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                  font: GoogleFonts.plusJakartaSans(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle:
                                                                        FlutterFlowTheme.of(
                                                                          context,
                                                                        ).bodyLarge.fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                    0xFF15161E,
                                                                  ),
                                                                  fontSize: 16,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle:
                                                                      FlutterFlowTheme.of(
                                                                        context,
                                                                      ).bodyLarge.fontStyle,
                                                                ),
                                                                elevation: 0,
                                                                borderSide:
                                                                    BorderSide(
                                                                      color: Color(
                                                                        0xFFE5E7EB,
                                                                      ),
                                                                      width: 2,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      12,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional.fromSTEB(
                                                                  0,
                                                                  12,
                                                                  0,
                                                                  0,
                                                                ),
                                                            child: FFButtonWidget(
                                                              onPressed: () {
                                                                print(
                                                                  'Button pressed ...',
                                                                );
                                                              },
                                                              text: 'Message',
                                                              options: FFButtonOptions(
                                                                height: 48,
                                                                padding:
                                                                    EdgeInsetsDirectional.fromSTEB(
                                                                      16,
                                                                      0,
                                                                      16,
                                                                      0,
                                                                    ),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional.fromSTEB(
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0,
                                                                    ),
                                                                color: Color(
                                                                  0xFF6F61EF,
                                                                ),
                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                  font: GoogleFonts.plusJakartaSans(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle:
                                                                        FlutterFlowTheme.of(
                                                                          context,
                                                                        ).titleSmall.fontStyle,
                                                                  ),
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 16,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle:
                                                                      FlutterFlowTheme.of(
                                                                        context,
                                                                      ).titleSmall.fontStyle,
                                                                ),
                                                                elevation: 3,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      12,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(width: 16)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    // Create this as a component if you want to use it best.
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                    ))
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
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).labelMedium.override(
                                                        font: GoogleFonts.plusJakartaSans(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: Color(
                                                          0xFF606A85,
                                                        ),
                                                        fontSize: 14,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                )
                                                                .labelMedium
                                                                .fontStyle,
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
                                                                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                        font: GoogleFonts.plusJakartaSans(
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(
                                                                            context,
                                                                          ).bodyLarge.fontStyle,
                                                                        ),
                                                                        color: Color(
                                                                          0xFF15161E,
                                                                        ),
                                                                        fontSize:
                                                                            16,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(
                                                                          context,
                                                                        ).bodyLarge.fontStyle,
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
                                                                        style:
                                                                            FlutterFlowTheme.of(
                                                                              context,
                                                                            ).labelSmall.override(
                                                                              font: GoogleFonts.plusJakartaSans(
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FlutterFlowTheme.of(
                                                                                  context,
                                                                                ).labelSmall.fontStyle,
                                                                              ),
                                                                              color: Color(
                                                                                0xFF6F61EF,
                                                                              ),
                                                                              fontSize: 12,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              fontStyle: FlutterFlowTheme.of(
                                                                                context,
                                                                              ).labelSmall.fontStyle,
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
                                                            style: FlutterFlowTheme.of(context).labelSmall.override(
                                                              font: GoogleFonts.plusJakartaSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle:
                                                                    FlutterFlowTheme.of(
                                                                          context,
                                                                        )
                                                                        .labelSmall
                                                                        .fontStyle,
                                                              ),
                                                              color: Color(
                                                                0xFF606A85,
                                                              ),
                                                              fontSize: 12,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                        context,
                                                                      )
                                                                      .labelSmall
                                                                      .fontStyle,
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
                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              font: GoogleFonts.plusJakartaSans(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle:
                                                                    FlutterFlowTheme.of(
                                                                          context,
                                                                        )
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                              ),
                                                              color: Color(
                                                                0xFF15161E,
                                                              ),
                                                              fontSize: 14,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                        context,
                                                                      )
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
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
                                                  child: FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                        'Button pressed ...',
                                                      );
                                                    },
                                                    text: 'Message Customer',
                                                    options: FFButtonOptions(
                                                      width: double.infinity,
                                                      height: 48,
                                                      padding:
                                                          EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            0,
                                                            0,
                                                            0,
                                                          ),
                                                      iconPadding:
                                                          EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            0,
                                                            0,
                                                            0,
                                                          ),
                                                      color: Color(0xFF6F61EF),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                            context,
                                                          ).titleSmall.override(
                                                            font: GoogleFonts.plusJakartaSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                        context,
                                                                      )
                                                                      .titleSmall
                                                                      .fontStyle,
                                                            ),
                                                            color: Colors.white,
                                                            fontSize: 16,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                      context,
                                                                    )
                                                                    .titleSmall
                                                                    .fontStyle,
                                                          ),
                                                      elevation: 3,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            12,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
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
                                                  child: FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                        'Button pressed ...',
                                                      );
                                                    },
                                                    text: 'Report Now',
                                                    options: FFButtonOptions(
                                                      width: double.infinity,
                                                      height: 48,
                                                      padding:
                                                          EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            0,
                                                            0,
                                                            0,
                                                          ),
                                                      iconPadding:
                                                          EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            0,
                                                            0,
                                                            0,
                                                          ),
                                                      color: Colors.white,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                            context,
                                                          ).bodyLarge.override(
                                                            font: GoogleFonts.plusJakartaSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                        context,
                                                                      )
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                            ),
                                                            color: Color(
                                                              0xFF15161E,
                                                            ),
                                                            fontSize: 16,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                      context,
                                                                    )
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                      elevation: 0,
                                                      borderSide: BorderSide(
                                                        color: Color(
                                                          0xFFE5E7EB,
                                                        ),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            12,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                  ].divide(SizedBox(width: 16)),
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
