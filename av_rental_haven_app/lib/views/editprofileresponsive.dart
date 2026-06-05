// ignore_for_file: avoid_print

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/editprofileresponsivemodel.dart';

class EditProfileReaponsiveWidget extends StatefulWidget {
  const EditProfileReaponsiveWidget({super.key});

  static String routeName = 'EditProfileReaponsive';
  static String routePath = '/editProfileReaponsive';

  @override
  State<EditProfileReaponsiveWidget> createState() =>
      _EditProfileReaponsiveWidgetState();
}

class _EditProfileReaponsiveWidgetState
    extends State<EditProfileReaponsiveWidget> {
  late EditProfileReaponsiveModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = EditProfileReaponsiveModel();
    _model.initState(context);
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: MediaQuery.sizeOf(context).width <= 991.0
          ? AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              title: Text(
                'My Profile',
                style: GoogleFonts.outfit(
                  color: Color(0xFF15161E),
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
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
          children: [
            if (MediaQuery.sizeOf(context).width > 991.0)
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
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
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
                                  color: const Color(0xFF15161E),
                                  fontSize: 24,
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
                                  color: const Color(0xFF606A85),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          12,
                                          0,
                                          0,
                                          0,
                                        ),
                                        child: Text(
                                          'Dashboard',
                                          style: GoogleFonts.plusJakartaSans(
                                            color: const Color(0xFF15161E),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          12,
                                          0,
                                          0,
                                          0,
                                        ),
                                        child: Text(
                                          'Chats',
                                          style: GoogleFonts.plusJakartaSans(
                                            color: const Color(0xFF15161E),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          12,
                                          0,
                                          0,
                                          0,
                                        ),
                                        child: Text(
                                          'Projects',
                                          style: GoogleFonts.plusJakartaSans(
                                            color: const Color(0xFF15161E),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
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
                                            style: GoogleFonts.plusJakartaSans(
                                              color: const Color(0xFF15161E),
                                              fontSize: 14,
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
                                          alignment: AlignmentDirectional(0, 0),
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
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
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
                            const SizedBox(height: 12),
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
                                  color: const Color(0xFF606A85),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          12,
                                          0,
                                          0,
                                          0,
                                        ),
                                        child: Text(
                                          'Billing',
                                          style: GoogleFonts.plusJakartaSans(
                                            color: const Color(0xFF15161E),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          12,
                                          0,
                                          0,
                                          0,
                                        ),
                                        child: Text(
                                          'Explore',
                                          style: GoogleFonts.plusJakartaSans(
                                            color: const Color(0xFF15161E),
                                            fontSize: 14,
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
                          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 16),
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
                                        // Theme handling
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
                                                Theme.of(context).brightness ==
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
                                        // Theme handling
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
                                                Theme.of(context).brightness ==
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
                        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
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
                                    fadeInDuration: Duration(milliseconds: 500),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Casper Ghost',
                                      style: GoogleFonts.plusJakartaSans(
                                        color: const Color(0xFF15161E),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'admin@gmail.com',
                                      style: GoogleFonts.plusJakartaSans(
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
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (MediaQuery.sizeOf(context).width > 991.0)
                        Container(
                          width: double.infinity,
                          height: 24,
                          decoration: BoxDecoration(),
                        ),
                      Align(
                        alignment: AlignmentDirectional(0, -1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                            16,
                            16,
                            16,
                            0,
                          ),
                          child: Wrap(
                            spacing: 16,
                            runSpacing: 16,
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.center,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: double.infinity,
                                constraints: BoxConstraints(maxWidth: 390),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Color(0xFFE5E7EB),
                                    width: 1,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 72,
                                            height: 72,
                                            decoration: BoxDecoration(
                                              color: Color(0x4D9489F5),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              border: Border.all(
                                                color: Color(0xFF6F61EF),
                                                width: 2,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(2),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
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
                                              padding:
                                                  EdgeInsetsDirectional.fromSTEB(
                                                    16,
                                                    4,
                                                    0,
                                                    4,
                                                  ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Casper Ghost',
                                                    style: GoogleFonts.outfit(
                                                      color: const Color(
                                                        0xFF15161E,
                                                      ),
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                      'casper@ghustbusters.com',
                                                      style:
                                                          GoogleFonts.plusJakartaSans(
                                                            color: const Color(
                                                              0xFF606A85,
                                                            ),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
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
                                    Divider(
                                      height: 2,
                                      thickness: 1,
                                      color: Color(0xFFE5E7EB),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                  0,
                                                  0,
                                                  0,
                                                  12,
                                                ),
                                            child: Container(
                                              width: 200,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Padding(
                                                padding:
                                                    EdgeInsetsDirectional.fromSTEB(
                                                      12,
                                                      12,
                                                      12,
                                                      0,
                                                    ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.receipt_rounded,
                                                      color: Color(0xFF6F61EF),
                                                      size: 44,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            8,
                                                            0,
                                                            4,
                                                          ),
                                                      child: Text(
                                                        '2,200',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            GoogleFonts.outfit(
                                                              color:
                                                                  const Color(
                                                                    0xFF15161E,
                                                                  ),
                                                              fontSize: 22,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                      ),
                                                    ),
                                                    Text(
                                                      'Orders Placed',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          GoogleFonts.plusJakartaSans(
                                                            color: const Color(
                                                              0xFF606A85,
                                                            ),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ],
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
                                                  0,
                                                  0,
                                                  12,
                                                ),
                                            child: Container(
                                              width: 200,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Padding(
                                                padding:
                                                    EdgeInsetsDirectional.fromSTEB(
                                                      12,
                                                      12,
                                                      12,
                                                      0,
                                                    ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.ssid_chart_rounded,
                                                      color: Color(0xFF6F61EF),
                                                      size: 44,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            8,
                                                            0,
                                                            4,
                                                          ),
                                                      child: Text(
                                                        '\$212.4k',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            GoogleFonts.outfit(
                                                              color:
                                                                  const Color(
                                                                    0xFF15161E,
                                                                  ),
                                                              fontSize: 22,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                      ),
                                                    ),
                                                    Text(
                                                      'Money Earned',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          GoogleFonts.plusJakartaSans(
                                                            color: const Color(
                                                              0xFF606A85,
                                                            ),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
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
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                constraints: BoxConstraints(maxWidth: 470),
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF1F4F8),
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                          color: Color(0xFFE5E7EB),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          16,
                                          12,
                                          0,
                                          12,
                                        ),
                                        child: Text(
                                          'My Account Information',
                                          style: GoogleFonts.plusJakartaSans(
                                            color: const Color(0xFF606A85),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        0,
                                        0,
                                        0,
                                        1,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 0,
                                              color: Color(0xFFE5E7EB),
                                              offset: Offset(0, 1),
                                            ),
                                          ],
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                16,
                                                0,
                                                16,
                                                0,
                                              ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Change Password',
                                                    style:
                                                        GoogleFonts.plusJakartaSans(
                                                          color: const Color(
                                                            0xFF15161E,
                                                          ),
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                            1,
                                                            0,
                                                          ),
                                                      child: Icon(
                                                        Icons
                                                            .chevron_right_rounded,
                                                        color: Color(
                                                          0xFF606A85,
                                                        ),
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        0,
                                        0,
                                        0,
                                        1,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 0,
                                              color: Color(0xFFE5E7EB),
                                              offset: Offset(0, 1),
                                            ),
                                          ],
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                16,
                                                0,
                                                16,
                                                0,
                                              ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Edit Profile',
                                                    style:
                                                        GoogleFonts.plusJakartaSans(
                                                          color: const Color(
                                                            0xFF15161E,
                                                          ),
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                            1,
                                                            0,
                                                          ),
                                                      child: Icon(
                                                        Icons
                                                            .chevron_right_rounded,
                                                        color: Color(
                                                          0xFF606A85,
                                                        ),
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        0,
                                        12,
                                        0,
                                        0,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF1F4F8),
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                          border: Border.all(
                                            color: Color(0xFFE5E7EB),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                16,
                                                12,
                                                0,
                                                12,
                                              ),
                                          child: Text(
                                            'Support',
                                            style: GoogleFonts.plusJakartaSans(
                                              color: const Color(0xFF606A85),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        0,
                                        0,
                                        0,
                                        1,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 0,
                                              color: Color(0xFFE5E7EB),
                                              offset: Offset(0, 1),
                                            ),
                                          ],
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                16,
                                                0,
                                                16,
                                                0,
                                              ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Tutorial',
                                                    style:
                                                        GoogleFonts.plusJakartaSans(
                                                          color: const Color(
                                                            0xFF15161E,
                                                          ),
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                            1,
                                                            0,
                                                          ),
                                                      child: Icon(
                                                        Icons
                                                            .chevron_right_rounded,
                                                        color: Color(
                                                          0xFF606A85,
                                                        ),
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        0,
                                        0,
                                        0,
                                        1,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 0,
                                              color: Color(0xFFE5E7EB),
                                              offset: Offset(0, 1),
                                            ),
                                          ],
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                16,
                                                0,
                                                16,
                                                0,
                                              ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Submit a Bug',
                                                    style:
                                                        GoogleFonts.plusJakartaSans(
                                                          color: const Color(
                                                            0xFF15161E,
                                                          ),
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                            1,
                                                            0,
                                                          ),
                                                      child: Icon(
                                                        Icons
                                                            .chevron_right_rounded,
                                                        color: Color(
                                                          0xFF606A85,
                                                        ),
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        0,
                                        0,
                                        0,
                                        1,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 0,
                                              color: Color(0xFFE5E7EB),
                                              offset: Offset(0, 1),
                                            ),
                                          ],
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                16,
                                                0,
                                                16,
                                                0,
                                              ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Submit a Feature Request',
                                                    style:
                                                        GoogleFonts.plusJakartaSans(
                                                          color: const Color(
                                                            0xFF15161E,
                                                          ),
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                            1,
                                                            0,
                                                          ),
                                                      child: Icon(
                                                        Icons
                                                            .chevron_right_rounded,
                                                        color: Color(
                                                          0xFF606A85,
                                                        ),
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, -1),
                                      child: Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Container(
                                          width: double.infinity,
                                          height: 50,
                                          constraints: BoxConstraints(
                                            maxWidth: 500,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF1F4F8),
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                            border: Border.all(
                                              color: Color(0xFFE5E7EB),
                                              width: 1,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(4),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      // Theme handling
                                                    },
                                                    child: Container(
                                                      width: 115,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Theme.of(
                                                                  context,
                                                                ).brightness ==
                                                                Brightness.light
                                                            ? Colors.white
                                                            : Color(0xFFF1F4F8),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              10,
                                                            ),
                                                        border: Border.all(
                                                          color:
                                                              Theme.of(
                                                                    context,
                                                                  ).brightness ==
                                                                  Brightness
                                                                      .light
                                                              ? const Color(
                                                                  0xFFE5E7EB,
                                                                )
                                                              : const Color(
                                                                  0xFFF1F4F8,
                                                                ),
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .wb_sunny_rounded,
                                                            color:
                                                                Theme.of(
                                                                      context,
                                                                    ).brightness ==
                                                                    Brightness
                                                                        .light
                                                                ? Color(
                                                                    0xFF15161E,
                                                                  )
                                                                : Color(
                                                                    0xFF606A85,
                                                                  ),
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
                                                              'Light ',
                                                              style: GoogleFonts.plusJakartaSans(
                                                                color:
                                                                    Theme.of(
                                                                          context,
                                                                        ).brightness ==
                                                                        Brightness
                                                                            .light
                                                                    ? const Color(
                                                                        0xFF15161E,
                                                                      )
                                                                    : const Color(
                                                                        0xFF606A85,
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
                                                Expanded(
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      // Theme handling
                                                    },
                                                    child: Container(
                                                      width: 115,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Theme.of(
                                                                  context,
                                                                ).brightness ==
                                                                Brightness.dark
                                                            ? Colors.white
                                                            : Color(0xFFF1F4F8),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              10,
                                                            ),
                                                        border: Border.all(
                                                          color:
                                                              Theme.of(
                                                                    context,
                                                                  ).brightness ==
                                                                  Brightness
                                                                      .dark
                                                              ? Color(
                                                                  0xFFE5E7EB,
                                                                )
                                                              : Color(
                                                                  0xFFF1F4F8,
                                                                ),
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .nightlight_round,
                                                            color:
                                                                Theme.of(
                                                                      context,
                                                                    ).brightness ==
                                                                    Brightness
                                                                        .dark
                                                                ? Color(
                                                                    0xFF15161E,
                                                                  )
                                                                : Color(
                                                                    0xFF606A85,
                                                                  ),
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
                                                              'Dark',
                                                              style: GoogleFonts.plusJakartaSans(
                                                                color:
                                                                    Theme.of(
                                                                          context,
                                                                        ).brightness ==
                                                                        Brightness
                                                                            .dark
                                                                    ? const Color(
                                                                        0xFF15161E,
                                                                      )
                                                                    : const Color(
                                                                        0xFF606A85,
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
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, -1),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          0,
                                          24,
                                          0,
                                          0,
                                        ),
                                        child: OutlinedButton(
                                          onPressed: () =>
                                              print('Button pressed ...'),
                                          style: OutlinedButton.styleFrom(
                                            fixedSize: const Size(130, 50),
                                            backgroundColor: Colors.white,
                                            side: const BorderSide(
                                              color: Color(0xFFE5E7EB),
                                              width: 2,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                          child: Text(
                                            'Log Out',
                                            style: GoogleFonts.plusJakartaSans(
                                              color: const Color(0xFF606A85),
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
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 72),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
