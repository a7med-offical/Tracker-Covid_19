class Covid19_Model {
  String flagImage;
  String country;
  String iso3;
  int cases;
  int deaths;
  int recovered;
  int active;
  int tests;
  String continent;
  
  Covid19_Model(
      {required this.flagImage,
      required this.country,
      required this.active,
      required this.cases,
      required this.tests,
      required this.continent,
      required this.deaths,
      required this.iso3,
      required this.recovered});

  factory Covid19_Model.fromJson(json) {
    return Covid19_Model(
        active: json['active'],
        cases: json['cases'],
        tests: json['tests'],
        continent: json['continent'],
        deaths: json['deaths'],
        iso3: json['countryInfo']['iso3'],
        recovered: json['recovered'],
        flagImage: json['countryInfo']['flag'],
        country: json['country']);

 
  }
  int totalCases=0;
   
  
}
