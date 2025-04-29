import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

// ================== START OF ESSENTIAL FIXES ==================
// 1. Theme Definitions (normally in a separate theme.dart file)
class FlutterFlowTheme {
  static Color primaryBackground = const Color(0xFFF1F4F8);
  static Color secondaryBackground = const Color(0xFFFFFFFF);
  static Color primaryText = const Color(0xFF090F13);
  static Color info = const Color(0xFF39D2C0);
  static Color secondaryText = const Color(0xFF95A1AC);
  static Color accent2 = const Color(0xFFEE8B60);
  
  static TextStyle get bodyLarge => GoogleFonts.getFont(
    'Lexend',
    color: primaryText,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );
  
  static TextStyle get bodyMedium => GoogleFonts.getFont(
    'Lexend',
    color: primaryText,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  
  static TextStyle get headlineMedium => GoogleFonts.getFont(
    'Lexend',
    color: primaryText,
    fontSize: 28,
    fontWeight: FontWeight.w500,
  );
  
  static FlutterFlowTheme of(BuildContext context) => FlutterFlowTheme();
}

// 2. Localization Mock (normally in a separate l10n.dart file)
class FFLocalizations {
  static FFLocalizations of(BuildContext context) => FFLocalizations();
  
  String getText(String key) => _translations[key] ?? key;
  
  static final Map<String, String> _translations = {
    'y8qcyc8m': 'Search',
    '50uvhooe': 'Canteen',
    'fiij53k6': 'North Canteen',
    'aiqj09lm': 'Stores',
    'drfuzm60': 'South Canteen',
    '4irqkeg8': 'Others',
    'hf1rxfr8': 'Fill up information',
    '07u1fk9d': 'Home',
    'vb2bfn8t': 'Notifications',
    '5i5cu40h': 'Settings',
    '3hp4hcqj': 'Profile',
  };
}

// 3. Model Implementation
class CanteenModel extends ChangeNotifier {
  // Add your model properties and methods here if needed
  @override
  void dispose() {
    // Cleanup code if necessary
    super.dispose();
  }
}

CanteenModel createModel(BuildContext context, CanteenModel Function() builder) {
  return builder();
}

void safeSetState(VoidCallback fn) {
  fn();
}
// ================== END OF ESSENTIAL FIXES ==================

// ================== YOUR ORIGINAL UI CODE STARTS HERE ==================
class CanteenWidget extends StatefulWidget {
  const CanteenWidget({super.key});

  static String routeName = 'Canteen';
  static String routePath = '/canteen';

