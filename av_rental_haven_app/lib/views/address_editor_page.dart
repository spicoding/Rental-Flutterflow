// ignore_for_file: deprecated_member_use, avoid_unnecessary_containers

import '../models/address_editor_page_model.dart';
import '../components/address_type_chip_widget.dart';
import '../components/form_section_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

  @override
  void initState() {
    super.initState();
    _model = AddressEditorPageModel();
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
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 16),
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
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: Theme.of(
                                  context,
                                ).textTheme.bodyLarge?.color,
                                size: 24,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            const SizedBox(width: 16),
                            Text(
                              'Edit Address',
                              style: GoogleFonts.interTight(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(
                                  context,
                                ).textTheme.titleLarge?.color,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    decoration: BoxDecoration(
                      color: Theme.of(context).dividerColor,
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
                                  const FormSectionHeaderWidget(
                                    title: 'Location',
                                    subtitle: 'Pin your exact delivery spot',
                                  ),
                                  const SizedBox(height: 16),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(24),
                                    child: Container(
                                      height: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: Theme.of(context).dividerColor,
                                          width: 1,
                                        ),
                                      ),
                                      child: Stack(
                                        alignment: AlignmentDirectional(-1, -1),
                                        children: [
                                          const Center(
                                            child: Icon(
                                              Icons.map_outlined,
                                              color: Colors.grey,
                                              size: 50,
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
                                                    color: Theme.of(
                                                      context,
                                                    ).colorScheme.error,
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
                                ],
                              ),
                              const SizedBox(height: 32),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const FormSectionHeaderWidget(
                                    title: 'Address Details',
                                    subtitle:
                                        'Enter your street and building information',
                                  ),
                                  const SizedBox(height: 16),
                                  DropdownButtonFormField<String>(
                                    value: _model.dropdownValue ?? 'New York',
                                    items:
                                        [
                                          'New York',
                                          'California',
                                          'Texas',
                                          'Florida',
                                          'Illinois',
                                        ].map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                    onChanged: (val) {
                                      setState(
                                        () => _model.dropdownValue = val,
                                      );
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'State / Region',
                                      labelStyle: GoogleFonts.inter(
                                        color: Theme.of(
                                          context,
                                        ).textTheme.bodySmall?.color,
                                        fontSize: 14,
                                      ),
                                      filled: true,
                                      fillColor: Theme.of(
                                        context,
                                      ).colorScheme.surface,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: BorderSide(
                                          color: Theme.of(context).dividerColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 32),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const FormSectionHeaderWidget(
                                    title: 'Address Label',
                                    subtitle: 'Save this address as...',
                                  ),
                                  const SizedBox(height: 16),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        AddressTypeChipWidget(
                                          selected: true,
                                          icon: Icon(
                                            Icons.home_rounded,
                                            size: 18,
                                          ),
                                          label: 'Home',
                                        ),
                                        const SizedBox(width: 8),
                                        AddressTypeChipWidget(
                                          selected: false,
                                          icon: Icon(
                                            Icons.work_rounded,
                                            size: 18,
                                          ),
                                          label: 'Work',
                                        ),
                                        const SizedBox(width: 8),
                                        AddressTypeChipWidget(
                                          selected: false,
                                          icon: Icon(
                                            Icons.label_rounded,
                                            size: 18,
                                          ),
                                          label: 'Other',
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 32),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const FormSectionHeaderWidget(
                                    title: 'Delivery Instructions',
                                    subtitle: 'Notes for the delivery team',
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
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
                                    color: Theme.of(context).dividerColor,
                                  ),
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
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 1,
                    decoration: BoxDecoration(
                      color: Theme.of(context).dividerColor,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(24),
                    child: Container(child: SizedBox(width: 0, height: 0)),
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
