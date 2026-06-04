import '/components/address_type_chip_widget.dart';
import '/components/form_section_header_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'address_editor_page_model.dart';
export 'address_editor_page_model.dart';

/// An address editor
class AddressEditorPageWidget extends StatefulWidget {
  const AddressEditorPageWidget({super.key});

  static String routeName = 'AddressEditorPage';
  static String routePath = '/addressEditorPage';

  @override
  State<AddressEditorPageWidget> createState() =>
      _AddressEditorPageWidgetState();
}

class _AddressEditorPageWidgetState extends State<AddressEditorPageWidget> {
  late AddressEditorPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  get FlutterFlowTheme => null;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddressEditorPageModel());
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
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 16),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FlutterFlowIconButton(
                                borderRadius: 8,
                                buttonSize: 40,
                                fillColor: Colors.transparent,
                                icon: Icon(
                                  Icons.arrow_back_rounded,
                                  color: FlutterFlowTheme.of(
                                    context,
                                  ).primaryText,
                                  size: 24,
                                ),
                                onPressed: () {
                                  context.pop();
                                },
                              ),
                              Text(
                                'Edit Address',
                                style: FlutterFlowTheme.of(context).titleLarge
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(
                                          context,
                                        ).titleLarge.fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(
                                        context,
                                      ).titleLarge.fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ].divide(SizedBox(width: 16)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(24),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  wrapWithModel(
                                    model: _model.formSectionHeaderModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FormSectionHeaderWidget(
                                      title: 'Location',
                                      subtitle: 'Pin your exact delivery spot',
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(24),
                                    child: Container(
                                      height: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(
                                            context,
                                          ).alternate,
                                          width: 1,
                                        ),
                                      ),
                                      child: Stack(
                                        alignment: AlignmentDirectional(-1, -1),
                                        children: [
                                          Container(
                                            height: 200,
                                            child: FlutterFlowGoogleMap(
                                              controller: _model
                                                  .mapGoogleMapsController,
                                              onCameraIdle: (latLng) =>
                                                  _model.mapGoogleMapsCenter =
                                                      latLng,
                                              initialLocation:
                                                  _model.mapGoogleMapsCenter ??=
                                                      LatLng(40.7128, -74.006),
                                              markerColor:
                                                  GoogleMarkerColor.violet,
                                              mapType: MapType.normal,
                                              style: GoogleMapStyle.standard,
                                              initialZoom: 14,
                                              allowInteraction: true,
                                              allowZoom: true,
                                              showZoomControls: false,
                                              showLocation: false,
                                              showCompass: false,
                                              showMapToolbar: false,
                                              showTraffic: false,
                                              centerMapOnMarkerTap: true,
                                              mapTakesGesturePreference: false,
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                              0,
                                              0,
                                            ),
                                            child: Container(
                                              child: Padding(
                                                padding:
                                                    EdgeInsetsDirectional.fromSTEB(
                                                      0,
                                                      0,
                                                      0,
                                                      20,
                                                    ),
                                                child: Container(
                                                  child: Icon(
                                                    Icons.location_on_rounded,
                                                    color: FlutterFlowTheme.of(
                                                      context,
                                                    ).error,
                                                    size: 40,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  wrapWithModel(
                                    model: _model.formSectionHeaderModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FormSectionHeaderWidget(
                                      title: 'Address Details',
                                      subtitle:
                                          'Enter your street and building information',
                                    ),
                                  ),
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropdownValueController ??=
                                            FormFieldController<String>(
                                              _model.dropdownValue ??=
                                                  'New York',
                                            ),
                                    options: [
                                      'New York',
                                      'California',
                                      'Texas',
                                      'Florida',
                                      'Illinois',
                                    ],
                                    onChanged: (val) => safeSetState(
                                      () => _model.dropdownValue = val,
                                    ),
                                    width: 200,
                                    height: 40,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.fontWeight,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterFlowTheme.of(
                                            context,
                                          ).bodyMedium.fontWeight,
                                          fontStyle: FlutterFlowTheme.of(
                                            context,
                                          ).bodyMedium.fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                    hintText: 'New York',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(
                                        context,
                                      ).secondaryText,
                                      size: 24,
                                    ),
                                    fillColor: FlutterFlowTheme.of(
                                      context,
                                    ).secondaryBackground,
                                    elevation: 2,
                                    borderColor: FlutterFlowTheme.of(
                                      context,
                                    ).alternate,
                                    borderWidth: 1,
                                    borderRadius: 16,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                      16,
                                      0,
                                      16,
                                      0,
                                    ),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                    labelText: 'State / Region',
                                    labelTextStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FlutterFlowTheme.of(
                                              context,
                                            ).labelMedium.fontWeight,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).labelMedium.fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterFlowTheme.of(
                                            context,
                                          ).labelMedium.fontWeight,
                                          fontStyle: FlutterFlowTheme.of(
                                            context,
                                          ).labelMedium.fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 16)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  wrapWithModel(
                                    model: _model.formSectionHeaderModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FormSectionHeaderWidget(
                                      title: 'Address Label',
                                      subtitle: 'Save this address as...',
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        wrapWithModel(
                                          model: _model.addressTypeChipModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: AddressTypeChipWidget(
                                            selected: true,
                                            icon: Icon(
                                              Icons.home_rounded,
                                              size: 18,
                                            ),
                                            label: 'Home',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.addressTypeChipModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: AddressTypeChipWidget(
                                            selected: false,
                                            icon: Icon(
                                              Icons.work_rounded,
                                              size: 18,
                                            ),
                                            label: 'Work',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.addressTypeChipModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: AddressTypeChipWidget(
                                            selected: false,
                                            icon: Icon(
                                              Icons.label_rounded,
                                              size: 18,
                                            ),
                                            label: 'Other',
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 8)),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  wrapWithModel(
                                    model: _model.formSectionHeaderModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FormSectionHeaderWidget(
                                      title: 'Delivery Instructions',
                                      subtitle: 'Notes for the delivery team',
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16)),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  0,
                                  24,
                                  0,
                                  24,
                                ),
                                child: Container(
                                  child: Divider(
                                    height: 16,
                                    thickness: 1,
                                    indent: 0,
                                    endIndent: 0,
                                    color: FlutterFlowTheme.of(
                                      context,
                                    ).alternate,
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 32)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 1,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(24),
                    child: Container(child: Container(width: 0, height: 0)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
