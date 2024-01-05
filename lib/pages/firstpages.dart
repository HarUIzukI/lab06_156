import 'package:flutter/material.dart';
import 'package:lab06_156/pages/hobby.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<Hobby> hobbies = [];
  List _selectedhobby = [];
  @override
  void initState() {
    super.initState();
    hobbies = Hobby.getHobby();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lab06"),
        backgroundColor: Color.fromARGB(255, 191, 235, 252),
      ),
      body: Column(
        children: [
          Column(
            children: createCheckbox(),
          ),
          Text(
            _selectedhobby.map((hobby) => hobby.Name).join(', '),
            style: const TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 211, 18, 18)),
          ),
          // Text(
          //   _selectedhobby as String,
          //   style: const TextStyle(
          //       fontSize: 20, color: Color.fromARGB(255, 211, 18, 18)),
          // ),
          // CheckboxListTile(
          //     value: false, title: Text("Point 1"), onChanged: (value) {}),
          // CheckboxListTile(
          //     value: false, title: Text("Point 2"), onChanged: (value) {}),
          // CheckboxListTile(
          //     value: false, title: Text("Point 3"), onChanged: (value) {}),
          // CheckboxListTile(
          //     value: false, title: Text("Point 4"), onChanged: (value) {}),
        ],
      ),
    );
  }

  List<Widget> createCheckbox() {
    List<Widget> myhoppy = [];
    for (Hobby hobby in hobbies) {
      myhoppy.add(CheckboxListTile(
        title: Text(hobby.Name),
        value: hobby.checked,
        onChanged: (value) {
          setState(() {
            hobby.checked = value!;
            // _selectedhobby.add(hobby);
            // _selectedhobby.remove(hobby);
            // print(_selectedhobby[0]);
            if (value) {
              // If the checkbox is checked, add the hobby to the _selectedhobby list
              _selectedhobby.add(hobby);
            } else {
              // If the checkbox is unchecked, remove the hobby from the _selectedhobby list
              _selectedhobby.remove(hobby);
            }

            // You can print the selected hobbies for debugging
            print(_selectedhobby.map((h) => h.Name).toList());
          });
        },
      ));
    }
    return myhoppy;
  }
}
