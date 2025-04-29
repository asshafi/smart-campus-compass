import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'lostfound_model.dart';
export 'lostfound_model.dart';

class LostfoundWidget extends StatefulWidget {
  const LostfoundWidget({super.key});

  static String routeName = 'lostfound';
  static String routePath = '/lostfound';

  @override
  State<LostfoundWidget> createState() => _LostfoundWidgetState();
}

class _LostfoundWidgetState extends State<LostfoundWidget> {
  late LostfoundModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LostfoundModel());

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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                  0,
                                  40,
                                  0,
                                  0,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        50,
                                        30,
                                        0,
                                        0,
                                      ),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '9nu9sn1p' /* Lost & Found */,
                                        ),
                                        style: FlutterFlowTheme.of(
                                          context,
                                        ).bodyMedium.override(
                                          fontFamily: 'Lexend',
                                          fontSize: 40,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                      80,
                                      0,
                                      0,
                                      0,
                                    ),
                                    child: Container(
                                      width:
                                          MediaQuery.sizeOf(context).width *
                                          0.5,
                                      height: 140,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              Image.asset(
                                                'assets/images/fa2dfd67f52019c64538201a9057473d-removebg-preview.png',
                                              ).image,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                              40,
                              0,
                              20,
                              0,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Opacity(
                                  opacity: 0.9,
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                      20,
                                      20,
                                      0,
                                      0,
                                    ),
                                    child: Container(
                                      width:
                                          MediaQuery.sizeOf(context).width *
                                          0.3,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                          0.15,
                                      decoration: BoxDecoration(
                                        color:
                                            FlutterFlowTheme.of(
                                              context,
                                            ).primaryText,
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 4,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 2),
                                          ),
                                        ],
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(14),
                                          bottomRight: Radius.circular(15),
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsetsDirectional.fromSTEB(
                                                      10,
                                                      5,
                                                      0,
                                                      0,
                                                    ),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(
                                                        context,
                                                      ).width *
                                                      0.25,
                                                  height:
                                                      MediaQuery.sizeOf(
                                                        context,
                                                      ).height *
                                                      0.1,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image:
                                                          Image.asset(
                                                            'assets/images/lost.png',
                                                          ).image,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsetsDirectional.fromSTEB(
                                                      30,
                                                      0,
                                                      0,
                                                      0,
                                                    ),
                                                child: Text(
                                                  FFLocalizations.of(
                                                    context,
                                                  ).getText(
                                                    'wywgan4e' /* REPORT
ITEMS */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                    context,
                                                  ).bodyMedium.override(
                                                    fontFamily: 'Lexend',
                                                    color:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).info,
                                                    fontSize: 16,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    20,
                                    20,
                                    0,
                                    0,
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.3,
                                    height:
                                        MediaQuery.sizeOf(context).height *
                                        0.15,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).primaryText,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x33000000),
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional.fromSTEB(
                                                    10,
                                                    5,
                                                    0,
                                                    0,
                                                  ),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(
                                                      context,
                                                    ).width *
                                                    0.25,
                                                height:
                                                    MediaQuery.sizeOf(
                                                      context,
                                                    ).height *
                                                    0.1,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image:
                                                        Image.asset(
                                                          'assets/images/89ab81fc1a981fc7e778389263e96107-removebg-preview.png',
                                                        ).image,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional.fromSTEB(
                                                    30,
                                                    0,
                                                    0,
                                                    0,
                                                  ),
                                              child: Text(
                                                FFLocalizations.of(
                                                  context,
                                                ).getText(
                                                  'p90zvy75' /* LOST
ITEM */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                  context,
                                                ).bodyMedium.override(
                                                  fontFamily: 'Lexend',
                                                  color:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).info,
                                                  fontSize: 16,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                              0,
                              0,
                              10,
                              0,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    20,
                                    20,
                                    0,
                                    0,
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.3,
                                    height:
                                        MediaQuery.sizeOf(context).height *
                                        0.15,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).primaryText,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x33000000),
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional.fromSTEB(
                                                    10,
                                                    5,
                                                    0,
                                                    0,
                                                  ),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(
                                                      context,
                                                    ).width *
                                                    0.25,
                                                height:
                                                    MediaQuery.sizeOf(
                                                      context,
                                                    ).height *
                                                    0.1,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image:
                                                        Image.asset(
                                                          'assets/images/bce58764ff698950d313862adaa8c4e4-removebg-preview.png',
                                                        ).image,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional.fromSTEB(
                                                    30,
                                                    0,
                                                    0,
                                                    0,
                                                  ),
                                              child: Text(
                                                FFLocalizations.of(
                                                  context,
                                                ).getText(
                                                  'dxj166qv' /* CLAIM
FOUND */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                  context,
                                                ).bodyMedium.override(
                                                  fontFamily: 'Lexend',
                                                  color:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).info,
                                                  fontSize: 16,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    20,
                                    20,
                                    0,
                                    0,
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.3,
                                    height:
                                        MediaQuery.sizeOf(context).height *
                                        0.15,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).primaryText,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x33000000),
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional.fromSTEB(
                                                    10,
                                                    5,
                                                    0,
                                                    0,
                                                  ),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(
                                                      context,
                                                    ).width *
                                                    0.25,
                                                height:
                                                    MediaQuery.sizeOf(
                                                      context,
                                                    ).height *
                                                    0.1,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image:
                                                        Image.asset(
                                                          'assets/images/68cc5ca43e0b82952ca5b7acad390129-removebg-preview.png',
                                                        ).image,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional.fromSTEB(
                                                    30,
                                                    0,
                                                    0,
                                                    0,
                                                  ),
                                              child: Text(
                                                FFLocalizations.of(
                                                  context,
                                                ).getText(
                                                  'yv5bsxzu' /* FOUND */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                  context,
                                                ).bodyMedium.override(
                                                  fontFamily: 'Lexend',
                                                  color:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).info,
                                                  fontSize: 16,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
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
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                120,
                                20,
                                0,
                                0,
                              ),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.35,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.18,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).accent2,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                10,
                                                10,
                                                0,
                                                0,
                                              ),
                                          child: Container(
                                            width:
                                                MediaQuery.sizeOf(
                                                  context,
                                                ).width *
                                                0.3,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).secondaryBackground,
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image:
                                                    Image.asset(
                                                      'assets/images/9b8e7a755afb8b4b66522975aa06075c-removebg-preview.png',
                                                    ).image,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                20,
                                                10,
                                                0,
                                                0,
                                              ),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '4duh7c9y' /* HELP DESK */,
                                            ),
                                            style: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.override(
                                              fontFamily: 'Lexend',
                                              color:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).info,
                                              fontSize: 16,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
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
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                60,
                                10,
                                0,
                                0,
                              ),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.3,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.05,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).info,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    30,
                                    10,
                                    0,
                                    0,
                                  ),
                                  child: Text(
                                    FFLocalizations.of(
                                      context,
                                    ).getText('sl1f8zzj' /* REPORT */),
                                    style: FlutterFlowTheme.of(
                                      context,
                                    ).bodyMedium.override(
                                      fontFamily: 'Lexend',
                                      letterSpacing: 0.0,
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
                                30,
                                10,
                                0,
                                0,
                              ),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.3,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.05,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).info,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    30,
                                    10,
                                    0,
                                    0,
                                  ),
                                  child: Text(
                                    FFLocalizations.of(
                                      context,
                                    ).getText('ea79wmk1' /* SUBMIT */),
                                    style: FlutterFlowTheme.of(
                                      context,
                                    ).bodyMedium.override(
                                      fontFamily: 'Lexend',
                                      letterSpacing: 0.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                              30,
                              0,
                              0,
                              0,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.home,
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).secondaryBackground,
                                      size: 30,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(
                                        context,
                                      ).getText('vjg8u4sg' /* Home */),
                                      style: FlutterFlowTheme.of(
                                        context,
                                      ).bodyMedium.override(
                                        fontFamily: 'Lexend',
                                        color:
                                            FlutterFlowTheme.of(
                                              context,
                                            ).primaryBackground,
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
                            padding: const EdgeInsetsDirectional.fromSTEB(
                              30,
                              0,
                              0,
                              0,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.notifications_sharp,
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).secondaryBackground,
                                      size: 30,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(
                                        context,
                                      ).getText('poauvm2e' /* Notifications */),
                                      style: FlutterFlowTheme.of(
                                        context,
                                      ).bodyMedium.override(
                                        fontFamily: 'Lexend',
                                        color:
                                            FlutterFlowTheme.of(
                                              context,
                                            ).primaryBackground,
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
                            padding: const EdgeInsetsDirectional.fromSTEB(
                              30,
                              0,
                              0,
                              0,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.settings_sharp,
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).secondaryBackground,
                                      size: 30,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(
                                        context,
                                      ).getText('3deax9d4' /* Settings */),
                                      style: FlutterFlowTheme.of(
                                        context,
                                      ).bodyMedium.override(
                                        fontFamily: 'Lexend',
                                        color:
                                            FlutterFlowTheme.of(
                                              context,
                                            ).primaryBackground,
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
                            padding: const EdgeInsetsDirectional.fromSTEB(
                              30,
                              0,
                              0,
                              0,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.person_sharp,
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).secondaryBackground,
                                      size: 30,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(
                                        context,
                                      ).getText('sbhg2x1t' /* Profile */),
                                      style: FlutterFlowTheme.of(
                                        context,
                                      ).bodyMedium.override(
                                        fontFamily: 'Lexend',
                                        color:
                                            FlutterFlowTheme.of(
                                              context,
                                            ).primaryBackground,
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
