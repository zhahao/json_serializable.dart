class JsonSerializableSafety {
  static int jsonToInt(Object v) {
    if (v is int) return v;
    if (v is double) {
      return v.toInt();
    } else if (v is String) {
      int intValue;
      try {
        intValue = int.parse(v);
      } catch (e) {
        assert(false, e.toString());
      }
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
      } catch (e) {
        assert(false, e.toString());
      }
      return doubleValue;
    } else {
      // ignore: avoid_returning_null
      return null;
    }
  }

  static String jsonToString(Object v) => v.toString();

  // ignore: unnecessary_null_in_if_null_operators
  static num jsonToNum(Object v) => jsonToInt(v) ?? jsonToDouble(v) ?? null;

  static bool jsonToBool(Object v) {
    if (v is bool) return v;
    if (v is int) {
      return v != 0;
    }
    // ignore: avoid_returning_null
    return null;
  }
}