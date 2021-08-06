import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter task 4.1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
        MyHomePage(title: 'Responsive layout'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text('Column 1',
                    style: TextStyle(color: Colors.white, fontSize: 20,),
                  ),
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.purple,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text('Column 2 Row 1 ',
                    style: TextStyle(color: Colors.white, fontSize: 20,),
                  ),
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 2,
                  color: Colors.green,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text('Column 2 Row 2 ',
                    style: TextStyle(color: Colors.white, fontSize: 20,),
                  ),
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 2,
                  color: Colors.orange,
                ),
                  ],
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text('Column 3 Row 1 ',
                    style: TextStyle(color: Colors.white, fontSize: 20,),
                  ),
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 2,
                  color: Colors.red,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text('Column 3 Row 2 ',
                    style: TextStyle(color: Colors.white, fontSize: 20,),
                  ),
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 2,
                  color: Colors.blue,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text('Column 1',
                    style: TextStyle(color: Colors.white, fontSize: 20,),
                  ),
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.yellow,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
