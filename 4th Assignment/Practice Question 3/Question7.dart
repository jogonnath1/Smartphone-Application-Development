// 7. Write a program in Dart to calculate power of a certain number.
num power(num base, num exponent) {
  return base.pow(exponent);
}

extension on num {
  num pow(num exponent) => exponent == 0 ? 1 : this * pow(exponent - 1);
}

void main() {
  print(power(5, 3));
}
