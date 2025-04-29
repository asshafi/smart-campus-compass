import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  static String routeName = 'profile';
  static String routePath = '/profile';

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());

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
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset('assets/images/Bg1.png').image,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 120, 0, 0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    height: 170,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
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
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        10,
                                        10,
                                        0,
                                        0,
                                      ),
                                      child: Icon(
                                        Icons.person_sharp,
                                        color:
                                            FlutterFlowTheme.of(
                                              context,
                                            ).primaryText,
                                        size: 50,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        10,
                                        0,
                                        0,
                                        0,
                                      ),
                                      child: Text(
                                        FFLocalizations.of(
                                          context,
                                        ).getText('s55temjc' /* Edit */),
                                        style: FlutterFlowTheme.of(
                                          context,
                                        ).bodyMedium.override(
                                          fontFamily: 'Lexend',
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '60fer0co' /* Welcome,[display_name] */,
                                  ),
                                  style: FlutterFlowTheme.of(
                                    context,
                                  ).bodyMedium.override(
                                    fontFamily: 'Lexend',
                                    fontSize: 20,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'rch5kdx3' /* Your account Details are below */,
                                  ),
                                  style: FlutterFlowTheme.of(
                                    context,
                                  ).bodyMedium.override(
                                    fontFamily: 'Lexend',
                                    fontSize: 15,
                                    letterSpacing: 0.0,
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
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        10,
                                        10,
                                        0,
                                        0,
                                      ),
                                      child: Text(
                                        FFLocalizations.of(
                                          context,
                                        ).getText('cy2tej7q' /* Student ID */),
                                        style: FlutterFlowTheme.of(
                                          context,
                                        ).bodyMedium.override(
                                          fontFamily: 'Lexend',
                                          fontSize: 20,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        10,
                                        0,
                                        0,
                                        0,
                                      ),
                                      child: Text(
                                        FFLocalizations.of(
                                          context,
                                        ).getText('1i2lnbro' /* 202337042 */),
                                        style: FlutterFlowTheme.of(
                                          context,
                                        ).bodyMedium.override(
                                          fontFamily: 'Lexend',
                                          fontSize: 20,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
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
                    Opacity(
                      opacity: 0.8,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(20, 40, 0, 0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.4,
                          height: MediaQuery.sizeOf(context).height * 0.18,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(
                                  context,
                                ).secondaryBackground,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                              10,
                              10,
                              0,
                              0,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Opacity(
                                      opacity: 0.8,
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '1qx9xdwo' /* Total Food Weight */,
                                        ),
                                        style: FlutterFlowTheme.of(
                                          context,
                                        ).bodyMedium.override(
                                          fontFamily: 'Lexend',
                                          fontSize: 15,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        0,
                                        10,
                                        0,
                                        0,
                                      ),
                                      child: Text(
                                        FFLocalizations.of(
                                          context,
                                        ).getText('etu8eqkv' /* 100 kg */),
                                        style: FlutterFlowTheme.of(
                                          context,
                                        ).bodyMedium.override(
                                          fontFamily: 'Lexend',
                                          fontSize: 20,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Opacity(
                                      opacity: 0.8,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                          0,
                                          10,
                                          0,
                                          0,
                                        ),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '0rry8zas' /* Total Calories */,
                                          ),
                                          style: FlutterFlowTheme.of(
                                            context,
                                          ).bodyMedium.override(
                                            fontFamily: 'Lexend',
                                            fontSize: 15,
                                            letterSpacing: 0.0,
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
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        0,
                                        10,
                                        0,
                                        0,
                                      ),
                                      child: Text(
                                        FFLocalizations.of(
                                          context,
                                        ).getText('24u3mr1r' /* 2000 kcal */),
                                        style: FlutterFlowTheme.of(
                                          context,
                                        ).bodyMedium.override(
                                          fontFamily: 'Lexend',
                                          fontSize: 20,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
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
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Opacity(
                      opacity: 0.8,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(20, 40, 0, 0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.4,
                          height: MediaQuery.sizeOf(context).height * 0.18,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(
                                  context,
                                ).secondaryBackground,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                              10,
                              10,
                              0,
                              0,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Opacity(
                                      opacity: 0.8,
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'gn4c7a5h' /* Academic Growth */,
                                        ),
                                        style: FlutterFlowTheme.of(
                                          context,
                                        ).bodyMedium.override(
                                          fontFamily: 'Lexend',
                                          fontSize: 15,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        0,
                                        10,
                                        0,
                                        0,
                                      ),
                                      child: Text(
                                        FFLocalizations.of(
                                          context,
                                        ).getText('wx5vwqd4' /* 20% */),
                                        style: FlutterFlowTheme.of(
                                          context,
                                        ).bodyMedium.override(
                                          fontFamily: 'Lexend',
                                          fontSize: 20,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Opacity(
                                      opacity: 0.8,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                          0,
                                          10,
                                          0,
                                          0,
                                        ),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'q0g4q5bb' /* Career Growth */,
                                          ),
                                          style: FlutterFlowTheme.of(
                                            context,
                                          ).bodyMedium.override(
                                            fontFamily: 'Lexend',
                                            fontSize: 15,
                                            letterSpacing: 0.0,
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
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        0,
                                        10,
                                        0,
                                        0,
                                      ),
                                      child: Text(
                                        FFLocalizations.of(
                                          context,
                                        ).getText('4qpk3hqa' /* 15% */),
                                        style: FlutterFlowTheme.of(
                                          context,
                                        ).bodyMedium.override(
                                          fontFamily: 'Lexend',
                                          fontSize: 20,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
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
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      height: MediaQuery.sizeOf(context).height * 0.2,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                  15,
                                  30,
                                  0,
                                  0,
                                ),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
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
                                          Align(
                                            alignment: const AlignmentDirectional(
                                              0,
                                              0,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional.fromSTEB(
                                                    30,
                                                    10,
                                                    0,
                                                    0,
                                                  ),
                                              child: Icon(
                                                Icons.history,
                                                color:
                                                    FlutterFlowTheme.of(
                                                      context,
                                                    ).primaryText,
                                                size: 40,
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
                                                  28,
                                                  10,
                                                  0,
                                                  0,
                                                ),
                                            child: Text(
                                              FFLocalizations.of(
                                                context,
                                              ).getText(
                                                'og1rs1rb' /* History */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                context,
                                              ).bodyMedium.override(
                                                fontFamily: 'Lexend',
                                                fontSize: 16,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
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
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                  15,
                                  30,
                                  0,
                                  0,
                                ),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
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
                                          Align(
                                            alignment: const AlignmentDirectional(
                                              0,
                                              0,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional.fromSTEB(
                                                    30,
                                                    10,
                                                    0,
                                                    0,
                                                  ),
                                              child: Icon(
                                                Icons.lock_reset_rounded,
                                                color:
                                                    FlutterFlowTheme.of(
                                                      context,
                                                    ).primaryText,
                                                size: 40,
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
                                                  25,
                                                  8,
                                                  0,
                                                  0,
                                                ),
                                            child: Text(
                                              FFLocalizations.of(
                                                context,
                                              ).getText(
                                                'vre59g46' /* Reset 
Password */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                context,
                                              ).bodyMedium.override(
                                                fontFamily: 'Lexend',
                                                fontSize: 14,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
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
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                  15,
                                  30,
                                  0,
                                  0,
                                ),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
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
                                          Align(
                                            alignment: const AlignmentDirectional(
                                              0,
                                              0,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional.fromSTEB(
                                                    30,
                                                    10,
                                                    0,
                                                    0,
                                                  ),
                                              child: Icon(
                                                Icons.input,
                                                color:
                                                    FlutterFlowTheme.of(
                                                      context,
                                                    ).primaryText,
                                                size: 40,
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
                                                  25,
                                                  10,
                                                  0,
                                                  0,
                                                ),
                                            child: Text(
                                              FFLocalizations.of(
                                                context,
                                              ).getText(
                                                'h17x7dd3' /* Sign out */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                context,
                                              ).bodyMedium.override(
                                                fontFamily: 'Lexend',
                                                fontSize: 16,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
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
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 90, 0, 0),
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
                              ).getText('8ar3dp89' /* Home */),
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
                    padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
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
                              ).getText('fhsgndox' /* Notifications */),
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
                    padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
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
                              ).getText('zcxo090a' /* Settings */),
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
                    padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
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
                              ).getText('13ti7e1f' /* Profile */),
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
    );
  }
}
