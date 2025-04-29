import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'menu_model.dart';
export 'menu_model.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  static String routeName = 'menu';
  static String routePath = '/menu';

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  late MenuModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());

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
                                              FlutterFlowTheme.of(
                                                context,
                                              ).primaryText,
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
                                                      const AlignmentDirectional(
                                                        0,
                                                        0,
                                                      ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional.fromSTEB(
                                                          10,
                                                          10,
                                                          0,
                                                          0,
                                                        ),
                                                    child: FaIcon(
                                                      FontAwesomeIcons.search,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                            context,
                                                          ).primaryBackground,
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
                                                        10,
                                                        10,
                                                        0,
                                                        0,
                                                      ),
                                                  child: Text(
                                                    FFLocalizations.of(
                                                      context,
                                                    ).getText(
                                                      'svzpfc8o' /* Search */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                      context,
                                                    ).bodyLarge.override(
                                                      fontFamily: 'Poppins',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                            context,
                                                          ).primaryBackground,
                                                      letterSpacing: 0.0,
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
                                                        180,
                                                        10,
                                                        0,
                                                        0,
                                                      ),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.microphone,
                                                    color:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).secondaryBackground,
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
                                                20,
                                                40,
                                                0,
                                                0,
                                              ),
                                          child: Container(
                                            width: 60,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image:
                                                    Image.asset(
                                                      'assets/images/gnnulogo-removebg-preview.png',
                                                    ).image,
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
                                          20,
                                          30,
                                          0,
                                          0,
                                        ),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'uy6k72t0' /* Categories */,
                                          ),
                                          style: FlutterFlowTheme.of(
                                            context,
                                          ).bodyLarge.override(
                                            fontFamily: 'Poppins',
                                            color:
                                                FlutterFlowTheme.of(
                                                  context,
                                                ).primaryBackground,
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
                                20,
                                20,
                                20,
                                0,
                              ),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: MediaQuery.sizeOf(context).height * 0.2,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(
                                        context,
                                      ).secondaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        Image.asset(
                                          'assets/images/ea5de2b0694b3ddea59dfd07b4567f4a.jpg',
                                        ).image,
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
                                      opacity: 0.8,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                          10,
                                          0,
                                          0,
                                          0,
                                        ),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                              0.35,
                                          height:
                                              MediaQuery.sizeOf(
                                                context,
                                              ).height *
                                              0.04,
                                          decoration: BoxDecoration(
                                            color:
                                                FlutterFlowTheme.of(
                                                  context,
                                                ).primaryText,
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            ),
                                          ),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'xbkdi18p' /* AR Navigation */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(
                                              context,
                                            ).bodyLarge.override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).primaryBackground,
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
                                20,
                                20,
                                0,
                                0,
                              ),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: MediaQuery.sizeOf(context).height * 0.2,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(
                                        context,
                                      ).secondaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        Image.asset(
                                          'assets/images/snapshot.jpg',
                                        ).image,
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
                                      opacity: 0.8,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                          10,
                                          0,
                                          0,
                                          0,
                                        ),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                              0.35,
                                          height:
                                              MediaQuery.sizeOf(
                                                context,
                                              ).height *
                                              0.04,
                                          decoration: BoxDecoration(
                                            color:
                                                FlutterFlowTheme.of(
                                                  context,
                                                ).primaryText,
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            ),
                                          ),
                                          child: Text(
                                            FFLocalizations.of(
                                              context,
                                            ).getText('v92n070f' /* Weather */),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(
                                              context,
                                            ).bodyLarge.override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).primaryBackground,
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
                                20,
                                20,
                                0,
                                0,
                              ),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: MediaQuery.sizeOf(context).height * 0.2,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(
                                        context,
                                      ).secondaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        Image.asset(
                                          'assets/images/3625de9168a0c0a14fb93ab3712dc0c8.jpg',
                                        ).image,
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
                                      opacity: 0.8,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                          10,
                                          0,
                                          0,
                                          0,
                                        ),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                              0.35,
                                          height:
                                              MediaQuery.sizeOf(
                                                context,
                                              ).height *
                                              0.04,
                                          decoration: BoxDecoration(
                                            color:
                                                FlutterFlowTheme.of(
                                                  context,
                                                ).primaryText,
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            ),
                                          ),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'h0z1e03q' /* CareerPath */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(
                                              context,
                                            ).bodyLarge.override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).primaryBackground,
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
                                20,
                                20,
                                0,
                                0,
                              ),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: MediaQuery.sizeOf(context).height * 0.2,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(
                                        context,
                                      ).secondaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        Image.asset(
                                          'assets/images/72d9af964d384fc2a16fd087c1062a7c.jpg',
                                        ).image,
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
                                      opacity: 0.8,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                          10,
                                          0,
                                          0,
                                          0,
                                        ),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                              0.35,
                                          height:
                                              MediaQuery.sizeOf(
                                                context,
                                              ).height *
                                              0.04,
                                          decoration: BoxDecoration(
                                            color:
                                                FlutterFlowTheme.of(
                                                  context,
                                                ).primaryText,
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            ),
                                          ),
                                          child: Text(
                                            FFLocalizations.of(
                                              context,
                                            ).getText('24dk7wp7' /* Food */),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(
                                              context,
                                            ).bodyLarge.override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).primaryBackground,
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
                                20,
                                20,
                                0,
                                0,
                              ),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: MediaQuery.sizeOf(context).height * 0.2,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(
                                        context,
                                      ).secondaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        Image.asset(
                                          'assets/images/4fe50eb1311256700f95c511d7b3f0d8.jpg',
                                        ).image,
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
                                      opacity: 0.8,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                          10,
                                          0,
                                          0,
                                          0,
                                        ),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                              0.35,
                                          height:
                                              MediaQuery.sizeOf(
                                                context,
                                              ).height *
                                              0.04,
                                          decoration: BoxDecoration(
                                            color:
                                                FlutterFlowTheme.of(
                                                  context,
                                                ).primaryText,
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            ),
                                          ),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'nvxzasra' /* Lost & Found */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(
                                              context,
                                            ).bodyLarge.override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).primaryBackground,
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
                                20,
                                20,
                                0,
                                0,
                              ),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: MediaQuery.sizeOf(context).height * 0.2,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(
                                        context,
                                      ).secondaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        Image.asset(
                                          'assets/images/0225c0c67164b1d7de2f58f08905cbd2.jpg',
                                        ).image,
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
                                      opacity: 0.8,
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                            0.4,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                            0.04,
                                        decoration: BoxDecoration(
                                          color:
                                              FlutterFlowTheme.of(
                                                context,
                                              ).primaryText,
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15),
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(15),
                                          ),
                                        ),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'gdx0tyqs' /* CampusConnect */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(
                                            context,
                                          ).bodyLarge.override(
                                            fontFamily: 'Poppins',
                                            color:
                                                FlutterFlowTheme.of(
                                                  context,
                                                ).primaryBackground,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
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
                                      ).getText('0pbdiuo8' /* Home */),
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
                                      ).getText('aaz46rfa' /* Notifications */),
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
                                      ).getText('ycbr6m9l' /* Settings */),
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
                                      ).getText('iirjqsno' /* Profile */),
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
