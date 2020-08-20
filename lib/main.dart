import 'package:flutter/material.dart';
import 'package:great_places/screens/add_place_screen.dart';
import 'package:provider/provider.dart';
import 'package:great_places/providers/great_places.dart';
import 'package:great_places/screens/places_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color(0xff2B5740),
          accentColor: Color(0xffFE7762),
          canvasColor: Color(0xffF2F8F5),
          primaryTextTheme: TextTheme(
            headline6: TextStyle(
              color: Color(0xffF2F8F5),
            ),
          ),
          primaryIconTheme: IconThemeData(
            color: Color(0xffF2F8F5),
          ),
          textTheme: TextTheme(
            bodyText2: TextStyle(
              color: Color(0xff0E1B14),
            ),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
        },
      ),
    );
  }
}
