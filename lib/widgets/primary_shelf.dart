import 'package:flutter/material.dart';

SizedBox div = const SizedBox(height: 4);
SizedBox divXL = const SizedBox(height: 10);

Image getImages(String url) {
  return Image.network(url);
}

Widget primaryShelf(
  String commonName,
  String officialName,
  String countryCode,
  String flagUrl,
  String coatOfArms,
) {
  return InkWell(
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
        color: Colors.blue.withOpacity(0.9),
        border: Border.all(
          color: Colors.blue,
          style: BorderStyle.solid,
          width: 0.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // divXL,
          Center(
            child: SizedBox(
              width: 120,
              height: 100,
              child: getImages(flagUrl),
            ),
          ),
          Center(
            child: Text(
              "$commonName, $countryCode",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          div,
          Center(
            child: Text(
              officialName,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          divXL,
          if (coatOfArms != "null") ...[
            Center(
              child: Container(
                width: 120,
                height: 120,
                color: Colors.white,
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: getImages(coatOfArms),
                ),
              ),
            ),
          ],
        ],
      ),
    ),
  );
}
