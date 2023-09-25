import 'package:flutter/material.dart';

SizedBox div = const SizedBox(height: 4);
SizedBox divXL = const SizedBox(height: 16);
const containerMargin = EdgeInsets.only(left: 20);
const containerTitleStyle = TextStyle(fontSize: 20);
const containerInfoStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
final containerColor = Colors.green.withOpacity(0.9);
Border containerBorderStyle = Border.all(
  color: Colors.green,
  style: BorderStyle.solid,
  width: 0.5,
);

Widget secondaryShelf(
  String capital,
  String region,
  String currency,
  String currencySymbol,
  String population,
  String area,
) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
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
                      "Capital",
                      style: containerTitleStyle,
                    ),
                  ],
                ),
                divXL,
                Row(
                  children: [
                    Text(
                      capital,
                      style: containerInfoStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        InkWell(
          child: AnimatedContainer(
            margin: containerMargin,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 10,
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
                      "Region",
                      style: containerTitleStyle,
                    )
                  ],
                ),
                divXL,
                Row(
                  children: [
                    Text(
                      region,
                      style: containerInfoStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        InkWell(
          child: AnimatedContainer(
            margin: containerMargin,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 10,
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
                      "Currency",
                      style: containerTitleStyle,
                    )
                  ],
                ),
                divXL,
                Row(
                  children: [
                    Text(
                      "$currency ($currencySymbol)",
                      style: containerInfoStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        InkWell(
          child: AnimatedContainer(
            margin: containerMargin,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 10,
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
                      "Population",
                      style: containerTitleStyle,
                    )
                  ],
                ),
                divXL,
                Row(
                  children: [
                    Text(
                      population,
                      style: containerInfoStyle,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        InkWell(
          child: AnimatedContainer(
            margin: containerMargin,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 10,
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
                      "Area",
                      style: containerTitleStyle,
                    )
                  ],
                ),
                divXL,
                Row(
                  children: [
                    Text(
                      "$area sq.km",
                      style: containerInfoStyle,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
