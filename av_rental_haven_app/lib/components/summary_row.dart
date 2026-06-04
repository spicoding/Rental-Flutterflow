import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../models/summary_row_model.dart';

class SummaryRowWidget extends StatefulWidget {
  const SummaryRowWidget({super.key, String? label, String? value})
    : label = label ?? 'Annual Haven Pro',
      value = value ?? '\$240.00';

  final String label;
  final String value;

  @override
  State<SummaryRowWidget> createState() => _SummaryRowWidgetState();
}

class _SummaryRowWidgetState extends State<SummaryRowWidget> {
  late SummaryRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
  }

  @override
  void initState() {
    super.initState();
    _model = SummaryRowModel();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.label,
            style: GoogleFonts.inter(
              color: Theme.of(context).textTheme.bodySmall?.color,
              fontSize: 14,
            ),
          ),
          Text(
            widget.value,
            style: GoogleFonts.inter(
              color: Theme.of(context).textTheme.bodyLarge?.color,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
