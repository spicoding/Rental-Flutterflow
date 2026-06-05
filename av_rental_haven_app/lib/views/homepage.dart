import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/homepagemodel.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = HomePageModel();
    _model.initState(context);

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    _model.tabBarController =
        TabController(vsync: this, length: 3, initialIndex: 0)..addListener(() {
          if (mounted) setState(() {});
        });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  Widget _buildRentalCard(RentalItem item) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  item.imageUrl,
                  width: double.infinity,
                  height: 230,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 4),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.location,
                    style: GoogleFonts.plusJakartaSans(
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                      color: const Color(0xFF15161E),
                      fontSize: 16,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                    child: Text(
                      item.price,
                      style: GoogleFonts.outfit(
                        textStyle: Theme.of(context).textTheme.titleLarge,
                        color: const Color(0xFF15161E),
                        fontSize: 22,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 4),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      item.distance,
                      style: GoogleFonts.outfit(
                        textStyle: Theme.of(context).textTheme.labelMedium,
                        color: const Color(0xFF606A85),
                        fontSize: 14,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(16, 4, 4, 0),
                    child: Text(
                      item.rating,
                      style: GoogleFonts.outfit(
                        textStyle: Theme.of(context).textTheme.labelMedium,
                        color: const Color(0xFF606A85),
                        fontSize: 14,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.star_rounded,
                    color: Color(0xFF606A85),
                    size: 24,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent(List<RentalItem> items) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: items.map((item) => _buildRentalCard(item)).toList(),
      ),
    );
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
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x33000000),
                        offset: Offset(0, 1),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Color(0xFFE5E7EB)),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 12, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.search_rounded,
                          color: Color(0xFF606A85),
                          size: 24,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                            child: SizedBox(
                              width: 200,
                              child: TextFormField(
                                controller: _model.textController,
                                focusNode: _model.textFieldFocusNode,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Search gear, suppliers etc...',
                                  labelStyle: GoogleFonts.outfit(
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF606A85),
                                    fontSize: 14,
                                  ),
                                  hintStyle: GoogleFonts.outfit(
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF606A85),
                                    fontSize: 14,
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF15161E),
                                  fontSize: 14,
                                ),
                                cursorColor: Color(0xFF6F61EF),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.tune_rounded,
                            color: Color(0xFF15161E),
                            size: 24,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment(0, 0),
                      child: TabBar(
                        labelColor: Color(0xFF15161E),
                        unselectedLabelColor: Color(0xFF606A85),
                        labelStyle: GoogleFonts.outfit(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF606A85),
                          fontSize: 12,
                        ),
                        unselectedLabelStyle: TextStyle(),
                        indicatorColor: Color(0xFF6F61EF),
                        padding: EdgeInsets.all(4),
                        tabs: [
                          Tab(text: 'Homes', icon: Icon(Icons.home_filled)),
                          Tab(
                            text: 'Products',
                            icon: Icon(Icons.speaker_sharp),
                          ),
                          Tab(
                            text: 'Suppliers',
                            icon: Icon(Icons.warehouse_rounded),
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [() async {}, () async {}, () async {}][i]();
                        },
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          _buildTabContent(_model.homes),
                          _buildTabContent(_model.products),
                          _buildTabContent(_model.suppliers),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
