class Mathfunction {
  String doAddition(int x, int y) {
    int result = x + y;
    return result.toString();
  }

  String doSubstraction(int x, int y) {
    int result = x - y;
    return result.toString();
  }

  String doMultiplication(int x, int y) {
    int result = x * y;
    return result.toString();
  }

  String doDivision(int x, int y) {
    if ((y == 0) & (x == 0)) {
      String result = "Not Defined";
      return result;
    } else {
      double result = x / y;
      return result.toString();
    }
  }

  String doMod(int x, int y) {
    if (y == 0) {
      String result = "Not Defined";
      return result;
    } else {
      int result = x % y;
      return result.toString();
    }
  }
}
