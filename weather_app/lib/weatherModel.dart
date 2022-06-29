// ignore_for_file: unnecessary_new, file_names, unnecessary_this

class Weather {
  var cityName;
  var condition;
  var temp;
  var wind;

  Weather(
      {required this.cityName,
      required this.condition,
      required this.temp,
      required this.wind});
  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json['location']['name'];
    condition = json['current']['condition']['text'];
    temp = json['current']['temp_c'];
    wind = json['current']['wind_kph'];
  }
}
