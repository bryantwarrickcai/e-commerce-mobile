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

**Question: What is the use-case for `setState()`? Explain the variable that can be affected by `setState()`.**

Answer: The `setState` function is used with stateful widgets to update the UI in response to changes in the widget's state. `setState` is commonly used for fecthing and modifying data, updating UI in response to user interactions, and updating based on animations and timers. Examples of variables that can be affected by `setState` are properties that determine display content, boolean flags, user input values, and animation progress or counter.

---

**Question: Explain the difference between `const` and `final` keyword.**

Answer: In Dart, both `const` and `final` are both used for declaring immutable/constant variables. However, `final` can be used for values that should not be reassigned, but its value is not known at runtime. An example include declaring a variable with `final currentDateTime = DateTime.now()` to set the current date and time to the `currentDateTime` variable. (This value is only created after the code runs). `const` is a compile-time constant, meaning that the value must be determined at compile time. `const` must be deeply constant, meaning that all its nested values are also constant. Example: `const pi = 3.14159;`.

---

**Question: Explain how you implemented the checklist above step-by-step.**

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

## Answers to Questions for Assignment 8

---

**Question: What is the purpose of `const` in Flutter? Explain the advantages of using `const` in Flutter code. When should we use `const`, and when should it not be used?**

Answer: `const` is used to create compile-time constant values or widgets, meaning that the value is determined at the time the application is compiled rather than at runtime. When using `const`, we can improve performance and memory usage by reusing the same instance of constant value every time it is used in the app. Since `const` is immutable, it also ensures that the value of widget cannot be modified after its creation, improving the reliability and predictability of the app's behavior, therefore reducing the amount of bugs.

`const` should be used when we know that a value will never change, building widgets that never changes and can be defined at compile-time, and when there's a need to reuse the widget several times in the project. `const` should not be used for dynamic variables and mutable widgets (widgets that are likely to have their properties change over time.)

---

**Question: Explain and compare the usage of Column and Row in Flutter. Provide example implementations of each layout widget!**

Answer: In Flutter, `Column` and `Row` are commonly used to arrange its child widgets vertically and horizontally, respectively. `Column` is commonly used when there is a content that needs to be stacked vertically (such as a list of items, a drawer column, or an input form). `Row` is commonly used when there is content that needs to be placed side-by-side (such as buttons in the top navigation bar).

List of implementations for `Column`:
* Forms and inputs
* List of items
* Vertical scrolling layouts
* Stacked widgets

List of implementations for `Row`:
* Horizontal widgets
* Navigation buttons
* Displaying icons with labels side-by-side

---

**Question: List the input elements you used on the form page in this assignment. Are there other Flutter input elements you didn't use in this assignment? Explain!**

Answer: On this assignment, I only used `TextFormField` as the input element. This can be used for text inputs, with added ability of validation. Other input elements include:
* `Checkbox` - Used to select one or more options from a set.
* `Radio` - Used to select only one option from a group of options.
* `DropdownButton` - Similar to `Radio`, for selecting an option from a list.
* `Switch` - For toggling between two states (on/off).
* `Slider` - To select a value from a range of values. Commonly used for adjusting volume, brightness, and other range-based values.

---

**Question: How do you set the theme within a Flutter application to ensure consistency? Did you implement a theme in your application?**

Answer: In Flutter applications, the theme can be set in the `ThemeData` class, and applying it using the `Theme` widget at the app's root. The theme can hold configurations such as colors, text styles, and button themes.

I did implement a theme in my application in the `main.dart` file. This theme sets the application's primary color to deep purple and the secondary color to a lighter shade of deep purple. I also used Material Design 3 styling, which includes updated colors, shapes, and components.

---

**Question: How do you manage navigation in a multi-page Flutter application?**

Answer: In Flutter, navigation can be used using the `Navigator` widget. The `Navigator` widget arranges the pages like a stack. To navigate to a new page, we can call `Navigator.push`, which pushes a new page into the screen. To return to the previous page, we can use `Navigator.pop`.

---

## Answers to Questions for Assignment 9

---

**Question: Explain why we need to create a model to retrieve or send JSON data. Will an error occur if we don't create a model first?**

Answer: While creating a model in Flutter is not strictly required, it is still highly recommended. A model provides clear definitions for the fields and their types. Since Dart is a strongly typed language, this can help in type safety and type checking, and ensures consistency with the data. Models also help improve code readability and maintainability, as it makes it easier to understand the data that is being transmitted.

Without a model, an error won't occur directly. You'd deal with the JSON data as `Map<String, dynamic>`. However, this increases the risk of runtime errors, such as trying to access non-existent fields or incorrect data types. Debugging these issues can be challenging due to no clear model defining the structure of the data.

---

**Question: Explain the function of the http library that you implemented for this task.**

Answer: In Flutter, the `http` package is used for making HTTP requests to interact with APIs. The package provides methods for making requests such as GET, POST, PUT, DELETE, and many more. In this assignment, I used it to integrate Django's login/register account functions and the JSON data for the products.

---

**Question: Explain the function of `CookieRequest` and why it's necessary to share the `CookieRequest` instance with all components in the Flutter app.**

Answer: In Flutter, `CookieRequest` is used to manage HTTP cookies in a Flutter app. It is typically used to maintain user authentication or session data. By sharing the `CookieRequest` instance across all components, the app ensures that every part has access to the same session cookies. This centralized approach improves security and enhances reliability.

---

