import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/form_section_header_model.dart';

class FormSectionHeaderWidget extends StatefulWidget {
  const FormSectionHeaderWidget({super.key, String? title, String? subtitle})
    : this.title = title ?? 'Location',
      this.subtitle = subtitle ?? 'Pin your exact delivery spot';

  final String title;
  final String subtitle;

  @override
  State<FormSectionHeaderWidget> createState() =>
      _FormSectionHeaderWidgetState();
}

class _FormSectionHeaderWidgetState extends State<FormSectionHeaderWidget> {
  late FormSectionHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
  }

  @override
  void initState() {
    super.initState();
    _model = FormSectionHeaderModel();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: GoogleFonts.interTight(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            widget.subtitle,
            style: GoogleFonts.inter(
              fontSize: 12,
              color: Theme.of(context).textTheme.bodySmall?.color,
            ),
          ),
        ],
      ),
    );
  }
}
