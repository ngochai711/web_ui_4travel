import 'package:flutter/material.dart';

const List<String> list = <String>['','1','2','3','4'];

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.isFill,
  }) : super(key: key);

  final String text;
  final bool isFill;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 435,
      height: 50,
      child: ElevatedButton(
          style: ButtonStyle(
              // padding: MaterialStateProperty.all(
              //     const EdgeInsets.symmetric(horizontal: 128, vertical: 16)),
              backgroundColor: MaterialStateProperty.all(
                  !isFill ? Colors.white : const Color.fromARGB(255, 247, 110, 17)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(
                          color: !isFill
                              ? Colors.black
                              : const Color.fromARGB(255, 247, 110, 17))))),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
                color: !isFill ? Colors.black : Colors.white, fontSize: 18),
          )),
    );
  }
}



class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
      return DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.keyboard_arrow_down),
        elevation: 16,
        style: const TextStyle(color: Colors.black),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      );
  }
}