**Question: Explain the mechanism of data transmission, from input to display in Flutter.**

Answer: In Flutter, the process of data transmission can be broken down into a series of steps: user input, state management, data processing, and UI updates.

In the user input stage, the user inputs their data using several user interfaces provided by Flutter, such as `TextFormField`, `Slider`, `Checkbox`, `Radio`, and many others. In the state management stage, when the user inputs data, the state of the widget holding that input must also be updated. The state is updated using the `setState()` method.

In the next stage, data processing, the application may perform additional actions on the data, such as validation or formatting. The final stage, UI updates, updates the data shown in the user interface using `setState()`. Flutter uses an efficient mechanism that only rebuilds parts of the widget tree that needs updating.

---

**Question: Explain the authentication mechanism from login, register, to logout. Start from inputting account data in Flutter to Django's completion of the authentication process and display of the menu in Flutter.**

Answer: For the registration process, the user provides their username, password, and other information in the Flutter application. Then, Flutter sends a POST request to Django for this data. In the Django application, it validates the data and creates the user. Django will respond with either a success or error, which is sent to Flutter and provides feedback to the user.

For the login process, the user provides their credentials in the Flutter application. This is then sent to Django and validated using Django's built-in authentication system. If it's valid, Django will return a session ID to Flutter, which stores the token for subsequent authenticated API requests. After successful login, Flutter brings the user to the homepage.

For the logout process, Flutter sends a request to Django to invalidate the session or token. After receiving a confirmation, Flutter clears the token and redirects the user back to the login screen.

---

**Question: Explain how you implement the checklist above step by step! (not just following the tutorial).**

Answer:

1. First I created a new Django app inside the `ecommerce` Django project titled `authentication`. I did it by running:
```
python manage.py startapp authentication
```
2. I added the newly created `authentication` app into the `INSTALLED_APPS` list in the `settings.py` file of the Django project.
3. I added `django-cors-headers` to the `requirements.txt` file, and then run `pip install -r requirements.txt`.
4. I added `corsheaders` to the `INSTALLED_APPS` list of `settings.py`.
5. I added `corsheaders.middleware.CorsMiddleware` into the `MIDDLEWARE` list of `settings.py`.
6. I added the following variables to `settings.py`:
```
CORS_ALLOW_ALL_ORIGINS = True
CORS_ALLOW_CREDENTIALS = True
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SECURE = True
CSRF_COOKIE_SAMESITE = 'None'
SESSION_COOKIE_SAMESITE = 'None'
```
7. On the `ALLOWED_HOSTS` list of the `settings.py` file, I added `10.0.2.2`.
8. I added a new `login` view inside the `views.py` file of the `authentication` directory.
9. I created a new file named `urls.py` inside the `authentication` directory.
10. I added a new URL pattern inside the `urls.py` file: `path('login/', login, name='login')`.
11. Inside the `urls.py` file of the `e_commerce` project directory, I added the `authentication` URLs by using `path('auth/', include('authentication.urls'))`.
12. Inside the Flutter project, I installed the `provider` and `pbp_django_auth` packages by running
```
flutter pub add provider
flutter pub add pbp_django_auth
```
13. Inside the `main.dart` file, I modified the root widget to return `Provider`, with the original `MaterialApp` being a child of `Provider`.
14. Inside the `screens` directory, I created a new file named `login.dart` and filled it with some code.
15. In the `main.dart` file, I changed the `home` of the `MaterialApp` widget from `MyHomePage` to `LoginPage`.
16. In the Django project, I added a new `register` method inside the `authentication/views.py` page.
17. In `authentication/urls.py`, I added another path for `register`.
18. In the `screens` folder of the Flutter project, I created a file named `register.dart`.
19. I created a new directory inside the `lib` directory named `models`, and inside the `models` directory, I created a new file named `product.dart`.
20. I used QuickType to generate a new model from the JSON data in the Django project. I copied this model to `product.dart`.
21. I added the `http` package to my Flutter project by running `flutter pub add http`.
22. Inside `android/app/src/main/AndroidManifest.xml`, I added a new line to allow the Flutter app to access the internet.
23. Inside the `lib/screens` directory, I created a new file named `list_product.dart` and filled it with some code.
24. I added the page `list_product.dart` as one of the list tiles into `widgets/left_drawer.dart`.
25. On the `menu.dart` page, I made it so that pressing the `View Product List` button on the main page will redirect to `ProductPage`.
26. Inside the `main/views.py` function in the Django project, I added a `create_product_flutter` method.
27. I added a new path inside the `main/urls.py` file for the `create_product_flutter` method I just created.
28. Inside the `product_form.dart`, right after the `Widget build(BuildContext context) {` line, I added the following code:
```
final request = context.watch<CookieRequest>();
```
29. I changed the code for `onPressed` for the button to add a new product.
30. Inside the `authentication/views.py` of the Django project, I added a new view method titled `logout`.
31. I added this `logout` view into `authentication/urls.py`.
32. In the Flutter project, inside the `lib/widgets/product_card.dart` file, after the `Widget build(BuildContext context) {` line, I added the following line:
```
final request = context.watch<CookieRequest>();
```
33. Inside the `product_card.dart` file, I made the `onTap` to use `async`.
34. I made the Logout button logs you out.
35. In the `list_product.dart` file, I made each item a button using `InkWell` so that it opens a page to view each item's details.
36. I created a new file named `item_details_page.dart`.
37. In that file, I created a new class called `ItemDetailPage` to display the details for each item.

---