  @override
  State<CanteenWidget> createState() => _CanteenWidgetState();
}

class _CanteenWidgetState extends State<CanteenWidget> {
  late CanteenModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CanteenModel());
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.primaryBackground ,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: Image.asset('assets/images/Bg1.png').image,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width,
                          height: MediaQuery.sizeOf(context).height * 0.25,
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Opacity(
                                    opacity: 0.6,
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        40,
                                        60,
                                        0,
                                        0,
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.8,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.05,
                                        decoration: BoxDecoration(
                                          color:
                                              FlutterFlowTheme.primaryText,
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15),
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(15),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(0, 0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional.fromSTEB(
                                                            10, 10, 0, 0),
                                                    child: FaIcon(
                                                      FontAwesomeIcons.search,
                                                      color:
                                                          FlutterFlowTheme.primaryBackground,
                                                      size: 24,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional.fromSTEB(
                                                          10, 10, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText('y8qcyc8m'),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlow.bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme.primaryBackground 
                                                          ,letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional.fromSTEB(
                                                          180, 10, 0, 0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.microphone,
                                                    color:
                                                        FlutterFlowTheme.secondaryBackground,
                                                    size: 24,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment: const AlignmentDirectional(0, -1),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20, 40, 0, 0),
                                          child: Container(
                                            width: 60,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.asset(
                                                        'assets/images/gnnulogo-removebg-preview.png')
                                                    .image,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20, 30, 0, 0),
                                        child: Text(
                                          FFLocalizations.of(context)
                                              .getText('50uvhooe'),
                                          style: FlutterFlowTheme
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme.primaryBackground,
                                                fontSize: 35,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 20, 0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: MediaQuery.sizeOf(context).height * 0.2,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.secondaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                            'assets/images/Weixin_Image_20250325110256.jpg')
                                        .image,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(40),
                                    bottomRight: Radius.circular(40),
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Opacity(
                                      opacity: 0.9,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.35,
                                          height:
                                              MediaQuery.sizeOf(context).height *
                                                  0.04,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.primaryText,
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            ),
                                          ),
                                          child: Text(
                                            FFLocalizations.of(context)
                                                .getText('fiij53k6'),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.bodyLarge
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.primaryBackground,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 0, 0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: MediaQuery.sizeOf(context).height * 0.2,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.secondaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                            'assets/images/Weixin_Image_20250325074609.jpg')
                                        .image,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(40),
                                    bottomRight: Radius.circular(40),
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Opacity(
                                      opacity: 0.9,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.35,
                                          height:
                                              MediaQuery.sizeOf(context).height *
                                                  0.04,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.primaryText,
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            ),
                                          ),
                                          child: Text(
                                            FFLocalizations.of(context)
                                                .getText('aiqj09lm'),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.bodyLarge
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.primaryBackground,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
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
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 0, 0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: MediaQuery.sizeOf(context).height * 0.2,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.secondaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                            'assets/images/Weixin_Image_20250325110225.jpg')
                                        .image,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(40),
                                    bottomRight: Radius.circular(40),
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Opacity(
                                      opacity: 0.9,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.35,
                                          height:
                                              MediaQuery.sizeOf(context).height *
                                                  0.04,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.primaryText,
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            ),
                                          ),
                                          child: Text(
                                            FFLocalizations.of(context)
                                                .getText('drfuzm60'),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.bodyLarge
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.primaryBackground,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 0, 0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: MediaQuery.sizeOf(context).height * 0.2,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.secondaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                            'assets/images/8010c3225bce1b470e3b4fa43065d872.jpg')
                                        .image,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(40),
                                    bottomRight: Radius.circular(40),
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Opacity(
                                      opacity: 0.9,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.35,
                                          height:
                                              MediaQuery.sizeOf(context).height *
                                                  0.04,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.primaryText,
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            ),
                                          ),
                                          child: Text(
                                            FFLocalizations.of(context)
                                                .getText('4irqkeg8'),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.bodyLarge
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.primaryBackground,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
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
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(40, 40, 0, 0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.8,
                            height: MediaQuery.sizeOf(context).height * 0.1,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.primaryText,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                            ),
                            child: Opacity(
                              opacity: 0.8,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 0, 0),
                                    child: Text(
                                      FFLocalizations.of(context)
                                          .getText('hf1rxfr8'),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.secondaryBackground,
                                            fontSize: 20,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 0, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.angleRight,
                                      color: FlutterFlowTheme.primaryBackground,
                                      size: 24,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.home,
                                      color: FlutterFlowTheme.secondaryBackground,
                                      size: 30,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context)
                                          .getText('07u1fk9d'),
                                      style: FlutterFlowTheme.bodyMedium
                                          .override(
                                            fontFamily: 'Lexend',
                                            color: FlutterFlowTheme.primaryBackground,
                                            fontSize: 14,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.notifications_sharp,
                                      color: FlutterFlowTheme.secondaryBackground,
                                      size: 30,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context)
                                          .getText('vb2bfn8t'),
                                      style: FlutterFlowTheme.bodyMedium
                                          .override(
                                            fontFamily: 'Lexend',
                                            color: FlutterFlowTheme.primaryBackground,
                                            fontSize: 14,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.settings_sharp,
                                      color: FlutterFlowTheme.secondaryBackground,
                                      size: 30,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context)
                                          .getText('5i5cu40h'),
                                      style: FlutterFlowTheme.bodyMedium
                                          .override(
                                            fontFamily: 'Lexend',
                                            color: FlutterFlowTheme.primaryBackground,
                                            fontSize: 14,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.person_sharp,
                                      color: FlutterFlowTheme.secondaryBackground,
                                      size: 30,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context)
                                          .getText('3hp4hcqj'),
                                      style: FlutterFlowTheme.bodyMedium
                                          .override(
                                            fontFamily: 'Lexend',
                                            color: FlutterFlowTheme.primaryBackground,
                                            fontSize: 14,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}