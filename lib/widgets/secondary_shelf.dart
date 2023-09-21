import 'package:flutter/material.dart';

SizedBox div = const SizedBox(height: 4);
SizedBox divXL = const SizedBox(height: 10);

Widget secondaryShelf(
  List<String> languages,
) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        divXL,
        // Center(
        //   child: Card(
        //     // height: 100,
        //     // width: 100,
        //     child: ListView.builder(
        //       itemCount: languages.length,
        //       itemBuilder: (context, index) {
        //         return Text(languages[index]);
        //       },
        //     ),
        //   ),
        // ),
      ],
    ),
  );
}
