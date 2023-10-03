import 'package:countries_info_app/models/countries_info.dart';
import 'package:countries_info_app/services/rest_countries_api.dart';
import 'package:countries_info_app/widgets/extras_shelf.dart';
import 'package:countries_info_app/widgets/primary_shelf.dart';
import 'package:countries_info_app/widgets/secondary_shelf.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final textController = TextEditingController();
  var searchCountry = 'india';
  CountriesInfoApi client = CountriesInfoApi();
  CountriesInfoModel getModelFunctions = CountriesInfoModel();
  CountriesInfoModel? data;
  List borders = [];

  Future<void> getCountryData(String country) async {
    data = await client.getCountriesInfo(country);
    await getBorderCountries(data!.borders);
  }

  Future<void> getBorderCountries(List? codes) async {
    if (codes == null) {
      borders = [];
    }
    borders = await client.getCountryNamesApi(codes!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: countryAppBar(),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          appSearch(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  infoFutureBuilder(searchCountry),
                ],
              ),
            ),
          ),
        ],
      ),
    );
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
              child: TextField(
                controller: textController,
                cursorColor: Colors.white,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10.0),
                  hintText: 'Search country',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      width: 0.0,
                      color: Colors.black,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.white10,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white12,
                  suffixIcon: IconButton(
                    onPressed: () {
                      if (textController.text != '') {
                        setState(() {
                          searchCountry = textController.text;
                        });
                        textController.text = '';
                      }
                    },
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  prefixIcon: IconButton(
                    onPressed: () {
                      textController.text = '';
                    },
                    icon: const Icon(
                      Icons.clear,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  FutureBuilder<void> infoFutureBuilder(String country) {
    return FutureBuilder(
      future: getCountryData(country),
      builder: (context, snapshot) {
        try {
          if (snapshot.connectionState == ConnectionState.done) {
            if (data?.commonName == '') {
              return const Center(
                child: Text(
                  'Country info does not exists! \n Please search for another country',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            }
            return appInfoBody(data);
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return const Center(
            child: Text(
              'Something went wrong',
              style: TextStyle(color: Colors.white),
            ),
          );
        } catch (e) {
          return const Center(
            child: Text(
              'Something went wrong',
              style: TextStyle(color: Colors.white),
            ),
          );
        }
      },
    );
  }

  Widget appInfoBody(data) {
    // getBorderCountries(data.borders);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          primaryShelf(
            "${data!.commonName}",
            "${data!.officialName}",
            "${data!.countryCode}",
            "${data!.flagUrl}",
            "${data!.coatOfArms}",
          ),
          const SizedBox(
            height: 20,
          ),
          secondaryShelf(
            "${data!.capital}",
            "${data!.region}",
            "${data!.currency}",
            "${data!.currencySymbol}",
            "${data!.population}",
            "${data!.area}",
          ),
          const SizedBox(
            height: 20,
          ),
          extraShelf(
            data.languages,
            borders,
            "${data!.timezones}",
            "${data!.tld}",
            "${data!.latitude}",
            "${data!.longitude}",
          ),
        ],
      ),
    );
  }

  AppBar countryAppBar() {
    return AppBar(
      title: const Text('countries info'),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.amber,
      elevation: 0.0,
      centerTitle: true,
    );
  }
}
