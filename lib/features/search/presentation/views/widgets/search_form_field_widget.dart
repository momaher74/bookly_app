import 'package:flutter/material.dart';

class SearchFormFieldWidget extends StatelessWidget {
  const SearchFormFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 15,
      ),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: TextFormField(
          style: const TextStyle(color: Colors.white, fontSize: 12),
          cursorColor: Colors.white,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            suffixIcon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            labelText: 'search',
            labelStyle: const TextStyle(
              color: Colors.white,
            ),
            hintText: 'search a book',
            hintStyle: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
