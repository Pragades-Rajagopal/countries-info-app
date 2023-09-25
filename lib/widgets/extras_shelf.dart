import 'package:flutter/material.dart';

SizedBox div = const SizedBox(height: 4);
SizedBox divXL = const SizedBox(height: 16);
const containerMargin = EdgeInsets.only(left: 20);
const containerTitleStyle = TextStyle(fontSize: 20);
const containerInfoStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
final containerColor = Colors.yellow.withOpacity(0.9);
Border containerBorderStyle = Border.all(
  color: Colors.yellow,
  style: BorderStyle.solid,
  width: 0.5,
);

Widget extraShelf(
  List<String>? languages,
) {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          child: AnimatedContainer(
            margin: containerMargin,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 14,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: containerColor,
              border: containerBorderStyle,
            ),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      "Languages",
                      style: containerTitleStyle,
                    ),
                  ],
                ),
                divXL,
                ListView(
                  shrinkWrap: true,
                  children: languages!.map((language) {
                    return Text(
                      language,
                      style: containerInfoStyle,
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
