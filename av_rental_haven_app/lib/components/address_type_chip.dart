import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'address_type_chip_model.dart';
export 'address_type_chip_model.dart';

class AddressTypeChipWidget extends StatefulWidget {
  const AddressTypeChipWidget({
    super.key,
    bool? selected,
    this.icon,
    String? label,
  }) : this.selected = selected ?? true,
       this.label = label ?? 'Home';

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
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddressTypeChipModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
      child: Container(
        child: Container(
          decoration: BoxDecoration(
            color: widget!.selected
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(24),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: widget!.selected
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).alternate,
              width: 1,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 8),
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  widget!.icon!,
                  Text(
                    valueOrDefault<String>(widget!.label, 'Home'),
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                      font: GoogleFonts.inter(
                        fontWeight: FlutterFlowTheme.of(
                          context,
                        ).labelLarge.fontWeight,
                        fontStyle: FlutterFlowTheme.of(
                          context,
                        ).labelLarge.fontStyle,
                      ),
                      color: widget!.selected
                          ? Colors.white
                          : FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                      fontWeight: FlutterFlowTheme.of(
                        context,
                      ).labelLarge.fontWeight,
                      fontStyle: FlutterFlowTheme.of(
                        context,
                      ).labelLarge.fontStyle,
                      lineHeight: 1.4,
                    ),
                  ),
                ].divide(SizedBox(width: 4)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
