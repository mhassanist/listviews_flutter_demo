import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> coursesImages = [
    "https://www.annalindhfoundation.org/sites/default/files/styles/main_image_desktop/public/2019-10/unnamed_1.jpg",
    "",
    ""
  ];
  List<String> coursesNames = ["Course 1", "Course 2", "Course 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: coursesNames.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.network(coursesImages[index]),
              Text(coursesNames[index])
            ],
          );
        },
      ),

      /*body: ListView(
        //scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.red,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.green,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.yellow,
          ),
        ],
      ),*/
      /*body: ListView(
        //scrollDirection: Axis.horizontal,
        children: [
          Text("Item 1"),
          Text("Item 2"),
          //Container(width: 50,height: 50, color: Colors.red,),
          Text("Item 3"),


        ],
      ),*/
      /*body: ListView.builder(
        itemCount: coursesNames.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.network(coursesImages[index]),
              Text(coursesNames[index])
            ],
          );
        },
      ),
      */
    );
  }

  _buildListItems() {
    List<Widget> items = List();

    Widget item1 = Container(color: Colors.green, height: 180, width: 150);

    Widget item3 = Container(
      color: Colors.red,
      height: 180,
      width: 150,
    );

    items.add(item1);
    items.add(item3);

    return items;
  }
}
