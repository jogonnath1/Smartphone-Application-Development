// 8. Create a simple to-do application that allows user to add, remove, and view their task.
import 'dart:io';

void main() {
  List<String> tasks = [];
  while (true) {
    print("\n1. Add Task\n2. Remove Task\n3. View Tasks\n4. Exit");
    stdout.write("Choose option: ");
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      stdout.write("Enter task: ");
      String task = stdin.readLineSync()!;
      tasks.add(task);
      print("Task added!");
    } else if (choice == '2') {
      stdout.write("Enter task to remove: ");
      String task = stdin.readLineSync()!;
      tasks.remove(task);
      print("Task removed!");
    } else if (choice == '3') {
      print("Your Tasks:");
      for (var t in tasks) {
        print("- $t");
      }
    } else if (choice == '4') {
      print("Goodbye!");
      break;
    } else {
      print("Invalid option!");
    }
  }
}
