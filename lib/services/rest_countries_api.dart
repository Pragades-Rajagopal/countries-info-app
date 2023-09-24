import 'dart:convert';
import 'package:countries_info_app/models/countries_info.dart';
import 'package:http/http.dart' as http;

class CountriesInfoApi {
  Future<CountriesInfoModel> getCountriesInfo(String? country) async {
    try {
      var url = Uri.parse('https://restcountries.com/v3.1/name/$country');
      var response = await http.get(url);
      var body = jsonDecode(response.body);
      CountriesInfoModel info = CountriesInfoModel.fromJSON(body[0]);
      return info;
    } catch (e) {
      return CountriesInfoModel.voidData();
    }
  }
}
