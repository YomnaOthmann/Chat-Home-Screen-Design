import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        labelText: "Search",
        labelStyle: const TextStyle(color: Colors.grey, fontSize: 24),
        prefixIcon: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Icon(
            Icons.search,
            color: Colors.grey,
            size: 30,
          ),
        ),
        fillColor: const Color(0xff232323),
        filled: true,
      ),
    );
  }
}
