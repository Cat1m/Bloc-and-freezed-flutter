import 'package:crypto/crypto.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class TokenHeader {
  static String getAPIKey() {
    String passcode = 'dkkbpasscode';
    final currentYearMonth = DateFormat('yyyyMM').format(DateTime.now());
    return _getSha512fromString('$passcode$currentYearMonth');
  }

  static String _getSha512fromString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha512.convert(bytes);
    return digest.toString().toUpperCase();
  }
}
