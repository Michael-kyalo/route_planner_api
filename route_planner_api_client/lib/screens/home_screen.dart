import 'package:flutter/material.dart';
import 'package:route_planner_api_client/constants/app_colors.dart';
import 'package:route_planner_api_client/protos/trip.pb.dart';
import 'package:route_planner_api_client/screens/profile_screen.dart';
import 'package:route_planner_api_client/screens/trips_screen.dart';

import 'discover_screen.dart';
class HomeScreen extends StatefulWidget {
  final List<Trip> allTrips;
  const HomeScreen({Key? key, required this.allTrips}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: index == 0 ? const DiscoverScreen(): index == 1 ? const TripScreen() : const ProfileScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (indx){
          setState(() {
            index = indx;
          });
        },
        selectedItemColor: colorBlue,
        unselectedItemColor: Colors.black26,
        selectedLabelStyle: const TextStyle(
          color: colorOrange,
          fontWeight: FontWeight.bold
        ),
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
              icon:Icon(Icons.map, ),
              label: "..",
             ),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit,),
              label: ".."),
          BottomNavigationBarItem(
              icon:Icon(Icons.home,),
            label: ".."
          ),
        ],
      ),
    );
  }
}
