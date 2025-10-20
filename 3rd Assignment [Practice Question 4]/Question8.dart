//Create a simple to-do application that allows user to add, remove, and view their task.
import 'dart:io';

void main() {
  // This list will store all the tasks
  List<String> tasks = [];

  while (true) {
    // Show menu
    print("\n==== To-Do App ====");
    print("1. View Tasks");
    print("2. Add Task");
    print("3. Remove Task");
    print("4. Exit");
    stdout.write("Enter your choice: ");
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      // View all tasks
      if (tasks.isEmpty) {
        print("No tasks yet!");
      } else {
        print("\nYour Tasks:");
        for (int i = 0; i < tasks.length; i++) {
          print("${i + 1}. ${tasks[i]}");
        }
      }
    }

    else if (choice == '2') {
      // Add new task
      stdout.write("Enter a new task: ");
      String? task = stdin.readLineSync();
      if (task != null && task.isNotEmpty) {
        tasks.add(task);
        print("Task added!");
      } else {
        print("Task cannot be empty!");
      }
    }

    else if (choice == '3') {
      // Remove a task
      if (tasks.isEmpty) {
        print("No tasks to remove!");
      } else {
        print("\nYour Tasks:");
        for (int i = 0; i < tasks.length; i++) {
          print("${i + 1}. ${tasks[i]}");
        }
        stdout.write("Enter task number to remove: ");
        String? input = stdin.readLineSync();
        int? index = int.tryParse(input ?? '');
        if (index != null && index > 0 && index <= tasks.length) {
          tasks.removeAt(index - 1);
          print("Task removed!");
        } else {
          print("Invalid task number!");
        }
      }
    }

    else if (choice == '4') {
      // Exit the program
      print("Goodbye!");
      break;
    }

    else {
      // Invalid input
      print("Please enter a number between 1 and 4.");
    }
  }
}
