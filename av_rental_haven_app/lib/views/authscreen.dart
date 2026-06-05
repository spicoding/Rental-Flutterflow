import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/auth_screen_model.dart';
import 'forgotpassword01.dart';

class AuthScreenWidget extends StatefulWidget {
  const AuthScreenWidget({super.key});

  static String routeName = 'AuthScreen';
  static String routePath = '/authScreen';

  @override
  State<AuthScreenWidget> createState() => _AuthScreenWidgetState();
}

class _AuthScreenWidgetState extends State<AuthScreenWidget>
    with TickerProviderStateMixin {
  late AuthScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  bool? get isAndroid => null;

  @override
  void initState() {
    super.initState();
    _model = AuthScreenModel();

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  width: 100,
                  height: double.infinity,
                  decoration: BoxDecoration(color: Colors.white),
                  alignment: AlignmentDirectional(0, -1),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
                          child: Container(
                            width: double.infinity,
                            constraints: BoxConstraints(maxWidth: 602),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16),
                              ),
                            ),
                            alignment: AlignmentDirectional(-1, 0),
                            child: Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      16,
                                      0,
                                      0,
                                      0,
                                    ),
                                    child: Text(
                                      'AV Rental Haven',
                                      style: GoogleFonts.plusJakartaSans(
                                        color: const Color(0xFF101213),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 700,
                          constraints: BoxConstraints(maxWidth: 602),
                          decoration: BoxDecoration(color: Colors.white),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              16,
                              0,
                              16,
                              0,
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment(-1, 0),
                                  child: TabBar(
                                    isScrollable: true,
                                    labelColor: Color(0xFF101213),
                                    unselectedLabelColor: Color(0xFF57636C),
                                    labelPadding: EdgeInsets.all(16),
                                    labelStyle: GoogleFonts.plusJakartaSans(
                                      color: const Color(0xFF101213),
                                      fontSize: 36,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    unselectedLabelStyle:
                                        GoogleFonts.plusJakartaSans(
                                          color: const Color(0xFF101213),
                                          fontSize: 36,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    indicatorColor: Color(0xFF4B39EF),
                                    indicatorWeight: 4,
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                          0,
                                          12,
                                          16,
                                          12,
                                        ),
                                    tabs: [
                                      Tab(text: 'Sign In'),
                                      Tab(text: 'Sign Up'),
                                    ],
                                    controller: _model.tabBarController,
                                    onTap: (i) async {
                                      [() async {}, () async {}][i]();
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: TabBarView(
                                    controller: _model.tabBarController,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                12,
                                                0,
                                                12,
                                                12,
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
                                                      12,
                                                      0,
                                                      24,
                                                    ),
                                                child: Text(
                                                  'Let\'s get started by filling out the form below.',
                                                  style:
                                                      GoogleFonts.plusJakartaSans(
                                                        color: const Color(
                                                          0xFF57636C,
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
                                                      16,
                                                    ),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .emailAddressTextController,
                                                    focusNode: _model
                                                        .emailAddressFocusNode,
                                                    onFieldSubmitted:
                                                        (_) async {
                                                          // Sign in logic
                                                        },
                                                    autofocus: true,
                                                    autofillHints: [
                                                      AutofillHints.email,
                                                    ],
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Email',
                                                      labelStyle:
                                                          GoogleFonts.plusJakartaSans(
                                                            color: const Color(
                                                              0xFF57636C,
                                                            ),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0xFFE0E3E7,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0xFF4B39EF,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0xFFFF5963,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0xFFFF5963,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      filled: true,
                                                      fillColor: Colors.white,
                                                      contentPadding:
                                                          EdgeInsets.all(24),
                                                    ),
                                                    style:
                                                        GoogleFonts.plusJakartaSans(
                                                          color: const Color(
                                                            0xFF101213,
                                                          ),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                    keyboardType: TextInputType
                                                        .emailAddress,
                                                    cursorColor: Color(
                                                      0xFF4B39EF,
                                                    ),
                                                    validator: (val) => _model
                                                        .emailAddressTextControllerValidator
                                                        ?.call(context, val),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.fromSTEB(
                                                      0,
                                                      0,
                                                      0,
                                                      16,
                                                    ),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .passwordTextController,
                                                    focusNode: _model
                                                        .passwordFocusNode,
                                                    onFieldSubmitted:
                                                        (_) async {
                                                          // Sign in logic
                                                        },
                                                    autofocus: false,
                                                    autofillHints: [
                                                      AutofillHints.password,
                                                    ],
                                                    obscureText: !_model
                                                        .passwordVisibility,
                                                    decoration: InputDecoration(
                                                      labelText: 'Password',
                                                      labelStyle:
                                                          GoogleFonts.plusJakartaSans(
                                                            color: const Color(
                                                              0xFF57636C,
                                                            ),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0xFFE0E3E7,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0xFF4B39EF,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0xFFFF5963,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0xFFFF5963,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      filled: true,
                                                      fillColor: Colors.white,
                                                      contentPadding:
                                                          EdgeInsets.all(24),
                                                      suffixIcon: InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            _model.passwordVisibility =
                                                                !_model
                                                                    .passwordVisibility;
                                                          });
                                                        },
                                                        focusNode: FocusNode(
                                                          skipTraversal: true,
                                                        ),
                                                        child: Icon(
                                                          _model.passwordVisibility
                                                              ? Icons
                                                                    .visibility_outlined
                                                              : Icons
                                                                    .visibility_off_outlined,
                                                          color: Color(
                                                            0xFF57636C,
                                                          ),
                                                          size: 24,
                                                        ),
                                                      ),
                                                    ),
                                                    style:
                                                        GoogleFonts.plusJakartaSans(
                                                          color: const Color(
                                                            0xFF101213,
                                                          ),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                    cursorColor: Color(
                                                      0xFF4B39EF,
                                                    ),
                                                    validator: (val) => _model
                                                        .passwordTextControllerValidator
                                                        ?.call(context, val),
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
                                                        0,
                                                        0,
                                                        16,
                                                      ),
                                                  child: ElevatedButton(
                                                    onPressed: () async {
                                                      // Sign in logic
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                      backgroundColor:
                                                          const Color(
                                                            0xFF4B39EF,
                                                          ),
                                                      foregroundColor:
                                                          Colors.white,
                                                      minimumSize: const Size(
                                                        230,
                                                        52,
                                                      ),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              40,
                                                            ),
                                                      ),
                                                      elevation: 3,
                                                    ),
                                                    child: Text(
                                                      'Sign In',
                                                      style:
                                                          GoogleFonts.plusJakartaSans(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w500,
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
                                                        0,
                                                        0,
                                                        16,
                                                      ),
                                                  child: TextButton(
                                                    onPressed: () async {
                                                      Navigator.of(
                                                        context,
                                                      ).pushNamed(
                                                        ForgotPassword01Widget
                                                            .routeName,
                                                      );
                                                    },
                                                    style: TextButton.styleFrom(
                                                      minimumSize: const Size(
                                                        230,
                                                        44,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      'Forgot Password',
                                                      style:
                                                          GoogleFonts.plusJakartaSans(
                                                            color: const Color(
                                                              0xFF101213,
                                                            ),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                          0,
                                                          0,
                                                        ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional.fromSTEB(
                                                            16,
                                                            0,
                                                            16,
                                                            24,
                                                          ),
                                                      child: Text(
                                                        'Or sign up with',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            GoogleFonts.plusJakartaSans(
                                                              color:
                                                                  const Color(
                                                                    0xFF57636C,
                                                                  ),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                          0,
                                                          0,
                                                        ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            0,
                                                            0,
                                                            16,
                                                          ),
                                                      child: Wrap(
                                                        spacing: 16,
                                                        runSpacing: 0,
                                                        alignment: WrapAlignment
                                                            .center,
                                                        crossAxisAlignment:
                                                            WrapCrossAlignment
                                                                .center,
                                                        direction:
                                                            Axis.horizontal,
                                                        runAlignment:
                                                            WrapAlignment
                                                                .center,
                                                        verticalDirection:
                                                            VerticalDirection
                                                                .down,
                                                        clipBehavior: Clip.none,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional.fromSTEB(
                                                                  0,
                                                                  0,
                                                                  0,
                                                                  16,
                                                                ),
                                                            child: OutlinedButton.icon(
                                                              onPressed: () async {
                                                                // Google sign in logic
                                                              },
                                                              icon: const FaIcon(
                                                                FontAwesomeIcons
                                                                    .google,
                                                                size: 20,
                                                              ),
                                                              label: const Text(
                                                                'Continue with Google',
                                                              ),
                                                              style: OutlinedButton.styleFrom(
                                                                minimumSize:
                                                                    const Size(
                                                                      230,
                                                                      44,
                                                                    ),
                                                                side: const BorderSide(
                                                                  color: Color(
                                                                    0xFFE0E3E7,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                                shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        40,
                                                                      ),
                                                                ),
                                                                foregroundColor:
                                                                    const Color(
                                                                      0xFF101213,
                                                                    ),
                                                                textStyle: GoogleFonts.plusJakartaSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 14,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          if (!isAndroid!)
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional.fromSTEB(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    16,
                                                                  ),
                                                              child: OutlinedButton.icon(
                                                                onPressed:
                                                                    () async {
                                                                      // Apple sign in logic
                                                                    },
                                                                icon: const FaIcon(
                                                                  FontAwesomeIcons
                                                                      .apple,
                                                                  size: 20,
                                                                ),
                                                                label: const Text(
                                                                  'Continue with Apple',
                                                                ),
                                                                style: OutlinedButton.styleFrom(
                                                                  minimumSize:
                                                                      const Size(
                                                                        230,
                                                                        44,
                                                                      ),
                                                                  side: const BorderSide(
                                                                    color: Color(
                                                                      0xFFE0E3E7,
                                                                    ),
                                                                    width: 2,
                                                                  ),
                                                                  shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          40,
                                                                        ),
                                                                  ),
                                                                  foregroundColor:
                                                                      const Color(
                                                                        0xFF101213,
                                                                      ),
                                                                  textStyle: GoogleFonts.plusJakartaSans(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        14,
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
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                12,
                                                0,
                                                12,
                                                12,
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
                                                      12,
                                                      0,
                                                      24,
                                                    ),
                                                child: Text(
                                                  'Let\'s get started by filling out the form below.',
                                                  style:
                                                      GoogleFonts.plusJakartaSans(
                                                        color: const Color(
                                                          0xFF57636C,
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
                                                      16,
                                                    ),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .emailAddressCreateTextController,
                                                    focusNode: _model
                                                        .emailAddressCreateFocusNode,
                                                    onFieldSubmitted: (_) async {
                                                      // Create account logic
                                                    },
                                                    autofocus: true,
                                                    autofillHints: [
                                                      AutofillHints.email,
                                                    ],
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Email',
                                                      labelStyle:
                                                          GoogleFonts.plusJakartaSans(
                                                            color: const Color(
                                                              0xFF57636C,
                                                            ),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0xFFE0E3E7,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0xFF4B39EF,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0xFFFF5963,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0xFFFF5963,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      filled: true,
                                                      fillColor: Colors.white,
                                                      contentPadding:
                                                          EdgeInsets.all(24),
                                                    ),
                                                    style:
                                                        GoogleFonts.plusJakartaSans(
                                                          color: const Color(
                                                            0xFF101213,
                                                          ),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                    keyboardType: TextInputType
                                                        .emailAddress,
                                                    cursorColor: Color(
                                                      0xFF4B39EF,
                                                    ),
                                                    validator: (val) => _model
                                                        .emailAddressCreateTextControllerValidator
                                                        ?.call(context, val),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.fromSTEB(
                                                      0,
                                                      0,
                                                      0,
                                                      16,
                                                    ),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .passwordCreateTextController,
                                                    focusNode: _model
                                                        .passwordCreateFocusNode,
                                                    autofocus: false,
                                                    autofillHints: [
                                                      AutofillHints.password,
                                                    ],
                                                    obscureText: !_model
                                                        .passwordCreateVisibility,
                                                    decoration: InputDecoration(
                                                      labelText: 'Password',
                                                      labelStyle:
                                                          GoogleFonts.plusJakartaSans(
                                                            color: const Color(
                                                              0xFF57636C,
                                                            ),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0xFFE0E3E7,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0xFF4B39EF,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0xFFFF5963,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0xFFFF5963,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      filled: true,
                                                      fillColor: Colors.white,
                                                      contentPadding:
                                                          EdgeInsets.all(24),
                                                      suffixIcon: InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            _model.passwordCreateVisibility =
                                                                !_model
                                                                    .passwordCreateVisibility;
                                                          });
                                                        },
                                                        focusNode: FocusNode(
                                                          skipTraversal: true,
                                                        ),
                                                        child: Icon(
                                                          _model.passwordCreateVisibility
                                                              ? Icons
                                                                    .visibility_outlined
                                                              : Icons
                                                                    .visibility_off_outlined,
                                                          color: Color(
                                                            0xFF57636C,
                                                          ),
                                                          size: 24,
                                                        ),
                                                      ),
                                                    ),
                                                    style:
                                                        GoogleFonts.plusJakartaSans(
                                                          color: const Color(
                                                            0xFF101213,
                                                          ),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                    cursorColor: Color(
                                                      0xFF4B39EF,
                                                    ),
                                                    validator: (val) => _model
                                                        .passwordCreateTextControllerValidator
                                                        ?.call(context, val),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.fromSTEB(
                                                      0,
                                                      0,
                                                      0,
                                                      16,
                                                    ),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .passwordConfirmTextController,
                                                    focusNode: _model
                                                        .passwordConfirmFocusNode,
                                                    autofocus: false,
                                                    autofillHints: [
                                                      AutofillHints.password,
                                                    ],
                                                    obscureText: !_model
                                                        .passwordConfirmVisibility,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                          'Confirm Password',
                                                      labelStyle:
                                                          GoogleFonts.plusJakartaSans(
                                                            color: const Color(
                                                              0xFF57636C,
                                                            ),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0xFFE0E3E7,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0xFF4B39EF,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0xFFFF5963,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                  color: Color(
                                                                    0xFFFF5963,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      filled: true,
                                                      fillColor: Colors.white,
                                                      contentPadding:
                                                          EdgeInsets.all(24),
                                                      suffixIcon: InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            _model.passwordConfirmVisibility =
                                                                !_model
                                                                    .passwordConfirmVisibility;
                                                          });
                                                        },
                                                        focusNode: FocusNode(
                                                          skipTraversal: true,
                                                        ),
                                                        child: Icon(
                                                          _model.passwordConfirmVisibility
                                                              ? Icons
                                                                    .visibility_outlined
                                                              : Icons
                                                                    .visibility_off_outlined,
                                                          color: Color(
                                                            0xFF57636C,
                                                          ),
                                                          size: 24,
                                                        ),
                                                      ),
                                                    ),
                                                    style:
                                                        GoogleFonts.plusJakartaSans(
                                                          color: const Color(
                                                            0xFF101213,
                                                          ),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                    minLines: 1,
                                                    cursorColor: Color(
                                                      0xFF4B39EF,
                                                    ),
                                                    validator: (val) => _model
                                                        .passwordConfirmTextControllerValidator
                                                        ?.call(context, val),
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
                                                        0,
                                                        0,
                                                        16,
                                                      ),
                                                  child: ElevatedButton(
                                                    onPressed: () async {
                                                      // Create account logic
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                      backgroundColor:
                                                          const Color(
                                                            0xFF4B39EF,
                                                          ),
                                                      foregroundColor:
                                                          Colors.white,
                                                      minimumSize: const Size(
                                                        230,
                                                        52,
                                                      ),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              40,
                                                            ),
                                                      ),
                                                      elevation: 3,
                                                    ),
                                                    child: Text(
                                                      'Create Account',
                                                      style:
                                                          GoogleFonts.plusJakartaSans(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                          0,
                                                          0,
                                                        ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional.fromSTEB(
                                                            16,
                                                            0,
                                                            16,
                                                            24,
                                                          ),
                                                      child: Text(
                                                        'Or sign up with',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            GoogleFonts.plusJakartaSans(
                                                              color:
                                                                  const Color(
                                                                    0xFF57636C,
                                                                  ),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                          0,
                                                          0,
                                                        ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            0,
                                                            0,
                                                            16,
                                                          ),
                                                      child: Wrap(
                                                        spacing: 16,
                                                        runSpacing: 0,
                                                        alignment: WrapAlignment
                                                            .center,
                                                        crossAxisAlignment:
                                                            WrapCrossAlignment
                                                                .center,
                                                        direction:
                                                            Axis.horizontal,
                                                        runAlignment:
                                                            WrapAlignment
                                                                .center,
                                                        verticalDirection:
                                                            VerticalDirection
                                                                .down,
                                                        clipBehavior: Clip.none,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional.fromSTEB(
                                                                  0,
                                                                  0,
                                                                  0,
                                                                  16,
                                                                ),
                                                            child: OutlinedButton.icon(
                                                              onPressed: () async {
                                                                // Google sign up logic
                                                              },
                                                              icon: const FaIcon(
                                                                FontAwesomeIcons
                                                                    .google,
                                                                size: 20,
                                                              ),
                                                              label: const Text(
                                                                'Continue with Google',
                                                              ),
                                                              style: OutlinedButton.styleFrom(
                                                                minimumSize:
                                                                    const Size(
                                                                      230,
                                                                      44,
                                                                    ),
                                                                side: const BorderSide(
                                                                  color: Color(
                                                                    0xFFF1F4F8,
                                                                  ),
                                                                  width: 2,
                                                                ),
                                                                shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        40,
                                                                      ),
                                                                ),
                                                                foregroundColor:
                                                                    const Color(
                                                                      0xFF101213,
                                                                    ),
                                                                textStyle: GoogleFonts.plusJakartaSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 14,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          if (!isAndroid!)
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional.fromSTEB(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    16,
                                                                  ),
                                                              child: OutlinedButton.icon(
                                                                onPressed:
                                                                    () async {
                                                                      // Apple sign up logic
                                                                    },
                                                                icon: const FaIcon(
                                                                  FontAwesomeIcons
                                                                      .apple,
                                                                  size: 20,
                                                                ),
                                                                label: const Text(
                                                                  'Continue with Apple',
                                                                ),
                                                                style: OutlinedButton.styleFrom(
                                                                  minimumSize:
                                                                      const Size(
                                                                        230,
                                                                        44,
                                                                      ),
                                                                  side: const BorderSide(
                                                                    color: Color(
                                                                      0xFFF1F4F8,
                                                                    ),
                                                                    width: 2,
                                                                  ),
                                                                  shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          40,
                                                                        ),
                                                                  ),
                                                                  foregroundColor:
                                                                      const Color(
                                                                        0xFF101213,
                                                                      ),
                                                                  textStyle: GoogleFonts.plusJakartaSans(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        14,
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
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (MediaQuery.of(context).size.width > 600)
                Expanded(
                  flex: 6,
                  child: Container(
                    width: 100,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                          'https://images.unsplash.com/photo-1508385082359-f38ae991e8f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80',
                        ),
                      ),
                      borderRadius: BorderRadius.circular(0),
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
