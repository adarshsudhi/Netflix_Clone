import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearchTextFormField extends StatelessWidget {
  final TextEditingController Searchcontroller;
  final Function(String?) tap;
  final VoidCallback cancel;
  const SearchTextFormField(
      {super.key,
      required this.Searchcontroller,
      required this.tap,
      required this.cancel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Center(
        child: TextFormField(
          onFieldSubmitted: tap,
          key: key,
          controller: Searchcontroller,
          decoration: InputDecoration(
              hintText: "Search",
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              filled: true,
              fillColor: Colors.grey.withOpacity(0.5),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              suffixIcon:
                  IconButton(onPressed: cancel, icon: Icon(Icons.cancel))),
        ),
      ),
    );
  }
}
