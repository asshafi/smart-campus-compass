// lib/theme/flutter_flow_theme.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlutterFlowTheme {
  // Singleton pattern
  static FlutterFlowTheme? _instance;
  static FlutterFlowTheme get instance => _instance ??= FlutterFlowTheme._();
  FlutterFlowTheme._();

  // Colors
  Color primaryBackground = const Color(0xFFF1F4F8);
  Color secondaryBackground = const Color(0xFFFFFFFF);
  Color primaryText = const Color(0xFF090F13);
  Color secondaryText = const Color(0xFF95A1AC);
  Color accent1 = const Color(0xFF39D2C0);
  Color accent2 = const Color(0xFFEE8B60);

  // Text Styles
  TextStyle get titleLarge => GoogleFonts.getFont(
    'Lexend',
    color: primaryText,
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  TextStyle get bodyMedium => GoogleFonts.getFont(
    'Lexend',
    color: primaryText,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  // Helper method for context access
  static FlutterFlowTheme of(BuildContext context) {
    return instance;
  }
}