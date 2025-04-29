import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'register_account_model.dart';
export 'register_account_model.dart';

class RegisterAccountWidget extends StatefulWidget {
  const RegisterAccountWidget({super.key});

  static String routeName = 'registerAccount';
  static String routePath = '/registerAccount';

  @override
  State<RegisterAccountWidget> createState() => _RegisterAccountWidgetState();
}

class _RegisterAccountWidgetState extends State<RegisterAccountWidget> {
  late RegisterAccountModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisterAccountModel());

    _model.emailAddressTextController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordCreateTextController ??= TextEditingController();
    _model.passwordCreateFocusNode ??= FocusNode();

    _model.passwordConfirmTextController ??= TextEditingController();
    _model.passwordConfirmFocusNode ??= FocusNode();

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
                    image: Image.asset('assets/images/SCC_Ui.png').image,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                              0,
                              50,
                              0,
                              0,
                            ),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: MediaQuery.sizeOf(context).height * 0.6,
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
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                      24,
                                      0,
                                      24,
                                      0,
                                    ),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
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
                                                    '374cr5wa' /* Get Started */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                    context,
                                                  ).displaySmall.override(
                                                    fontFamily: 'Lexend',
                                                    color:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).primaryBackground,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    shadows: [
                                                      Shadow(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                              context,
                                                            ).secondaryText,
                                                        offset: const Offset(
                                                          2.0,
                                                          2.0,
                                                        ),
                                                        blurRadius: 2.0,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                  0,
                                                  12,
                                                  0,
                                                  0,
                                                ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(
                                                    context,
                                                  ).getText(
                                                    'qnikc59g' /* Create your account below. */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                    context,
                                                  ).titleMedium.override(
                                                    fontFamily: 'Lexend',
                                                    color:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).primaryBackground,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Opacity(
                                            opacity: 0.9,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional.fromSTEB(
                                                    0,
                                                    20,
                                                    0,
                                                    0,
                                                  ),
                                              child: TextFormField(
                                                controller:
                                                    _model
                                                        .emailAddressTextController,
                                                focusNode:
                                                    _model
                                                        .emailAddressFocusNode,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: GoogleFonts.getFont(
                                                    'Lexend',
                                                    color:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).secondaryBackground,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 14,
                                                    shadows: [
                                                      Shadow(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                              context,
                                                            ).secondaryText,
                                                        offset: const Offset(
                                                          2.0,
                                                          2.0,
                                                        ),
                                                        blurRadius: 2.0,
                                                      ),
                                                    ],
                                                  ),
                                                  hintText: FFLocalizations.of(
                                                    context,
                                                  ).getText(
                                                    'ol9vi60e' /* Enter your email... */,
                                                  ),
                                                  hintStyle: FlutterFlowTheme.of(
                                                    context,
                                                  ).bodySmall.override(
                                                    fontFamily: 'Lexend',
                                                    color:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).secondaryBackground,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Color(
                                                            0x00000000,
                                                          ),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              14,
                                                            ),
                                                      ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Color(
                                                            0x00000000,
                                                          ),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              14,
                                                            ),
                                                      ),
                                                  errorBorder: OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          14,
                                                        ),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Color(
                                                            0x00000000,
                                                          ),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              14,
                                                            ),
                                                      ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).accent2,
                                                  contentPadding:
                                                      const EdgeInsetsDirectional.fromSTEB(
                                                        20,
                                                        24,
                                                        20,
                                                        24,
                                                      ),
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
                                                validator: _model
                                                    .emailAddressTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Opacity(
                                            opacity: 0.9,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional.fromSTEB(
                                                    0,
                                                    12,
                                                    0,
                                                    0,
                                                  ),
                                              child: TextFormField(
                                                controller:
                                                    _model
                                                        .passwordCreateTextController,
                                                focusNode:
                                                    _model
                                                        .passwordCreateFocusNode,
                                                obscureText:
                                                    !_model
                                                        .passwordCreateVisibility,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme.of(
                                                    context,
                                                  ).bodySmall.override(
                                                    fontFamily: 'Lexend',
                                                    color:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).secondaryBackground,
                                                    letterSpacing: 0.0,
                                                  ),
                                                  hintText: FFLocalizations.of(
                                                    context,
                                                  ).getText(
                                                    'nqgalv0h' /* Enter your password... */,
                                                  ),
                                                  hintStyle: FlutterFlowTheme.of(
                                                    context,
                                                  ).bodySmall.override(
                                                    fontFamily: 'Lexend',
                                                    color:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).primaryBackground,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    shadows: [
                                                      Shadow(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                              context,
                                                            ).secondaryText,
                                                        offset: const Offset(
                                                          2.0,
                                                          2.0,
                                                        ),
                                                        blurRadius: 2.0,
                                                      ),
                                                    ],
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Color(
                                                            0x00000000,
                                                          ),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              14,
                                                            ),
                                                      ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Color(
                                                            0x00000000,
                                                          ),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              14,
                                                            ),
                                                      ),
                                                  errorBorder: OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          14,
                                                        ),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Color(
                                                            0x00000000,
                                                          ),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              14,
                                                            ),
                                                      ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).accent2,
                                                  contentPadding:
                                                      const EdgeInsetsDirectional.fromSTEB(
                                                        20,
                                                        24,
                                                        20,
                                                        24,
                                                      ),
                                                  suffixIcon: InkWell(
                                                    onTap:
                                                        () => safeSetState(
                                                          () =>
                                                              _model.passwordCreateVisibility =
                                                                  !_model
                                                                      .passwordCreateVisibility,
                                                        ),
                                                    focusNode: FocusNode(
                                                      skipTraversal: true,
                                                    ),
                                                    child: Icon(
                                                      _model.passwordCreateVisibility
                                                          ? Icons
                                                              .visibility_outlined
                                                          : Icons
                                                              .visibility_off_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                            context,
                                                          ).secondaryText,
                                                      size: 20,
                                                    ),
                                                  ),
                                                ),
                                                style: FlutterFlowTheme.of(
                                                  context,
                                                ).bodyMedium.override(
                                                  fontFamily: 'Lexend',
                                                  letterSpacing: 0.0,
                                                ),
                                                validator: _model
                                                    .passwordCreateTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Opacity(
                                            opacity: 0.9,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional.fromSTEB(
                                                    0,
                                                    12,
                                                    0,
                                                    0,
                                                  ),
                                              child: TextFormField(
                                                controller:
                                                    _model
                                                        .passwordConfirmTextController,
                                                focusNode:
                                                    _model
                                                        .passwordConfirmFocusNode,
                                                obscureText:
                                                    !_model
                                                        .passwordConfirmVisibility,
                                                decoration: InputDecoration(
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).bodySmall.override(
                                                        fontFamily: 'Lexend',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: FFLocalizations.of(
                                                    context,
                                                  ).getText(
                                                    '9lajntpj' /* Enter your password... */,
                                                  ),
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).bodySmall.override(
                                                        fontFamily: 'Lexend',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                              context,
                                                            ).primaryBackground,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Color(
                                                            0x00000000,
                                                          ),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              14,
                                                            ),
                                                      ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Color(
                                                            0x00000000,
                                                          ),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              14,
                                                            ),
                                                      ),
                                                  errorBorder: OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          14,
                                                        ),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color: Color(
                                                            0x00000000,
                                                          ),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              14,
                                                            ),
                                                      ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).accent2,
                                                  contentPadding:
                                                      const EdgeInsetsDirectional.fromSTEB(
                                                        20,
                                                        24,
                                                        20,
                                                        24,
                                                      ),
                                                  suffixIcon: InkWell(
                                                    onTap:
                                                        () => safeSetState(
                                                          () =>
                                                              _model.passwordConfirmVisibility =
                                                                  !_model
                                                                      .passwordConfirmVisibility,
                                                        ),
                                                    focusNode: FocusNode(
                                                      skipTraversal: true,
                                                    ),
                                                    child: Icon(
                                                      _model.passwordConfirmVisibility
                                                          ? Icons
                                                              .visibility_outlined
                                                          : Icons
                                                              .visibility_off_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                            context,
                                                          ).secondaryText,
                                                      size: 20,
                                                    ),
                                                  ),
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
                                                validator: _model
                                                    .passwordConfirmTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                              0,
                                              0,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional.fromSTEB(
                                                    0,
                                                    24,
                                                    0,
                                                    24,
                                                  ),
                                              child: FFButtonWidget(
                                                onPressed: () {
                                                  print('Button pressed ...');
                                                },
                                                text: FFLocalizations.of(
                                                  context,
                                                ).getText(
                                                  'iuv6ay8i' /* Create Account */,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 160,
                                                  height: 50,
                                                  padding:
                                                      const EdgeInsetsDirectional.fromSTEB(
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
                                                      ).info,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).titleSmall.override(
                                                        fontFamily: 'Lexend',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  elevation: 3,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                LoginPageWidget.routeName,
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .leftToRight,
                                                        duration: const Duration(
                                                          milliseconds: 220,
                                                        ),
                                                      ),
                                                },
                                              );
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(
                                                        context,
                                                      ).width *
                                                      0.8,
                                                  height: 44,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          8,
                                                        ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(
                                                          4,
                                                        ),
                                                        child: Container(
                                                          width: 317.85,
                                                          height: 100,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
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
                                                                        'pckor90j' /* already have account ? */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                        context,
                                                                      ).bodyMedium.override(
                                                                        fontFamily:
                                                                            'Lexend',
                                                                        color:
                                                                            FlutterFlowTheme.of(
                                                                              context,
                                                                            ).primaryBackground,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
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
                                                                        'zjd7c2xm' /*  sign up */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                        context,
                                                                      ).bodyMedium.override(
                                                                        fontFamily:
                                                                            'Lexend',
                                                                        color:
                                                                            FlutterFlowTheme.of(
                                                                              context,
                                                                            ).primaryBackground,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
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
                                                    padding:
                                                        const EdgeInsetsDirectional.fromSTEB(
                                                          20,
                                                          0,
                                                          0,
                                                          0,
                                                        ),
                                                    child: Icon(
                                                      Icons.wechat_sharp,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                            context,
                                                          ).success,
                                                      size: 35,
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
                                                          20,
                                                          0,
                                                          0,
                                                          0,
                                                        ),
                                                    child: Icon(
                                                      Icons.email_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                            context,
                                                          ).success,
                                                      size: 30,
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
                                                          20,
                                                          0,
                                                          0,
                                                          0,
                                                        ),
                                                    child: Icon(
                                                      Icons.facebook_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                            context,
                                                          ).info,
                                                      size: 30,
                                                    ),
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
    );
  }
}
