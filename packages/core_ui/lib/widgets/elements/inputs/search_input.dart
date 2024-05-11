import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {

  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.zero),
              borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.zero),
              borderSide: BorderSide(color: Colors.blueAccent)
          ),
          suffixIcon: Align(
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ),
      ),
    );
  }

}