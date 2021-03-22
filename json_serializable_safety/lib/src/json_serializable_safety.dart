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
  static num jsonToNum(Object v) {
    if (v is num) return v;
    if (v is String) {
      num numValue;
      try {
        numValue = num.parse(v);
      } finally {}
      return numValue;
    } else {
      // ignore: avoid_returning_null
      return null;
    }
  }

  static bool jsonToBool(Object v) {
    if (v is bool) return v;

    if (v is String) {
      final lowerCaseValue = v.toLowerCase();
      if (lowerCaseValue == 'true' || lowerCaseValue == 'yes') {
        return true;
      }

      if (lowerCaseValue == 'false' || lowerCaseValue == 'no') {
        return false;
      }
    }

    final numValue = jsonToNum(v)?.toInt();
    if (numValue == 0) {
      return false;
    } else if (numValue == 1) {
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
