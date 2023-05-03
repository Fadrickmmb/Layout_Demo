import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.red[500]),
        Icon(Icons.star, color: Colors.red[500]),
        Icon(Icons.star, color: Colors.red[500]),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.black),
      ],
    );

    const textRatings = TextStyle(
             fontWeight: FontWeight.w800,
             fontFamily: 'Roboto',
             letterSpacing: 0.5,
             fontSize: 20,
           );

    final ratings = Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        stars,
        Text("170 Reviews", style: TextStyle(
          fontWeight: FontWeight.w800,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 20,
        ),
        ),
      ]
    ),
    );

    final iconList = DefaultTextStyle(
      style: TextStyle(
        fontWeight: FontWeight.w800,
        fontFamily: 'Roboto',
        letterSpacing: 0.5,
        fontSize: 20,
      ),
    child: Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.kitchen, color: Colors.green[500],),
              Text('Prep'),
              Text('25 min')
            ],
          ),

          Column(
            children: [
            Icon(Icons.kitchen, color: Colors.green[500],),
            Text('Cook'),
            Text('1  hr')
          ],
          ),

          Column(children: [
            Icon(Icons.kitchen, color: Colors.green[500],),
            Text('Feeds'),
            Text('4-6')
          ],)
        ],
      )
    ),
    );

    final leftColumn = Container(
      child: Column(
        children: [
          Text('Strawberry Pavlova'),
          Text(' Description'),
          ratings,
          iconList,
        ],
      ),
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout Demo'),
        ),
        body:
        Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
            height: 600,
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 440,
                      child: leftColumn,
                    )
                  ],
                ),
              ),
          ),
        ),
    ),
    );


  }
}

