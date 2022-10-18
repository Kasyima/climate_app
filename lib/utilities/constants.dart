import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 70.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 70.0,
);

const kTextFieldInputDecoration = InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: Icon(Icons.location_city_rounded, color: Colors.white,),
                    hintText: 'Enter City Name',
                    hintStyle:TextStyle(color: Color.fromARGB(96, 36, 20, 20)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0),),borderSide: BorderSide.none,),
                    
                  );

const kapiKey = '3e41057cff467814c9d1f5ef1bf7a0de';
