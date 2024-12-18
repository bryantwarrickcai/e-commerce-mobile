import 'package:flutter/material.dart';
import 'package:ecommerce/screens/menu.dart';
import 'package:ecommerce/screens/product_form.dart';
import 'package:ecommerce/screens/list_product.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'BryShop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text("Add and view products here!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    )),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            // Redirection part to MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Add Item'),
            // Redirection part to MoodEntryFormPage
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductFormPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: const Text('Product List'),
            onTap: () {
              // Route to the mood page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
