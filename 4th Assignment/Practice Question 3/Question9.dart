// 9. Write a function in Dart called maxNumber that takes three numbers as arguments and returns the largest number.
num maxNumber(num a, num b, num c) {
  return (a > b && a > c) ? a : (b > c ? b : c);
}

void main() {
  print(maxNumber(5, 8, 2));
}
