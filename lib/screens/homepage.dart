import 'package:countries_info_app/widgets/primary_shelf.dart';
import 'package:countries_info_app/widgets/secondary_shelf.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('countries info'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.amber,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [appSearch(), appInfoBody()],
        ),
      ),
    );
  }
}

Widget appSearch() {
  return Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 5,
    ),
    child: Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Search country',
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget appInfoBody() {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        primaryShelf(
          'India',
          'Republic of India',
          'IN',
          'New Delhi',
          'https://flagcdn.com/w320/in.png',
          'https://mainfacts.com/media/images/coats_of_arms/in.png',
        ),
        const SizedBox(
          height: 20,
        ),
        secondaryShelf(
          'New Delhi',
          'Asia',
          'Indian Rupee',
          '₹',
          '1380004385',
        ),
      ],
    ),
  );
}
