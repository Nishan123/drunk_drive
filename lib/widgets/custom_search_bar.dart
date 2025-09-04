import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController searchController;
  final String hintText;
  final Color? fillColor;
  const CustomSearchBar({
    super.key,
    required this.searchController,
    required this.hintText,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      
      child: TextFormField(
        controller: searchController,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(FeatherIcons.search),
          fillColor: fillColor ?? Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(width: 1, color: Colors.black38),
          ),
        ),
      ),
    );
  }
}
