import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'signup_model.dart';
export 'signup_model.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget({super.key});

  static String routeName = 'signup';
  static String routePath = '/signup';

  @override
  State<SignupWidget> createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  late SignupModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignupModel());

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
                    image: Image.asset('assets/images/Page_1.png').image,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 300, 0, 0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        height: MediaQuery.sizeOf(context).height * 0.35,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryText,
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
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                    15,
                                    20,
                                    0,
                                    0,
                                  ),
                                  child: Text(
                                    FFLocalizations.of(
                                      context,
                                    ).getText('walgwgsb' /* Sign up */),
                                    style: FlutterFlowTheme.of(
                                      context,
                                    ).bodyMedium.override(
                                      fontFamily: 'Lexend',
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).secondaryBackground,
                                      fontSize: 30,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Opacity(
                                  opacity: 0.7,
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                      10,
                                      20,
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
                                            FlutterFlowTheme.of(
                                              context,
                                            ).accent2,
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        ),
                                      ),
                                      child: Opacity(
                                        opacity: 0.8,
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                15,
                                                10,
                                                0,
                                                0,
                                              ),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'ruzwmbyw' /* Email address */,
                                            ),
                                            style: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.override(
                                              fontFamily: 'Lexend',
                                              color:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).primaryBackground,
                                              letterSpacing: 0.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Opacity(
                                  opacity: 0.7,
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                      10,
                                      20,
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
                                            FlutterFlowTheme.of(
                                              context,
                                            ).accent2,
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        ),
                                      ),
                                      child: Opacity(
                                        opacity: 0.8,
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                15,
                                                10,
                                                0,
                                                0,
                                              ),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '15ovdb3p' /* Password */,
                                            ),
                                            style: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.override(
                                              fontFamily: 'Lexend',
                                              color:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).primaryBackground,
                                              letterSpacing: 0.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Opacity(
                                  opacity: 0.7,
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                      10,
                                      20,
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
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF5217C7),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        ),
                                      ),
                                      child: Opacity(
                                        opacity: 0.8,
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                10,
                                                10,
                                                0,
                                                0,
                                              ),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'khyw67yx' /* Create account */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.override(
                                              fontFamily: 'Lexend',
                                              color:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).primaryText,
                                              fontSize: 18,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                20,
                                20,
                                0,
                                0,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                      10,
                                      0,
                                      0,
                                      0,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'w4t3wvdf' /* already have an account? */,
                                          ),
                                          style: FlutterFlowTheme.of(
                                            context,
                                          ).bodyMedium.override(
                                            fontFamily: 'Lexend',
                                            color:
                                                FlutterFlowTheme.of(
                                                  context,
                                                ).primaryBackground,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        FFLocalizations.of(
                                          context,
                                        ).getText('tdq22z1n' /* Sign in */),
                                        textAlign: TextAlign.center,
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
                                          fontWeight: FontWeight.w800,
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
