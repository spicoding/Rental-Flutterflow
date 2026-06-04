import 'dart:async';
import 'address_type_chip_model.dart';
import 'form_section_header_model.dart';
import 'package:flutter/material.dart';

class AddressEditorPageModel {
  ///  State fields for stateful widgets in this page.

  // Model for FormSectionHeader.
  late FormSectionHeaderModel formSectionHeaderModel1;

  // Model for FormSectionHeader.
  late FormSectionHeaderModel formSectionHeaderModel2;
  // State field(s) for Dropdown widget.
  String? dropdownValue;
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

  void initState(BuildContext context) {
    formSectionHeaderModel1 = FormSectionHeaderModel();
    formSectionHeaderModel2 = FormSectionHeaderModel();
    formSectionHeaderModel3 = FormSectionHeaderModel();
    addressTypeChipModel1 = AddressTypeChipModel();
    addressTypeChipModel2 = AddressTypeChipModel();
    addressTypeChipModel3 = AddressTypeChipModel();
    formSectionHeaderModel4 = FormSectionHeaderModel();
  }

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
