import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'model.dart';

class LocationService {
  static final _locationService = new LocationService();

  static LocationService get() {
    return _locationService;
  }

  final String url =
      "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=28.7041,77.1025&radius=3000&keyword=hospital&key=Your_API_KEY";

  Future<List<PlaceDetail>> getNearbyPlaces() async {
    var reponse = await http.get(url, headers: {"Accept": "application/json"});

    List data = json.decode(reponse.body)["results"];
    var places = <PlaceDetail>[];
    data.forEach((f) =>
        places.add(new PlaceDetail(f["name"], f["icon"], f["vicinity"])));

    return places;
  }
}
