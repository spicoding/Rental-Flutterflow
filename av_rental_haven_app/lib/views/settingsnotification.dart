// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsNotificationsWidget extends StatefulWidget {
  const SettingsNotificationsWidget({super.key});

  static String routeName = 'SettingsNotifications';
  static String routePath = '/settingsNotifications';

  @override
  State<SettingsNotificationsWidget> createState() =>
      _SettingsNotificationsWidgetState();
}

class _SettingsNotificationsWidgetState
    extends State<SettingsNotificationsWidget> {
  bool _pushNotifications = true;
  bool _emailNotifications = true;
  bool _locationServices = true;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF14181B),
            size: 25,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Settings Page',
          style: GoogleFonts.outfit(
            color: const Color(0xFF14181B),
            fontSize: 24,
            letterSpacing: 0.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    'Choose what notifcations you want to recieve below and we will update the settings.',
                    style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xFF57636C),
                      fontSize: 14,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
            child: Material(
              color: Colors.transparent,
              child: SwitchListTile.adaptive(
                value: _pushNotifications,
                onChanged: (newValue) {
                  setState(() => _pushNotifications = newValue);
                },
                title: Text(
                  'Push Notifications',
                  style: GoogleFonts.plusJakartaSans(
                    color: const Color(0xFF14181B),
                    fontSize: 16,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                subtitle: Text(
                  'Receive Push notifications from our application on a semi regular basis.',
                  style: GoogleFonts.plusJakartaSans(
                    color: const Color(0xFF8B97A2),
                    fontSize: 14,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                tileColor: Colors.white,

                activeColor: const Color(0xFF4B39EF),
                activeTrackColor: const Color(0x4C4B39EF),
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
                contentPadding: const EdgeInsetsDirectional.fromSTEB(
                  24,
                  12,
                  24,
                  12,
                ),
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: SwitchListTile.adaptive(
              value: _emailNotifications,
              onChanged: (newValue) {
                setState(() => _emailNotifications = newValue);
              },
              title: Text(
                'Email Notifications',
                style: GoogleFonts.plusJakartaSans(
                  color: const Color(0xFF14181B),
                  fontSize: 16,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              subtitle: Text(
                'Receive email notifications from our marketing team about new features.',
                style: GoogleFonts.plusJakartaSans(
                  color: const Color(0xFF8B97A2),
                  fontSize: 14,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              tileColor: Colors.white,
              activeColor: const Color(0xFF4B39EF),
              activeTrackColor: const Color(0x4C4B39EF),
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding: const EdgeInsetsDirectional.fromSTEB(
                24,
                12,
                24,
                12,
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: SwitchListTile.adaptive(
              value: _locationServices,
              onChanged: (newValue) {
                setState(() => _locationServices = newValue);
              },
              title: Text(
                'Location Services',
                style: GoogleFonts.plusJakartaSans(
                  color: const Color(0xFF14181B),
                  fontSize: 16,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              subtitle: Text(
                'Allow us to track your location, this helps keep track of spending and keeps you safe.',
                style: GoogleFonts.plusJakartaSans(
                  color: const Color(0xFF8B97A2),
                  fontSize: 14,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              tileColor: Colors.white,
              activeColor: const Color(0xFF4B39EF),
              activeTrackColor: const Color(0x4C4B39EF),
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding: const EdgeInsetsDirectional.fromSTEB(
                24,
                12,
                24,
                12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(190, 50),
                backgroundColor: const Color(0xFF4B39EF),
                foregroundColor: Colors.white,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Save Changes',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
