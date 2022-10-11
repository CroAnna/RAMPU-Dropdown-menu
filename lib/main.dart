import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.red),
        home: const RootPage());
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dropdown menu',
        ),
      ),
      body: const Center(
        child: DropDown(),
      ),
    );
  }
}

class DropDown extends StatefulWidget {
  const DropDown({super.key});
  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownValue = "Home";
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down),
        items: const [
          DropdownMenuItem(
            value: "Home",
            child: Text("Home"),
          ),
          DropdownMenuItem(
            value: "User",
            child: Text("User"),
          ),
          DropdownMenuItem(
            value: "Buy",
            child: Text("Buy"),
          ),
          DropdownMenuItem(
            value: "Settings",
            child: Text("Settings"),
          ),
        ],
        onChanged: (String? value) {
          setState(() {
            dropdownValue = value!;
          });
        });
  }
}
