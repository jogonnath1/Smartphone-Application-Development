// 7. Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
void main() {
  Map<String, String> contacts = {
    "John": "01234",
    "Alex": "05678",
    "Rick": "09876",
    "Sam": "02345"
  };

  var keysWithLength4 = contacts.keys.where((key) => key.length == 4);
  print(keysWithLength4);
}
