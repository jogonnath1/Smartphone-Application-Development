// 6. Create a map with name, address, age, country keys and store values to it. Update country name to other country and print all keys and values.
void main() {
  Map<String, dynamic> info = {
    "name": "Raj",
    "address": "Dhaka",
    "age": 21,
    "country": "Bangladesh"
  };

  info["country"] = "Germany";

  info.forEach((key, value) {
    print("$key: $value");
  });
}
