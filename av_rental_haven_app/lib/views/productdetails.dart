import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsWidget extends StatefulWidget {
  const ProductDetailsWidget({super.key});

  static String routeName = 'ProductDetails';
  static String routePath = '/productDetails';

  @override
  State<ProductDetailsWidget> createState() => _ProductDetailsWidgetState();
}

class _ProductDetailsWidgetState extends State<ProductDetailsWidget> {
  final List<String> _checkboxGroupValues1 = [];
  final List<String> _checkboxGroupValues2 = [];
  final List<String> _checkboxGroupValues3 = [];
  int _countControllerValue = 1;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF57636C),
              size: 30,
            ),
            onPressed: () {},
          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1541167760496-1628856ab772?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3437&q=80',
                            width: double.infinity,
                            height: 230,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 4, 0, 0),
                        child: Text(
                          'Product Name',
                          style: GoogleFonts.outfit(
                            textStyle: Theme.of(
                              context,
                            ).textTheme.headlineMedium,
                            color: const Color(0xFF0F1113),
                            fontSize: 24,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 4, 0, 0),
                        child: Text(
                          '\$9.00',
                          style: GoogleFonts.outfit(
                            textStyle: Theme.of(context).textTheme.labelLarge,
                            color: const Color(0xFF57636C),
                            fontSize: 16,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Divider(
                        height: 20,
                        thickness: 2,
                        indent: 16,
                        endIndent: 16,
                        color: Color(0xFFDBE2E7),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                        child: Text(
                          'Description',
                          style: GoogleFonts.outfit(
                            textStyle: Theme.of(context).textTheme.labelMedium,
                            color: const Color(0xFF57636C),
                            fontSize: 14,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                          style: GoogleFonts.outfit(
                            textStyle: Theme.of(context).textTheme.bodyLarge,
                            color: const Color(0xFF0F1113),
                            fontSize: 16,
                            letterSpacing: 0.0,
                            fontWeight: Theme.of(
                              context,
                            ).textTheme.bodyLarge?.fontWeight,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0,
                                8,
                                0,
                                8,
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F4F8),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                alignment: AlignmentDirectional(-0.9, 0),
                                child: Text(
                                  'Type of Milk',
                                  style: GoogleFonts.outfit(
                                    textStyle: Theme.of(
                                      context,
                                    ).textTheme.labelMedium,
                                    color: const Color(0xFF57636C),
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            ...[
                              'Organic Whole milk',
                              'Almond Milk',
                              'Oat Milk',
                            ].map((option) {
                              return CheckboxListTile(
                                title: Text(
                                  option,
                                  style: GoogleFonts.outfit(
                                    textStyle: Theme.of(
                                      context,
                                    ).textTheme.bodyMedium,
                                    color: const Color(0xFF0F1113),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                value: _checkboxGroupValues1.contains(option),
                                onChanged: (val) {
                                  setState(() {
                                    if (val == true) {
                                      _checkboxGroupValues1.add(option);
                                    } else {
                                      _checkboxGroupValues1.remove(option);
                                    }
                                  });
                                },
                                activeColor: const Color(0xFF4B39EF),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                              );
                            }),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0,
                                8,
                                0,
                                8,
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F4F8),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                alignment: AlignmentDirectional(-0.9, 0),
                                child: Text(
                                  'Size',
                                  style: GoogleFonts.outfit(
                                    textStyle: Theme.of(
                                      context,
                                    ).textTheme.labelMedium,
                                    color: const Color(0xFF57636C),
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            ...['12oz', '16oz'].map((option) {
                              return CheckboxListTile(
                                title: Text(
                                  option,
                                  style: GoogleFonts.outfit(
                                    textStyle: Theme.of(
                                      context,
                                    ).textTheme.bodyMedium,
                                    color: const Color(0xFF0F1113),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                value: _checkboxGroupValues2.contains(option),
                                onChanged: (val) {
                                  setState(() {
                                    if (val == true) {
                                      _checkboxGroupValues2.add(option);
                                    } else {
                                      _checkboxGroupValues2.remove(option);
                                    }
                                  });
                                },
                                activeColor: const Color(0xFF4B39EF),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                              );
                            }),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0,
                                8,
                                0,
                                8,
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F4F8),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                alignment: AlignmentDirectional(-0.9, 0),
                                child: Text(
                                  'Ice / Hot',
                                  style: GoogleFonts.outfit(
                                    textStyle: Theme.of(
                                      context,
                                    ).textTheme.labelMedium,
                                    color: const Color(0xFF57636C),
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            ...['Iced', 'Hot'].map((option) {
                              return CheckboxListTile(
                                title: Text(
                                  option,
                                  style: GoogleFonts.outfit(
                                    textStyle: Theme.of(
                                      context,
                                    ).textTheme.bodyMedium,
                                    color: const Color(0xFF0F1113),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                value: _checkboxGroupValues3.contains(option),
                                onChanged: (val) {
                                  setState(() {
                                    if (val == true) {
                                      _checkboxGroupValues3.add(option);
                                    } else {
                                      _checkboxGroupValues3.remove(option);
                                    }
                                  });
                                },
                                activeColor: const Color(0xFF4B39EF),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                              );
                            }),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0,
                                8,
                                0,
                                12,
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F4F8),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                alignment: AlignmentDirectional(-0.9, 0),
                                child: Text(
                                  'Quanity',
                                  style: GoogleFonts.outfit(
                                    textStyle: Theme.of(
                                      context,
                                    ).textTheme.labelMedium,
                                    color: const Color(0xFF57636C),
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0,
                                0,
                                0,
                                24,
                              ),
                              child: Container(
                                width: 160,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: Color(0xFFDBE2E7),
                                    width: 1,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        Icons.remove_rounded,
                                        color: _countControllerValue > 1
                                            ? const Color(0xFF57636C)
                                            : const Color(0xFFDBE2E7),
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        if (_countControllerValue > 1) {
                                          setState(
                                            () => _countControllerValue--,
                                          );
                                        }
                                      },
                                    ),
                                    Text(
                                      _countControllerValue.toString(),
                                      style: GoogleFonts.outfit(
                                        textStyle: Theme.of(
                                          context,
                                        ).textTheme.headlineSmall,
                                        color: const Color(0xFF0F1113),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.add_rounded,
                                        color: _countControllerValue < 10
                                            ? const Color(0xFF4B39EF)
                                            : const Color(0xFFDBE2E7),
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        if (_countControllerValue < 10) {
                                          setState(
                                            () => _countControllerValue++,
                                          );
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0F1113),
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 3,
                  ),
                  child: Text(
                    'Add To Cart',
                    style: GoogleFonts.outfit(
                      textStyle: Theme.of(context).textTheme.titleSmall,
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
