import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/book_appointment_model.dart';

extension StringCapitalizationExtension on String {
  String toCapitalization(TextCapitalization capitalization) {
    switch (capitalization) {
      case TextCapitalization.characters:
        return toUpperCase();
      case TextCapitalization.words:
        return split(' ')
            .map((word) {
              if (word.isEmpty) return word;
              return '${word[0].toUpperCase()}${word.substring(1)}';
            })
            .join(' ');
      case TextCapitalization.sentences:
        return replaceAllMapped(
          RegExp('(^\\s*|[.!?]\\s+)([a-z])'),
          (match) => '${match.group(1)}${match.group(2)!.toUpperCase()}',
        );
      case TextCapitalization.none:
        return this;
    }
  }
}

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
                                    style: GoogleFonts.figtree(
                                      color: const Color(0xFF15161E),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  TextFormField(
                                    controller: _model.fullNameTextController,
                                    focusNode: _model.fullNameFocusNode,
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Full name*',
                                      labelStyle: GoogleFonts.outfit(
                                        color: const Color(0xFF606A85),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      hintStyle: GoogleFonts.outfit(
                                        color: const Color(0xFF606A85),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      errorStyle: GoogleFonts.figtree(
                                        color: const Color(0xFFFF5963),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
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
                                    style: GoogleFonts.outfit(
                                      color: const Color(0xFF15161E),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    cursorColor: const Color(0xFF6F61EF),
                                    validator: (val) => _model
                                        .fullNameTextControllerValidator
                                        ?.call(context, val),
                                    inputFormatters: [
                                      if (defaultTargetPlatform !=
                                              TargetPlatform.android &&
                                          defaultTargetPlatform !=
                                              TargetPlatform.iOS)
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
                                  const SizedBox(height: 12),
                                  TextFormField(
                                    controller: _model.ageTextController,
                                    focusNode: _model.ageFocusNode,
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Age*',
                                      labelStyle: GoogleFonts.outfit(
                                        color: const Color(0xFF606A85),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      hintStyle: GoogleFonts.outfit(
                                        color: const Color(0xFF606A85),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      errorStyle: GoogleFonts.figtree(
                                        color: const Color(0xFFFF5963),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
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
                                    style: GoogleFonts.figtree(
                                      color: const Color(0xFF15161E),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    cursorColor: const Color(0xFF6F61EF),
                                    validator: (val) => _model
                                        .ageTextControllerValidator
                                        ?.call(context, val),
                                    inputFormatters: [
                                      if (defaultTargetPlatform !=
                                              TargetPlatform.android &&
                                          defaultTargetPlatform !=
                                              TargetPlatform.iOS)
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
                                  const SizedBox(height: 12),
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
                                      labelStyle: GoogleFonts.outfit(
                                        color: const Color(0xFF606A85),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      hintStyle: GoogleFonts.outfit(
                                        color: const Color(0xFF606A85),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      errorStyle: GoogleFonts.figtree(
                                        color: const Color(0xFFFF5963),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
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
                                    style: GoogleFonts.figtree(
                                      color: const Color(0xFF15161E),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    cursorColor: const Color(0xFF6F61EF),
                                    validator: (val) => _model
                                        .dateOfBirthTextControllerValidator
                                        ?.call(context, val),
                                    inputFormatters: [_model.dateOfBirthMask],
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    'Gender',
                                    style: GoogleFonts.outfit(
                                      color: const Color(0xFF606A85),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Wrap(
                                    spacing: 12,
                                    children: ['Female', 'Male', 'Other'].map((
                                      gender,
                                    ) {
                                      return ChoiceChip(
                                        label: Text(gender),
                                        selected:
                                            _model.choiceChipsValue == gender,
                                        onSelected: (val) {
                                          setState(
                                            () => _model.choiceChipsValue =
                                                gender,
                                          );
                                        },
                                        selectedColor: const Color(0x4C39D2C0),
                                        backgroundColor: const Color(
                                          0xFFF1F4F8,
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                  const SizedBox(height: 12),
                                  Divider(
                                    height: 2,
                                    thickness: 2,
                                    color: Color(0xFFE5E7EB),
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    'Appointment Information',
                                    style: GoogleFonts.figtree(
                                      color: const Color(0xFF15161E),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
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
                                      labelStyle: GoogleFonts.outfit(
                                        color: const Color(0xFF606A85),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      alignLabelWithHint: true,
                                      hintStyle: GoogleFonts.outfit(
                                        color: const Color(0xFF606A85),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      errorStyle: GoogleFonts.figtree(
                                        color: const Color(0xFFFF5963),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
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
                                    style: GoogleFonts.figtree(
                                      color: const Color(0xFF15161E),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    maxLines: 9,
                                    minLines: 5,
                                    cursorColor: const Color(0xFF6F61EF),
                                    validator: (val) => _model
                                        .descriptionTextControllerValidator
                                        ?.call(context, val),
                                    inputFormatters: [
                                      if (defaultTargetPlatform !=
                                              TargetPlatform.android &&
                                          defaultTargetPlatform !=
                                              TargetPlatform.iOS)
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
                                  const SizedBox(height: 12),
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
                                              style: GoogleFonts.outfit(
                                                color: const Color(0xFF606A85),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            const SizedBox(height: 4),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                final datePickedDate =
                                                    await showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                          DateTime.now(),
                                                      firstDate: DateTime.now(),
                                                      lastDate: DateTime(2050),
                                                    );

                                                TimeOfDay? datePickedTime;
                                                if (datePickedDate != null) {
                                                  datePickedTime =
                                                      await showTimePicker(
                                                        context: context,
                                                        initialTime:
                                                            TimeOfDay.now(),
                                                      );
                                                }

                                                if (datePickedDate != null &&
                                                    datePickedTime != null) {
                                                  setState(() {
                                                    _model.datePicked =
                                                        DateTime(
                                                          datePickedDate.year,
                                                          datePickedDate.month,
                                                          datePickedDate.day,
                                                          datePickedTime!.hour,
                                                          datePickedTime.minute,
                                                        );
                                                  });
                                                } else if (_model.datePicked !=
                                                    null) {
                                                  setState(() {
                                                    _model.datePicked =
                                                        DateTime.now();
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
                                                      _model.datePicked
                                                              ?.toString() ??
                                                          'Select Date',
                                                      style:
                                                          GoogleFonts.figtree(
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
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Start Time',
                                              style: GoogleFonts.outfit(
                                                color: const Color(0xFF606A85),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            const SizedBox(height: 4),
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
                                                    _model.datePicked != null
                                                        ? TimeOfDay.fromDateTime(
                                                            _model.datePicked!,
                                                          ).format(context)
                                                        : 'Select Time',
                                                    style: GoogleFonts.figtree(
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
                                    ],
                                  ),
                                  const SizedBox(height: 32),
                                ],
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
                    child: ElevatedButton(
                      onPressed: () async {
                        if (_model.formKey.currentState == null ||
                            !_model.formKey.currentState!.validate()) {
                          return;
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6F61EF),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 48),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Request Appointment',
                        style: GoogleFonts.figtree(
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
        ),
      ),
    );
  }
}
