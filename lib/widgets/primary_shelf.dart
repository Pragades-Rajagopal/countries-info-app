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
  String capital,
  String region,
  String flagUrl,
  String coatOfArms,
) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        divXL,
        Center(
          child: SizedBox(
            width: 120,
            height: 120,
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
        div,
        Center(
          child: Text(
            region,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        divXL,
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
    ),
  );
}
