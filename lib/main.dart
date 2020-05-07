import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'application_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppicationColor>(
      create: (context) => AppicationColor(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<AppicationColor>(
              builder: (context, applicationColor, child) => Text(
                "Provider State Management",
                style: TextStyle(
                  color: applicationColor.color,
                ),
              )
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Consumer<AppicationColor>(
                  builder: (context, applicationColor, child) => AnimatedContainer(
                    margin: EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    color: applicationColor.color,
                    duration: Duration(milliseconds: 500),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(margin: EdgeInsets.all(5), child: Text("AB")),
                    Consumer<AppicationColor>(
                      builder: (context, applicationColor, child) => Switch(
                        value: applicationColor.isLightBlue,
                        onChanged: (newValue) {
                          applicationColor.isLightBlue = newValue;
                        }
                      )
                    ),
                    Container(margin: EdgeInsets.all(5), child: Text("LB"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
