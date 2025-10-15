//Write a function in Dart called isEven that takes a number as an argument and returns True if the number is even, and False otherwise
bool isEven(int number) {
  if (number % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

void main() {
  print(isEven(8));  // Output: true
  print(isEven(7));  // Output: false
}
