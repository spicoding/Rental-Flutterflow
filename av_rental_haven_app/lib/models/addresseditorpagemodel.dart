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
import 'address_editor_page_widget.dart' show AddressEditorPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddressEditorPageModel extends FlutterFlowModel<AddressEditorPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for FormSectionHeader.
  late FormSectionHeaderModel formSectionHeaderModel1;
  // State field(s) for Map Google Map widget.
  LatLng? mapGoogleMapsCenter;
  final mapGoogleMapsController = Completer<GoogleMapController>();
  // Model for FormSectionHeader.
  late FormSectionHeaderModel formSectionHeaderModel2;
  // State field(s) for Dropdown widget.
  String? dropdownValue;
  FormFieldController<String>? dropdownValueController;
  // Model for FormSectionHeader.
  late FormSectionHeaderModel formSectionHeaderModel3;
  // Model for AddressTypeChip.
  late AddressTypeChipModel addressTypeChipModel1;
  // Model for AddressTypeChip.
  late AddressTypeChipModel addressTypeChipModel2;
  // Model for AddressTypeChip.
  late AddressTypeChipModel addressTypeChipModel3;
  // Model for FormSectionHeader.
  late FormSectionHeaderModel formSectionHeaderModel4;

  @override
  void initState(BuildContext context) {
    formSectionHeaderModel1 = createModel(
      context,
      () => FormSectionHeaderModel(),
    );
    formSectionHeaderModel2 = createModel(
      context,
      () => FormSectionHeaderModel(),
    );
    formSectionHeaderModel3 = createModel(
      context,
      () => FormSectionHeaderModel(),
    );
    addressTypeChipModel1 = createModel(context, () => AddressTypeChipModel());
    addressTypeChipModel2 = createModel(context, () => AddressTypeChipModel());
    addressTypeChipModel3 = createModel(context, () => AddressTypeChipModel());
    formSectionHeaderModel4 = createModel(
      context,
      () => FormSectionHeaderModel(),
    );
  }

  @override
  void dispose() {
    formSectionHeaderModel1.dispose();
    formSectionHeaderModel2.dispose();
    formSectionHeaderModel3.dispose();
    addressTypeChipModel1.dispose();
    addressTypeChipModel2.dispose();
    addressTypeChipModel3.dispose();
    formSectionHeaderModel4.dispose();
  }
}
