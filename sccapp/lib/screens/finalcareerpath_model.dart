import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'finalcareerpath_model.dart';
export 'finalcareerpath_model.dart';

class FinalcareerpathWidget extends StatefulWidget {
  const FinalcareerpathWidget({super.key, this.userProfile});

  final DocumentReference? userProfile;

  static String routeName = 'finalcareerpath';
  static String routePath = '/finalcareerpath';

  @override
  State<FinalcareerpathWidget> createState() => _FinalcareerpathWidgetState();
}

class _FinalcareerpathWidgetState extends State<FinalcareerpathWidget> {
  late FinalcareerpathModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FinalcareerpathModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(currentUserReference!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 40,
                height: 40,
                child: SpinKitPumpingHeart(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 40,
                ),
              ),
            ),
          );
        }

        final finalcareerpathUsersRecord = snapshot.data!;

        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
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
                        Container(
                          width: MediaQuery.sizeOf(context).width,
                          height: 120,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                  70,
                                  50,
                                  0,
                                  0,
                                ),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.6,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          Image.asset(
                                            'assets/images/SSC_logo.png',
                                          ).image,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                  0,
                                  10,
                                  0,
                                  0,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        20,
                                        12,
                                        20,
                                        12,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Opacity(
                                            opacity: 0.9,
                                            child: Text(
                                              FFLocalizations.of(
                                                context,
                                              ).getText(
                                                'uwrehunq' /* Education Information */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                context,
                                              ).bodyMedium.override(
                                                fontFamily: 'Lexend',
                                                color:
                                                    FlutterFlowTheme.of(
                                                      context,
                                                    ).primaryBackground,
                                                fontSize: 25,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (!(Theme.of(context).brightness ==
                                  Brightness.dark))
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    0,
                                    24,
                                    0,
                                    0,
                                  ),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      setDarkModeSetting(
                                        context,
                                        ThemeMode.dark,
                                      );
                                    },
                                    text: FFLocalizations.of(
                                      context,
                                    ).getText('jomylq19' /* Dark Mode */),
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        0,
                                        0,
                                        0,
                                        0,
                                      ),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                            0,
                                            0,
                                            0,
                                            0,
                                          ),
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).secondary,
                                      textStyle: FlutterFlowTheme.of(
                                        context,
                                      ).titleSmall.override(
                                        fontFamily: 'Lexend',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                      elevation: 2,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              Opacity(
                                opacity: 0.8,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    20,
                                    10,
                                    0,
                                    0,
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).primaryText,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        16,
                                        0,
                                        4,
                                        0,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'w0h4tdws' /* Semester */,
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.override(
                                              fontFamily: 'Lexend',
                                              color:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).primaryBackground,
                                              fontSize: 16,
                                              letterSpacing: 0.0,
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30,
                                            buttonSize: 46,
                                            icon: const Icon(
                                              Icons.chevron_right_rounded,
                                              color: Color(0xFF95A1AC),
                                              size: 25,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: 0.8,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    20,
                                    10,
                                    0,
                                    0,
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).primaryText,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        16,
                                        0,
                                        4,
                                        0,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            FFLocalizations.of(
                                              context,
                                            ).getText('faiwpwqt' /* Mejor */),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.override(
                                              fontFamily: 'Lexend',
                                              color:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).primaryBackground,
                                              fontSize: 16,
                                              letterSpacing: 0.0,
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30,
                                            buttonSize: 46,
                                            icon: const Icon(
                                              Icons.chevron_right_rounded,
                                              color: Color(0xFF95A1AC),
                                              size: 25,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: 0.8,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    20,
                                    10,
                                    0,
                                    0,
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).primaryText,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        16,
                                        0,
                                        4,
                                        0,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'q1v47oas' /* Favourite Subject */,
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.override(
                                              fontFamily: 'Lexend',
                                              color:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).primaryBackground,
                                              fontSize: 16,
                                              letterSpacing: 0.0,
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30,
                                            buttonSize: 46,
                                            icon: const Icon(
                                              Icons.chevron_right_rounded,
                                              color: Color(0xFF95A1AC),
                                              size: 25,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: 0.8,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    20,
                                    10,
                                    0,
                                    0,
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).primaryText,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        16,
                                        0,
                                        4,
                                        0,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'jt2ohbax' /* Career Options */,
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.override(
                                              fontFamily: 'Lexend',
                                              color:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).primaryBackground,
                                              fontSize: 16,
                                              letterSpacing: 0.0,
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30,
                                            buttonSize: 46,
                                            icon: const Icon(
                                              Icons.chevron_right_rounded,
                                              color: Color(0xFF95A1AC),
                                              size: 25,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: 0.8,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    20,
                                    10,
                                    0,
                                    0,
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).primaryText,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        16,
                                        0,
                                        4,
                                        0,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'szqwz7jc' /* Dream Job */,
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.override(
                                              fontFamily: 'Lexend',
                                              color:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).primaryBackground,
                                              fontSize: 16,
                                              letterSpacing: 0.0,
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30,
                                            buttonSize: 46,
                                            icon: const Icon(
                                              Icons.chevron_right_rounded,
                                              color: Color(0xFF95A1AC),
                                              size: 25,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: 0.8,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    20,
                                    10,
                                    0,
                                    0,
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).primaryText,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        16,
                                        10,
                                        4,
                                        0,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            FFLocalizations.of(
                                              context,
                                            ).getText('ispihwkf' /* Others */),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.override(
                                              fontFamily: 'Lexend',
                                              color:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).primaryBackground,
                                              fontSize: 16,
                                              letterSpacing: 0.0,
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30,
                                            buttonSize: 46,
                                            icon: const Icon(
                                              Icons.chevron_right_rounded,
                                              color: Color(0xFF95A1AC),
                                              size: 25,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: 0.8,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    20,
                                    10,
                                    0,
                                    0,
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).primaryText,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        16,
                                        0,
                                        4,
                                        0,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '5i8cf6uq' /* Future Plan */,
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.override(
                                              fontFamily: 'Lexend',
                                              color:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).primaryBackground,
                                              fontSize: 16,
                                              letterSpacing: 0.0,
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30,
                                            buttonSize: 46,
                                            icon: const Icon(
                                              Icons.chevron_right_rounded,
                                              color: Color(0xFF95A1AC),
                                              size: 25,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              if (Theme.of(context).brightness ==
                                  Brightness.dark)
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    0,
                                    20,
                                    0,
                                    10,
                                  ),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      setDarkModeSetting(
                                        context,
                                        ThemeMode.light,
                                      );
                                    },
                                    text: FFLocalizations.of(
                                      context,
                                    ).getText('qe5a8t95' /* Submit */),
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        0,
                                        0,
                                        0,
                                        0,
                                      ),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                            0,
                                            0,
                                            0,
                                            0,
                                          ),
                                      color: FlutterFlowTheme.of(context).info,
                                      textStyle: FlutterFlowTheme.of(
                                        context,
                                      ).titleSmall.override(
                                        fontFamily: 'Lexend',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                      elevation: 2,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                  20,
                                  0,
                                  0,
                                  0,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                        1,
                                        2,
                                        0,
                                        0,
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                            0.45,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                            0.1,
                                        decoration: const BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Opacity(
                                              opacity: 0.9,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsetsDirectional.fromSTEB(
                                                      0,
                                                      0,
                                                      10,
                                                      0,
                                                    ),
                                                child: FFButtonWidget(
                                                  onPressed: () {
                                                    print('Button pressed ...');
                                                  },
                                                  text: FFLocalizations.of(
                                                    context,
                                                  ).getText(
                                                    'o6zqexiw' /* Watch alumni blogs */,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width:
                                                        MediaQuery.sizeOf(
                                                          context,
                                                        ).width *
                                                        0.5,
                                                    height: 50,
                                                    padding:
                                                        const EdgeInsetsDirectional.fromSTEB(
                                                          16,
                                                          0,
                                                          16,
                                                          0,
                                                        ),
                                                    iconPadding:
                                                        const EdgeInsetsDirectional.fromSTEB(
                                                          0,
                                                          0,
                                                          0,
                                                          0,
                                                        ),
                                                    color:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).info,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).titleSmall.override(
                                                          fontFamily: 'Lexend',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                    elevation: 0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          8,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width:
                                          MediaQuery.sizeOf(context).width *
                                          0.45,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                          0.1,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Opacity(
                                            opacity: 0.9,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional.fromSTEB(
                                                    0,
                                                    2,
                                                    0,
                                                    0,
                                                  ),
                                              child: FFButtonWidget(
                                                onPressed: () {
                                                  print('Button pressed ...');
                                                },
                                                text: FFLocalizations.of(
                                                  context,
                                                ).getText(
                                                  'np7csgwm' /* Write Somethings */,
                                                ),
                                                options: FFButtonOptions(
                                                  width:
                                                      MediaQuery.sizeOf(
                                                        context,
                                                      ).width *
                                                      0.5,
                                                  height: 50,
                                                  padding:
                                                      const EdgeInsetsDirectional.fromSTEB(
                                                        16,
                                                        0,
                                                        16,
                                                        0,
                                                      ),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional.fromSTEB(
                                                        0,
                                                        0,
                                                        0,
                                                        0,
                                                      ),
                                                  color:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).info,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).titleSmall.override(
                                                        fontFamily: 'Lexend',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                  elevation: 0,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
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
                                              ).getText('rvc2x9kq' /* Home */),
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
                                              ).getText(
                                                'alqsrtzi' /* Notifications */,
                                              ),
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
                                              ).getText(
                                                '616xm0ao' /* Settings */,
                                              ),
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
                                              ).getText(
                                                'grvn6pe6' /* Profile */,
                                              ),
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
