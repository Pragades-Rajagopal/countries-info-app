class CountriesInfoModel {
  String? commonName;
  String? officialName;
  String? countryCode;
  String? flagUrl;
  String? coatOfArms;
  String? capital;
  String? region;
  String? currency;
  String? currencySymbol;
  int? population;

  CountriesInfoModel({
    this.commonName,
    this.officialName,
    this.countryCode,
    this.flagUrl,
    this.coatOfArms,
    this.capital,
    this.region,
    this.currency,
    this.currencySymbol,
    this.population,
  });

  CountriesInfoModel.fromJSON(Map<String, dynamic> json) {
    commonName = json["name"]["common"];
    officialName = json["name"]["official"];
    countryCode = json["cca2"];
    flagUrl = json["flags"]["png"];
    coatOfArms = json["coatOfArms"]["png"];
    capital = json["capital"][0];
    region = json["region"];
    currency = getCurrency(json["currencies"], 'name');
    currencySymbol = getCurrency(json["currencies"], 'symbol');
    population = json["population"];
  }

  CountriesInfoModel.voidData() {
    commonName = '';
    officialName = '';
    countryCode = '';
    flagUrl = '';
    coatOfArms = '';
    capital = '';
    region = '';
    currency = '';
    currencySymbol = '';
  }

  String getCurrency(Map<String, dynamic> data, String opts) {
    List<String> values = [];
    data.forEach((key, value) {
      values.add(value[opts]);
    });
    return values[0];
  }
}
