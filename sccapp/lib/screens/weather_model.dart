import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'weather_model.dart';
export 'weather_model.dart';

class WeatherWidget extends StatefulWidget {
  const WeatherWidget({super.key});

  static String routeName = 'Weather';
  static String routePath = '/weather';

  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  late WeatherModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WeatherModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsersRecord>>(
      stream: queryUsersRecord(singleRecord: true),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).background,
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
        List<UsersRecord> weatherUsersRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final weatherUsersRecord =
            weatherUsersRecordList.isNotEmpty
                ? weatherUsersRecordList.first
                : null;

        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).background,
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
                    image:
                        Image.asset(
                          'assets/images/63c9f3f99fdd8725bb5796a8f5c031b.png',
                        ).image,
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
                                    50,
                                    50,
                                    0,
                                    0,
                                  ),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'aqiwq5ne' /* Ganzhou , Jiangxi */,
                                    ),
                                    style: FlutterFlowTheme.of(
                                      context,
                                    ).bodyMedium.override(
                                      fontFamily: 'Lexend',
                                      fontSize: 30,
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
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                50,
                                                20,
                                                0,
                                                0,
                                              ),
                                          child: Text(
                                            FFLocalizations.of(
                                              context,
                                            ).getText('avlhfzcu' /* 20 */),
                                            style: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.override(
                                              fontFamily: 'Lexend',
                                              fontSize: 50,
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
                                        ).getText('m10scio8' /* 0 */),
                                        style: FlutterFlowTheme.of(
                                          context,
                                        ).bodyMedium.override(
                                          fontFamily: 'Lexend',
                                          fontSize: 18,
                                          letterSpacing: 0.0,
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
                                        10,
                                        20,
                                        0,
                                        0,
                                      ),
                                      child: Text(
                                        FFLocalizations.of(
                                          context,
                                        ).getText('slygmteg' /* C */),
                                        style: FlutterFlowTheme.of(
                                          context,
                                        ).bodyMedium.override(
                                          fontFamily: 'Lexend',
                                          fontSize: 30,
                                          letterSpacing: 0.0,
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    40,
                                    0,
                                    0,
                                    0,
                                  ),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '73ks6jkn' /* Partly Cloudy
H:30 º    L:12 º */,
                                    ),
                                    style: FlutterFlowTheme.of(
                                      context,
                                    ).bodyMedium.override(
                                      fontFamily: 'Lexend',
                                      fontSize: 16,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
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
                            Opacity(
                              opacity: 0.8,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                  20,
                                  20,
                                  0,
                                  0,
                                ),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.9,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.18,
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
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                  20,
                                                  10,
                                                  0,
                                                  0,
                                                ),
                                            child: Text(
                                              FFLocalizations.of(
                                                context,
                                              ).getText(
                                                'nima8byr' /* Clear  conditions expected aro... */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                context,
                                              ).bodyMedium.override(
                                                fontFamily: 'Lexend',
                                                fontSize: 16,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
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
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            10,
                                                            0,
                                                            0,
                                                          ),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                          context,
                                                        ).getText(
                                                          'ltd4yhxo' /* Now */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                ).bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  fontSize: 16,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            10,
                                                            0,
                                                            0,
                                                          ),
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .cloudMoon,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                              context,
                                                            ).primaryText,
                                                        size: 24,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            10,
                                                            0,
                                                            0,
                                                          ),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                          context,
                                                        ).getText(
                                                          '4j6h34fk' /* 20º */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                ).bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  fontSize: 20,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                  20,
                                                  10,
                                                  0,
                                                  0,
                                                ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            10,
                                                            0,
                                                            0,
                                                          ),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                          context,
                                                        ).getText(
                                                          'p4raxvbp' /* 1AM */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                ).bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  fontSize: 16,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            10,
                                                            0,
                                                            0,
                                                          ),
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .cloudMoon,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                              context,
                                                            ).primaryText,
                                                        size: 24,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            10,
                                                            0,
                                                            0,
                                                          ),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                          context,
                                                        ).getText(
                                                          '3iag7up7' /* 19º */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                ).bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  fontSize: 20,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                  20,
                                                  10,
                                                  0,
                                                  0,
                                                ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            10,
                                                            0,
                                                            0,
                                                          ),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                          context,
                                                        ).getText(
                                                          'swu2tki9' /* 2AM */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                ).bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  fontSize: 16,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            10,
                                                            0,
                                                            0,
                                                          ),
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .cloudMoonRain,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                              context,
                                                            ).primaryText,
                                                        size: 24,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            10,
                                                            0,
                                                            0,
                                                          ),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                          context,
                                                        ).getText(
                                                          'e11fxyyp' /* 18º */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                ).bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  fontSize: 20,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                  20,
                                                  10,
                                                  0,
                                                  0,
                                                ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            10,
                                                            0,
                                                            0,
                                                          ),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                          context,
                                                        ).getText(
                                                          'hyzt4b1v' /* 3AM */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                ).bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  fontSize: 16,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            10,
                                                            0,
                                                            0,
                                                          ),
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .cloudMoonRain,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                              context,
                                                            ).primaryText,
                                                        size: 24,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            10,
                                                            0,
                                                            0,
                                                          ),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                          context,
                                                        ).getText(
                                                          '19ncln3z' /* 18º */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                ).bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  fontSize: 20,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                  20,
                                                  10,
                                                  0,
                                                  0,
                                                ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            10,
                                                            0,
                                                            0,
                                                          ),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                          context,
                                                        ).getText(
                                                          '8ypx3dnn' /* 4AM */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                ).bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  fontSize: 16,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            10,
                                                            0,
                                                            0,
                                                          ),
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .cloudMoon,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                              context,
                                                            ).primaryText,
                                                        size: 24,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            10,
                                                            0,
                                                            0,
                                                          ),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                          context,
                                                        ).getText(
                                                          'qtlih4ak' /* 17º */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                ).bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  fontSize: 20,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                  20,
                                                  10,
                                                  0,
                                                  0,
                                                ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            10,
                                                            0,
                                                            0,
                                                          ),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                          context,
                                                        ).getText(
                                                          'jr15bl8i' /* 5AM */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                ).bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  fontSize: 16,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            10,
                                                            0,
                                                            0,
                                                          ),
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .solidMoon,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                              context,
                                                            ).primaryText,
                                                        size: 24,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional.fromSTEB(
                                                            0,
                                                            10,
                                                            0,
                                                            0,
                                                          ),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                          context,
                                                        ).getText(
                                                          'putlq67s' /* 17º */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                ).bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  fontSize: 20,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
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
                                    ],
                                  ),
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
                          padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Opacity(
                                    opacity: 0.9,
                                    child: Container(
                                      width: 160,
                                      height: 140,
                                      decoration: BoxDecoration(
                                        color:
                                            FlutterFlowTheme.of(
                                              context,
                                            ).alternate,
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(25),
                                          bottomRight: Radius.circular(25),
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25),
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
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional.fromSTEB(
                                                          20,
                                                          10,
                                                          0,
                                                          0,
                                                        ),
                                                    child: Icon(
                                                      Icons.thermostat_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                            context,
                                                          ).primaryText,
                                                      size: 24,
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
                                                          5,
                                                          15,
                                                          0,
                                                          0,
                                                        ),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                        context,
                                                      ).getText(
                                                        '06mau3w6' /* FEELS LIKE */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                            context,
                                                          ).bodyMedium.override(
                                                            fontFamily:
                                                                'Lexend',
                                                            fontSize: 14,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
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
                                                padding:
                                                    const EdgeInsetsDirectional.fromSTEB(
                                                      20,
                                                      10,
                                                      0,
                                                      0,
                                                    ),
                                                child: Text(
                                                  FFLocalizations.of(
                                                    context,
                                                  ).getText(
                                                    'tj9gqwvf' /* 20º */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                    context,
                                                  ).bodyMedium.override(
                                                    fontFamily: 'Lexend',
                                                    fontSize: 20,
                                                    letterSpacing: 0.0,
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
                                                      5,
                                                      10,
                                                      0,
                                                      0,
                                                    ),
                                                child: Text(
                                                  FFLocalizations.of(
                                                    context,
                                                  ).getText(
                                                    'voi09ahb' /* Similiar to the actual
tempera... */,
                                                  ),
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
                                    ),
                                  ),
                                ],
                              ),
                              Opacity(
                                opacity: 0.9,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    0,
                                    10,
                                    0,
                                    0,
                                  ),
                                  child: Container(
                                    width: 160,
                                    height: 140,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).alternate,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(25),
                                        bottomRight: Radius.circular(25),
                                        topLeft: Radius.circular(25),
                                        topRight: Radius.circular(25),
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
                                                Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional.fromSTEB(
                                                        20,
                                                        10,
                                                        0,
                                                        0,
                                                      ),
                                                  child: Icon(
                                                    Icons.water_outlined,
                                                    color:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).primaryText,
                                                    size: 24,
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
                                                        5,
                                                        15,
                                                        0,
                                                        0,
                                                      ),
                                                  child: Text(
                                                    FFLocalizations.of(
                                                      context,
                                                    ).getText(
                                                      'emmnaorv' /* HUMIDITY */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                      context,
                                                    ).bodyMedium.override(
                                                      fontFamily: 'Lexend',
                                                      fontSize: 14,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
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
                                              padding:
                                                  const EdgeInsetsDirectional.fromSTEB(
                                                    20,
                                                    10,
                                                    0,
                                                    0,
                                                  ),
                                              child: Text(
                                                FFLocalizations.of(
                                                  context,
                                                ).getText('4mvcw3ay' /* 64% */),
                                                style: FlutterFlowTheme.of(
                                                  context,
                                                ).bodyMedium.override(
                                                  fontFamily: 'Lexend',
                                                  fontSize: 20,
                                                  letterSpacing: 0.0,
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
                                                    5,
                                                    10,
                                                    0,
                                                    0,
                                                  ),
                                              child: Text(
                                                FFLocalizations.of(
                                                  context,
                                                ).getText(
                                                  'kyayyzl3' /* The dew point is 12º
right now... */,
                                                ),
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
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Opacity(
                                    opacity: 0.9,
                                    child: Container(
                                      width: 160,
                                      height: 140,
                                      decoration: BoxDecoration(
                                        color:
                                            FlutterFlowTheme.of(
                                              context,
                                            ).alternate,
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(25),
                                          bottomRight: Radius.circular(25),
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25),
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
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional.fromSTEB(
                                                          20,
                                                          10,
                                                          0,
                                                          0,
                                                        ),
                                                    child: Icon(
                                                      Icons
                                                          .remove_red_eye_sharp,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                            context,
                                                          ).primaryText,
                                                      size: 24,
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
                                                          5,
                                                          15,
                                                          0,
                                                          0,
                                                        ),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                        context,
                                                      ).getText(
                                                        'sx97yk6p' /* VISIBILITY */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                            context,
                                                          ).bodyMedium.override(
                                                            fontFamily:
                                                                'Lexend',
                                                            fontSize: 14,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
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
                                                padding:
                                                    const EdgeInsetsDirectional.fromSTEB(
                                                      20,
                                                      10,
                                                      0,
                                                      0,
                                                    ),
                                                child: Text(
                                                  FFLocalizations.of(
                                                    context,
                                                  ).getText(
                                                    '8jpmbf66' /* 19 km */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                    context,
                                                  ).bodyMedium.override(
                                                    fontFamily: 'Lexend',
                                                    fontSize: 20,
                                                    letterSpacing: 0.0,
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
                                                      5,
                                                      10,
                                                      0,
                                                      0,
                                                    ),
                                                child: Text(
                                                  FFLocalizations.of(
                                                    context,
                                                  ).getText(
                                                    '1qdnzwgp' /* It's perfectly clear
right now... */,
                                                  ),
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
                                    ),
                                  ),
                                ],
                              ),
                              Opacity(
                                opacity: 0.9,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    0,
                                    10,
                                    0,
                                    0,
                                  ),
                                  child: Container(
                                    width: 160,
                                    height: 140,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).alternate,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(25),
                                        bottomRight: Radius.circular(25),
                                        topLeft: Radius.circular(25),
                                        topRight: Radius.circular(25),
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
                                                Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional.fromSTEB(
                                                        20,
                                                        10,
                                                        0,
                                                        0,
                                                      ),
                                                  child: Icon(
                                                    Icons.calendar_month,
                                                    color:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).primaryText,
                                                    size: 24,
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
                                                        5,
                                                        15,
                                                        0,
                                                        0,
                                                      ),
                                                  child: Text(
                                                    FFLocalizations.of(
                                                      context,
                                                    ).getText(
                                                      '0sljzsvp' /* FORECAST */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                      context,
                                                    ).bodyMedium.override(
                                                      fontFamily: 'Lexend',
                                                      fontSize: 14,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
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
                                              padding:
                                                  const EdgeInsetsDirectional.fromSTEB(
                                                    20,
                                                    10,
                                                    0,
                                                    0,
                                                  ),
                                              child: Text(
                                                FFLocalizations.of(
                                                  context,
                                                ).getText(
                                                  '7e5a03ea' /* Next  */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                  context,
                                                ).bodyMedium.override(
                                                  fontFamily: 'Lexend',
                                                  fontSize: 20,
                                                  letterSpacing: 0.0,
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
                                                FFLocalizations.of(
                                                  context,
                                                ).getText(
                                                  '5heyn6hp' /* 10 days. */,
                                                ),
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
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(30, 8, 0, 0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.8,
                            height: 80,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
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
                                30,
                                0,
                                0,
                              ),
                              child: Text(
                                FFLocalizations.of(
                                  context,
                                ).getText('nnxtau30' /* Weather Notes */),
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
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
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
                                      ).getText('gsjk5zc7' /* Home */),
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
                                      ).getText('7v8ghz24' /* Notifications */),
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
                                      ).getText('7utgb7cy' /* Settings */),
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
                                      ).getText('274zdouw' /* Profile */),
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
        );
      },
    );
  }
}
