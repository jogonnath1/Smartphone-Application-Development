// 6. Write a program in Dart to reverse a String using function.
String reverseString(String text) {
  return text.split('').reversed.join('');
}

void main() {
  print(reverseString("Raj"));
}
