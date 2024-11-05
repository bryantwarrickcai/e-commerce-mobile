# BryShop E-Commerce - Bryant Warrick Cai - PBP

## Answers to Questions for Assignment 7

---

**Question: Explain what are stateless widgets and stateful widgets, and explain the difference between them.**

Answer:

Stateless widgets are immutable widgets that do not maintain any state. Once the widget is created, their properties cannot change. Stateless widgets are typically used for parts that do not require dynamic behavior. Common usage examples include icons or text labels.

Stateful widgets are mutable and can maintain state throughout their lifetime. This allows for interactive and dynamic behavior. Examples include forms or animations.

Stateless widgets are generally more efficient due to not requiring state management.

---

**Question: Mention the widgets that you have used for this project and its uses.**

Answer:

| No. | Widget Name    | Usage                                                                             |
|-----|----------------|-----------------------------------------------------------------------------------|
| 1.  | Scaffold       | Provides a framework for implementing the app UI structure.                       |
| 2.  | AppBar         | Displays the app's top bar.                                                       |
| 3.  | Text           | Displays a text string on the screen.                                             |
| 4.  | Padding        | Adds padding around its child widget.                                             |
| 5.  | Column         | Aligns its child widgets vertically.                                              |
| 6.  | Row            | Aligns its child widgets horizontally.                                            |
| 7.  | Card           | Creates a rectangular area, commonly used for visually separating content blocks. |
| 8.  | Container      | Customizes its child widget's size, padding, and other properties.                |
| 9.  | SizedBox       | Adds a fixed-size space between widgets.                                          |
| 10. | Center         | Centers its child widget.                                                         |
| 11. | GridView.count | Creates a scrollable grid layout with a fixed number of columns.                  |
| 12. | Material       | Provides material styling to widgets, allowing the use of colors and shapes.      |
| 13. | InkWell        | Adds a ripple effect when tapped.                                                 |
| 14. | SnackBar       | Displays a short message at the bottom of the screen.                             |
| 15. | Icon           | Displays an icon from Flutter's built-in icon library.                            |

---

**What is the use-case for `setState()`? Explain the variable that can be affected by `setState()`.**

Answer: The `setState` function is used with stateful widgets to update the UI in response to changes in the widget's state. `setState` is commonly used for fecthing and modifying data, updating UI in response to user interactions, and updating based on animations and timers. Examples of variables that can be affected by `setState` are properties that determine display content, boolean flags, user input values, and animation progress or counter.

---

**Explain the difference between `const` and `final` keyword.**

Answer: In Dart, both `const` and `final` are both used for declaring immutable/constant variables. However, `final` can be used for values that should not be reassigned, but its value is not known at runtime. An example include declaring a variable with `final currentDateTime = DateTime.now()` to set the current date and time to the `currentDateTime` variable. (This value is only created after the code runs). `const` is a compile-time constant, meaning that the value must be determined at compile time. `const` must be deeply constant, meaning that all its nested values are also constant. Example: `const pi = 3.14159;`.

---

**Explain how you implemented the checklist above step-by-step.**

Answer:

1. First, I created a new Flutter project by running `flutter create ecommerce`.
2. I created a new file inside the `ecommerce/lib` directory named `menu.dart`.
3. In the newly created `menu.dart` file, I added the following import:
```
import 'package:flutter/material.dart';
```
4. I moved the `MyHomePage` and `_MyHomePageState` classes from the `main.dart` file to the `menu.dart` file.
5. I added the following import in the `main.dart` file:
```
import 'package:ecommerce/menu.dart';
```
6. In the `main.dart` file, in the `MyApp` class, I changed the `colorScheme` to:
```
colorScheme: ColorScheme.fromSwatch(
  primarySwatch: Colors.deepPurple,
).copyWith(secondary: Colors.deepPurple[400]),
```
7. I changed the `home` parameter in the `main.dart` file from `const MyHomePage(title: 'Flutter Demo Home Page')` into `MyHomePage()`.
8. In the `menu.dart` file, I changed the page widget from stateful to stateless: First, I removed everything in the `MyHomePage` class.
9. I changed the class inheritance of `MyHomePage` from `StatefulWidget` to `StatelessWidget`.
10. In the `MyHomePage` class, I added the constructor as `MyHomePage({super.key});`.
11. I copied the entire `Widget build(BuildContext context)` from the `_MyHomePageState` class to the `MyHomePage` class.
12. I deleted the `_MyHomePageState` class.
13. I added the following variables to the `MyHomePage` class:
```
final String npm = '2306256255'; // NPM
final String name = 'Bryant Warrick Cai'; // Name
final String className = 'PBP KKI'; // Class
```
14. I created a new class/widget called `InfoCard` to display these information.
15. Between the `MyHomePage` and `InfoCard` classes, I added a new class named `ItemHomepage` with the following content:
```
class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color);
}
```
16. I added the buttons to add to the `MyHomePage` class:
```
final List<ItemHomepage> items = [
  ItemHomepage("View Product List", Icons.shopping_bag, Colors.lightBlue.shade600),
  ItemHomepage("Add Product", Icons.add, Colors.green),
  ItemHomepage("Logout", Icons.logout, Colors.purple),
];
```
17. I added a new `ItemCard` class to display the snackbar messages when each button is pressed.
18. I changed the `Widget build` section.
19. I ran `flutter run -d chrome` to ensure that the app is working properly.

---