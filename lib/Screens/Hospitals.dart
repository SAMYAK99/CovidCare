import 'package:covidcare/Hospital/model.dart';
import 'package:covidcare/Hospital/services.dart';
import 'package:flutter/material.dart';

class PlacesPage extends StatefulWidget {
  @override
  State createState() => new Placestate();
}

class Placestate extends State<PlacesPage> {
  int bed = 1;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Nearby places"),
        backgroundColor: Colors.green,
      ),
      body: _createContent(),
    );
  }

  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _createContent() {
    if (_places == null) {
      return new Center(
        child: new CircularProgressIndicator(),
      );
    } else {
      return new ListView(
        children: _places.map((f) {
          return new Card(
            child: new ListTile(
                title: new Text(
                  f.name,
                  style: _biggerFont,
                ),
                leading: Image.network(f.icon),
                subtitle: Text(f.vicinity),
                trailing: Text(
                  'Beds \n 220',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onTap: () {}),
          );
        }).toList(),
      );
    }
  }

  List<PlaceDetail> _places;

  @override
  void initState() {
    super.initState();
    if (_places == null) {
      LocationService.get().getNearbyPlaces().then((data) {
        this.setState(() {
          _places = data;
        });
      });
    }
  }
}
