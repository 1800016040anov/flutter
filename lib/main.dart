import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ImageCache? get imageCache => PaintingBinding.instance!.imageCache;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ''
          'List View Builder',
      home : Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'List View BUilder',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: _PageList(),

      )
    );
  }
}

class _PageList extends StatefulWidget{
  @override
  _PageListState createState() => _PageListState();
}

class _PageListState extends State<_PageList>{

  List languages = [
    "Dart",
    "Kotlin",
    "Java",
    "PHP",
    "Swift",
    "Javascript",
  ];

  @override
  Widget build(BuildContext context){
    return Container (
      color: Colors.grey[300],
      child :ListView.builder(itemBuilder: (BuildContext context, int index){
          final number = index + 1;
          final language = languages[index].toString();
           return Card(
            child: Row(
              children: [
                Image.asset('images/_$number.svg',width:10),
                Text(language),
                Icon(Icons.check),
            ]
          ),
          );
        },
        itemCount: languages.length,
      )
    );

  }

}
