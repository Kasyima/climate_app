import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location {
double? latitude;
double? longitude;

  Future<void> getCurrentLocation() async {
    try {
      LocationPermission permission;
      permission = await Geolocator.requestPermission();
      bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    
      await Geolocator.checkPermission();
      await Geolocator.requestPermission();
      

      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
      
    
    }catch (e) {
      print(e);
    }
  }
}

/*class _MapScreenState extends State<MapScreen> {
void locatePosition() async {
    bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    
    currentPosition = position;
    LatLng latLngPosition = LatLng(position.latitude, position.longitude);
        
    // Ask permission from device
    Future<void> requestPermission() async {
    await Permission.location.request();
    }
}*/
