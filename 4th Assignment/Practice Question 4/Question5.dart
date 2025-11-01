// 5. Add your 7 friend names to the list. Use where to find a name that starts with alphabet a.
void main() {
  List<String> friends = ["Arif", "Raj", "Asif", "Sami", "Rafi", "Ayon", "Babul"];
  var startsWithA = friends.where((name) => name.startsWith('A'));
  print(startsWithA);
}
