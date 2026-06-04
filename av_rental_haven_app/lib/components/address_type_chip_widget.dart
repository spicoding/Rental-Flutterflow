import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/address_type_chip_model.dart';

class AddressTypeChipWidget extends StatefulWidget {
  const AddressTypeChipWidget({
    super.key,
    bool? selected,
    this.icon,
    String? label,
  }) : selected = selected ?? true,
       label = label ?? 'Home';

  final bool selected;
  final Widget? icon;
  final String label;

  @override
  State<AddressTypeChipWidget> createState() => _AddressTypeChipWidgetState();
}

class _AddressTypeChipWidgetState extends State<AddressTypeChipWidget> {
  late AddressTypeChipModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
  }

  @override
  void initState() {
    super.initState();
    _model = AddressTypeChipModel();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
      child: Container(
        decoration: BoxDecoration(
          color: widget.selected
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(24),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: widget.selected
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).dividerColor,
            width: 1,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (widget.icon != null) widget.icon!,
              if (widget.icon != null) const SizedBox(width: 4),
              Text(
                widget.label,
                style: GoogleFonts.inter(
                  color: widget.selected
                      ? Colors.white
                      : Theme.of(context).textTheme.bodyLarge?.color,
                  letterSpacing: 0.0,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
