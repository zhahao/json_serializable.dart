// 对json解析安全校验
class JsonSerializableSafety {
  static int jsonToInt(Object v) {
    if (v is int) return v;
    if (v is double) {
      return v.toInt();
    } else if (v is String) {
      int intValue;
      try {
        intValue = int.parse(v);
      } finally {}
      return intValue;
    } else {
      // ignore: avoid_returning_null
      return null;
    }
  }

  static double jsonToDouble(Object v) {
    if (v is double) return v;
    if (v is int) {
      return v.toDouble();
    } else if (v is String) {
      double doubleValue;
      try {
        doubleValue = double.parse(v);
      } finally {}
      return doubleValue;
    } else {
      // ignore: avoid_returning_null
      return null;
    }
  }

  // ignore: unnecessary_null_in_if_null_operators
  static num jsonToNum(Object v) => jsonToDouble(v) ?? jsonToInt(v) ??  null;

  static bool jsonToBool(Object v) {
    if (v is bool) return v;

    if (v is String) {
      final lowerCaseV = v.toLowerCase();
      if (lowerCaseV == 'true' || lowerCaseV == 'yes') {
        return true;
      }

      if (lowerCaseV == 'false' || lowerCaseV == 'no') {
        return false;
      }
    }

    final numV = jsonToNum(v)?.toInt();
    if (numV == 0) {
      return false;
    } else if (numV == 1) {
      return true;
    }

    // ignore: avoid_returning_null
    return null;
  }

  static String jsonToString(Object v) {
    if (v is String || v is num || v is bool || v is int || v is double) {
      return v.toString();
    } else {
      return null;
    }
  }
}
