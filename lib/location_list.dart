import 'package:first_app/location_detail.dart';
import "package:flutter/material.dart";
import "./models/location.dart";
import "./styles.dart";

class LocationList extends StatelessWidget {
  final List<Location> locations;

  LocationList(this.locations);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(
          "Locations",
          style: Styles.navBarTitle,
        ),
      ),
      body: ListView.builder(
        itemCount: this.locations.length,
        itemBuilder: _listViewItemBuilder,
      ));

  Widget _listViewItemBuilder(BuildContext context, int index) {
    var location = this.locations[index];
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      leading: _itemThumbnail(location),
      title: _itemTitle(location),
      onTap: () {
        _navigateToLocationDetail(context, location);
      },
    );
  }

  void _navigateToLocationDetail(BuildContext context, Location location) {
    print("↗ ${location.name}");
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => LocationDetail(location)));
  }

  Widget _itemThumbnail(Location location) => Container(
      constraints: BoxConstraints.tightFor(width: 100.0),
      child: Image.network(
        location.url,
        fit: BoxFit.fitWidth,
      ));

  Widget _itemTitle(Location location) => Text(
        "${location.name}",
        style: Styles.textDefault,
      );
}
