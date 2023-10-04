import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

SizedBox div = const SizedBox(height: 4);
SizedBox divXL = const SizedBox(height: 16);
const containerMargin = EdgeInsets.symmetric(horizontal: 20);
const containerTitleStyle = TextStyle(fontSize: 20);
const containerInfoStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
Border containerBorder(color) {
  return Border.all(
    color: color,
    style: BorderStyle.solid,
    width: 0.5,
  );
}

Widget extraShelf(
  List<String>? languages,
  List<dynamic> borders,
  String? timezones,
  String? tld,
  String? lat,
  String? lng,
  String? maps,
) {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          child: AnimatedContainer(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.yellow.withOpacity(0.9),
              border: containerBorder(Colors.yellow),
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
                  physics: const NeverScrollableScrollPhysics(),
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
        divXL,
        if (borders.isNotEmpty) ...[
          InkWell(
            child: AnimatedContainer(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn,
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.orange.withOpacity(0.9),
                border: containerBorder(Colors.orange),
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Borders",
                        style: containerTitleStyle,
                      ),
                    ],
                  ),
                  divXL,
                  ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: borders.map((border) {
                      return Text(
                        border,
                        style: containerInfoStyle,
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ],
        divXL,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 165,
              height: 110,
              margin: const EdgeInsets.only(
                left: 20,
                right: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.pink.withOpacity(0.9),
                border: containerBorder(Colors.pink),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Timezone",
                        style: containerTitleStyle,
                      )
                    ],
                  ),
                  divXL,
                  Row(
                    children: [
                      Text(
                        '$timezones',
                        style: containerInfoStyle,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 165,
              height: 110,
              margin: const EdgeInsets.only(
                right: 20,
                left: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.lightBlue.withOpacity(0.9),
                border: containerBorder(Colors.lightBlue),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "TLD",
                        style: containerTitleStyle,
                      )
                    ],
                  ),
                  divXL,
                  Row(
                    children: [
                      Text(
                        "$tld",
                        style: containerInfoStyle,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        divXL,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 165,
              height: 110,
              margin: const EdgeInsets.only(
                left: 20,
                right: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.amber[200],
                border: containerBorder(Colors.amber),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Latitude",
                        style: containerTitleStyle,
                      )
                    ],
                  ),
                  divXL,
                  Row(
                    children: [
                      Text(
                        '$lat',
                        style: containerInfoStyle,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 165,
              height: 110,
              margin: const EdgeInsets.only(
                right: 20,
                left: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.lime,
                border: containerBorder(Colors.lime),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Longitude",
                        style: containerTitleStyle,
                      )
                    ],
                  ),
                  divXL,
                  Row(
                    children: [
                      Text(
                        "$lng",
                        style: containerInfoStyle,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        divXL,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 165,
              height: 110,
              margin: const EdgeInsets.only(
                left: 20,
                right: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.brown[200],
                border: containerBorder(Colors.brown),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Maps",
                        style: containerTitleStyle,
                      )
                    ],
                  ),
                  divXL,
                  Row(
                    children: [
                      InkWell(
                        onTap: () => launchUrl(
                          Uri.parse("$maps"),
                        ),
                        child: const Icon(
                          Icons.map_outlined,
                          color: Color.fromRGBO(30, 136, 229, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
