
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOulineInputBorder(),
        focusedBorder: buildOulineInputBorder(),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(opacity: 0.8, child: Icon(Icons.search)),
          iconSize: 22,
        ),
      ),
    );
  }

  OutlineInputBorder buildOulineInputBorder() {
    return OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(12));
  }
}
