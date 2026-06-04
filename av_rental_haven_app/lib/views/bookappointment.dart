import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'book_appointment_model.dart';
export 'book_appointment_model.dart';

class BookAppointmentWidget extends StatefulWidget {
  const BookAppointmentWidget({super.key});

  static String routeName = 'BookAppointment';
  static String routePath = '/bookAppointment';

  @override
  State<BookAppointmentWidget> createState() => _BookAppointmentWidgetState();
}

class _BookAppointmentWidgetState extends State<BookAppointmentWidget> {
  late BookAppointmentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = BookAppointmentModel();
    _model.initState(context);

    _model.fullNameTextController ??= TextEditingController();
    _model.fullNameFocusNode ??= FocusNode();
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Book Appointment',
                style: GoogleFonts.outfit(
                  color: const Color(0xFF15161E),
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Please fill in the information below to continue.',
                style: GoogleFonts.outfit(
                  color: const Color(0xFF606A85),
                  fontSize: 14,
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 12, 8),
              child: IconButton(
                icon: const Icon(Icons.close_rounded, color: Color(0xFF15161E)),
                onPressed: () async {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, -1),
                          child: Container(
                            constraints: BoxConstraints(maxWidth: 770),
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                16,
                                12,
                                16,
                                0,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Personal Information',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.figtree(
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
                                  TextFormField(
                                    controller: _model.fullNameTextController,
                                    focusNode: _model.fullNameFocusNode,
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Full name*',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            font: GoogleFonts.outfit(
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FlutterFlowTheme.of(
                                                context,
                                              ).headlineMedium.fontStyle,
                                            ),
                                            color: Color(0xFF606A85),
                                            fontSize: 24,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).headlineMedium.fontStyle,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.outfit(
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
                                      errorStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.figtree(
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterFlowTheme.of(
                                                context,
                                              ).bodyMedium.fontStyle,
                                            ),
                                            color: Color(0xFFFF5963),
                                            fontSize: 12,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.fontStyle,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFE5E7EB),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF6F61EF),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF5963),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF5963),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      filled: true,
                                      fillColor:
                                          (_model.fullNameFocusNode?.hasFocus ??
                                              false)
                                          ? Color(0x4D9489F5)
                                          : Colors.white,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                            16,
                                            20,
                                            16,
                                            20,
                                          ),
                                    ),
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
                                    cursorColor: Color(0xFF6F61EF),
                                    validator: _model
                                        .fullNameTextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction((
                                          oldValue,
                                          newValue,
                                        ) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                  TextCapitalization.words,
                                                ),
                                          );
                                        }),
                                    ],
                                  ),
                                  TextFormField(
                                    controller: _model.ageTextController,
                                    focusNode: _model.ageFocusNode,
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Age*',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            font: GoogleFonts.outfit(
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FlutterFlowTheme.of(
                                                context,
                                              ).labelLarge.fontStyle,
                                            ),
                                            color: Color(0xFF606A85),
                                            fontSize: 16,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).labelLarge.fontStyle,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.outfit(
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
                                      errorStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.figtree(
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterFlowTheme.of(
                                                context,
                                              ).bodyMedium.fontStyle,
                                            ),
                                            color: Color(0xFFFF5963),
                                            fontSize: 12,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.fontStyle,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFE5E7EB),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF6F61EF),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF5963),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF5963),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      filled: true,
                                      fillColor:
                                          (_model.ageFocusNode?.hasFocus ??
                                              false)
                                          ? Color(0x4D9489F5)
                                          : Colors.white,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                            16,
                                            20,
                                            16,
                                            20,
                                          ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.figtree(
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
                                    cursorColor: Color(0xFF6F61EF),
                                    validator: _model.ageTextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction((
                                          oldValue,
                                          newValue,
                                        ) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                  TextCapitalization.words,
                                                ),
                                          );
                                        }),
                                    ],
                                  ),
                                  TextFormField(
                                    controller:
                                        _model.dateOfBirthTextController,
                                    focusNode: _model.dateOfBirthFocusNode,
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Date of birth*',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            font: GoogleFonts.outfit(
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FlutterFlowTheme.of(
                                                context,
                                              ).labelLarge.fontStyle,
                                            ),
                                            color: Color(0xFF606A85),
                                            fontSize: 16,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).labelLarge.fontStyle,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.outfit(
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
                                      errorStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.figtree(
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterFlowTheme.of(
                                                context,
                                              ).bodyMedium.fontStyle,
                                            ),
                                            color: Color(0xFFFF5963),
                                            fontSize: 12,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.fontStyle,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFE5E7EB),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF6F61EF),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF5963),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF5963),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      filled: true,
                                      fillColor:
                                          (_model
                                                  .dateOfBirthFocusNode
                                                  ?.hasFocus ??
                                              false)
                                          ? Color(0x4D9489F5)
                                          : Colors.white,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                            16,
                                            20,
                                            16,
                                            20,
                                          ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.figtree(
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
                                    cursorColor: Color(0xFF6F61EF),
                                    validator: _model
                                        .dateOfBirthTextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [_model.dateOfBirthMask],
                                  ),
                                  Text(
                                    'Gender',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.outfit(
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
                                  FlutterFlowChoiceChips(
                                    options: [
                                      ChipData('Female'),
                                      ChipData('Male'),
                                      ChipData('Other'),
                                    ],
                                    onChanged: (val) => safeSetState(
                                      () => _model.choiceChipsValue =
                                          val?.firstOrNull,
                                    ),
                                    selectedChipStyle: ChipStyle(
                                      backgroundColor: Color(0x4C39D2C0),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.figtree(
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterFlowTheme.of(
                                                context,
                                              ).bodyMedium.fontStyle,
                                            ),
                                            color: Color(0xFF15161E),
                                            fontSize: 14,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.fontStyle,
                                          ),
                                      iconColor: Color(0xFF15161E),
                                      iconSize: 18,
                                      elevation: 0,
                                      borderColor: Color(0xFF39D2C0),
                                      borderWidth: 2,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    unselectedChipStyle: ChipStyle(
                                      backgroundColor: Color(0xFFF1F4F8),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.figtree(
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterFlowTheme.of(
                                                context,
                                              ).bodyMedium.fontStyle,
                                            ),
                                            color: Color(0xFF606A85),
                                            fontSize: 14,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.fontStyle,
                                          ),
                                      iconColor: Color(0xFF606A85),
                                      iconSize: 18,
                                      elevation: 0,
                                      borderColor: Color(0xFFE5E7EB),
                                      borderWidth: 2,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    chipSpacing: 12,
                                    rowSpacing: 12,
                                    multiselect: false,
                                    alignment: WrapAlignment.start,
                                    controller:
                                        _model.choiceChipsValueController ??=
                                            FormFieldController<List<String>>(
                                              [],
                                            ),
                                    wrapped: true,
                                  ),
                                  Divider(
                                    height: 2,
                                    thickness: 2,
                                    color: Color(0xFFE5E7EB),
                                  ),
                                  Text(
                                    'Appointment Information',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.figtree(
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
                                  TextFormField(
                                    controller:
                                        _model.descriptionTextController,
                                    focusNode: _model.descriptionFocusNode,
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          'Please describe your symptoms...',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            font: GoogleFonts.outfit(
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FlutterFlowTheme.of(
                                                context,
                                              ).labelLarge.fontStyle,
                                            ),
                                            color: Color(0xFF606A85),
                                            fontSize: 16,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).labelLarge.fontStyle,
                                          ),
                                      alignLabelWithHint: true,
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.outfit(
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
                                      errorStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.figtree(
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FlutterFlowTheme.of(
                                                context,
                                              ).bodyMedium.fontStyle,
                                            ),
                                            color: Color(0xFFFF5963),
                                            fontSize: 12,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.fontStyle,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFE5E7EB),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF6F61EF),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF5963),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF5963),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      filled: true,
                                      fillColor:
                                          (_model
                                                  .descriptionFocusNode
                                                  ?.hasFocus ??
                                              false)
                                          ? Color(0x4D9489F5)
                                          : Colors.white,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                            16,
                                            16,
                                            16,
                                            16,
                                          ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.figtree(
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
                                    maxLines: 9,
                                    minLines: 5,
                                    cursorColor: Color(0xFF6F61EF),
                                    validator: _model
                                        .descriptionTextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction((
                                          oldValue,
                                          newValue,
                                        ) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                  TextCapitalization.words,
                                                ),
                                          );
                                        }),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Start Date',
                                              style:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).labelMedium.override(
                                                    font: GoogleFonts.outfit(
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
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                final _datePickedDate = await showDatePicker(
                                                  context: context,
                                                  initialDate:
                                                      getCurrentTimestamp,
                                                  firstDate:
                                                      getCurrentTimestamp,
                                                  lastDate: DateTime(2050),
                                                  builder: (context, child) {
                                                    return wrapInMaterialDatePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          Color(0xFF6F61EF),
                                                      headerForegroundColor:
                                                          Colors.white,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                            context,
                                                          ).headlineLarge.override(
                                                            font: GoogleFonts.outfit(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                        context,
                                                                      )
                                                                      .headlineLarge
                                                                      .fontStyle,
                                                            ),
                                                            color: Color(
                                                              0xFF15161E,
                                                            ),
                                                            fontSize: 32,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                      context,
                                                                    )
                                                                    .headlineLarge
                                                                    .fontStyle,
                                                          ),
                                                      pickerBackgroundColor:
                                                          Colors.white,
                                                      pickerForegroundColor:
                                                          Color(0xFF15161E),
                                                      selectedDateTimeBackgroundColor:
                                                          Color(0xFF6F61EF),
                                                      selectedDateTimeForegroundColor:
                                                          Colors.white,
                                                      actionButtonForegroundColor:
                                                          Color(0xFF15161E),
                                                      iconSize: 24,
                                                    );
                                                  },
                                                );

                                                TimeOfDay? _datePickedTime;
                                                if (_datePickedDate != null) {
                                                  _datePickedTime = await showTimePicker(
                                                    context: context,
                                                    initialTime:
                                                        TimeOfDay.fromDateTime(
                                                          getCurrentTimestamp,
                                                        ),
                                                    builder: (context, child) {
                                                      return wrapInMaterialTimePickerTheme(
                                                        context,
                                                        child!,
                                                        headerBackgroundColor:
                                                            Color(0xFF6F61EF),
                                                        headerForegroundColor:
                                                            Colors.white,
                                                        headerTextStyle:
                                                            FlutterFlowTheme.of(
                                                              context,
                                                            ).headlineLarge.override(
                                                              font: GoogleFonts.outfit(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle:
                                                                    FlutterFlowTheme.of(
                                                                          context,
                                                                        )
                                                                        .headlineLarge
                                                                        .fontStyle,
                                                              ),
                                                              color: Color(
                                                                0xFF15161E,
                                                              ),
                                                              fontSize: 32,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                        context,
                                                                      )
                                                                      .headlineLarge
                                                                      .fontStyle,
                                                            ),
                                                        pickerBackgroundColor:
                                                            Colors.white,
                                                        pickerForegroundColor:
                                                            Color(0xFF15161E),
                                                        selectedDateTimeBackgroundColor:
                                                            Color(0xFF6F61EF),
                                                        selectedDateTimeForegroundColor:
                                                            Colors.white,
                                                        actionButtonForegroundColor:
                                                            Color(0xFF15161E),
                                                        iconSize: 24,
                                                      );
                                                    },
                                                  );
                                                }

                                                if (_datePickedDate != null &&
                                                    _datePickedTime != null) {
                                                  safeSetState(() {
                                                    _model
                                                        .datePicked = DateTime(
                                                      _datePickedDate.year,
                                                      _datePickedDate.month,
                                                      _datePickedDate.day,
                                                      _datePickedTime!.hour,
                                                      _datePickedTime.minute,
                                                    );
                                                  });
                                                } else if (_model.datePicked !=
                                                    null) {
                                                  safeSetState(() {
                                                    _model.datePicked =
                                                        getCurrentTimestamp;
                                                  });
                                                }
                                              },
                                              child: Container(
                                                width: double.infinity,
                                                height: 48,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  border: Border.all(
                                                    color: Color(0xFFE5E7EB),
                                                    width: 2,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                        -1,
                                                        0,
                                                      ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional.fromSTEB(
                                                          12,
                                                          0,
                                                          0,
                                                          0,
                                                        ),
                                                    child: Text(
                                                      dateTimeFormat(
                                                        "MMMEd",
                                                        _model.datePicked,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                            context,
                                                          ).bodyLarge.override(
                                                            font: GoogleFonts.figtree(
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
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 4)),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Start Time',
                                              style:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).labelMedium.override(
                                                    font: GoogleFonts.outfit(
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
                                            Container(
                                              width: double.infinity,
                                              height: 48,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                border: Border.all(
                                                  color: Color(0xFFE5E7EB),
                                                  width: 2,
                                                ),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                  -1,
                                                  0,
                                                ),
                                                child: Padding(
                                                  padding:
                                                      EdgeInsetsDirectional.fromSTEB(
                                                        12,
                                                        0,
                                                        0,
                                                        0,
                                                      ),
                                                  child: Text(
                                                    dateTimeFormat(
                                                      "jm",
                                                      _model.datePicked,
                                                    ),
                                                    style:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).bodyLarge.override(
                                                          font: GoogleFonts.figtree(
                                                            fontWeight:
                                                                FontWeight.w600,
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
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 4)),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12)),
                                  ),
                                ].divide(SizedBox(height: 12)).addToEnd(SizedBox(height: 32)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 770),
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (_model.formKey.currentState == null ||
                            !_model.formKey.currentState!.validate()) {
                          return;
                        }
                      },
                      text: 'Request Appointment',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 48,
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: Color(0xFF6F61EF),
                        textStyle: FlutterFlowTheme.of(context).titleSmall
                            .override(
                              font: GoogleFonts.figtree(
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(
                                  context,
                                ).titleSmall.fontStyle,
                              ),
                              color: Colors.white,
                              fontSize: 16,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(
                                context,
                              ).titleSmall.fontStyle,
                            ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
