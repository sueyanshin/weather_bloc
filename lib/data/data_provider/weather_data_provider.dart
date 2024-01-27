import 'package:http/http.dart' as http;
import 'package:weather_bloc/secrets.dart';

class WeatherDataProvider {
  // CRUD
  // only need to fetch from api : Read

  Future<String> getCurrentWeather(String cityName) async {
    try {
      final res = await http.get(
        Uri.parse(
          'https://api.openweathermap.org/data/2.5/forecast?q=$cityName&APPID=$openWeatherAPIKey',
        ),
      );

      return res.body;
    } catch (e) {
      throw e.toString();
    }
  }
}
