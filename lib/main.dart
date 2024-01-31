import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('custom widget'),
      ),
      body: Container(
          child: Column(
        children: [
          CatItems(),
          Contact(),
          SubCatItems(),
          BottomMenu(),
        ],
      )),
      //() {
      //    print('clicked!!!');
      // },

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CatItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
          color: Colors.amber,
          child: ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                  )),
            ),
            itemCount: 12,
            scrollDirection: Axis.horizontal,
          )),
    );
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(
            itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                  title: Text('Name'),
                  subtitle: Text('Mob No'),
                  trailing: Icon(Icons.delete),
                )),
      ),
    );
  }
}

class SubCatItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.deepOrangeAccent,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11), color: Colors.teal),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.tealAccent,
        child: GridView.count(
          crossAxisCount: 5,
          mainAxisSpacing: 11,
          crossAxisSpacing: 11,
          children: [
            Container(
              color: Colors.purple,
            ),
            Container(
              color: Colors.purple,
            ),
            Container(
              color: Colors.purple,
            ),
            Container(
              color: Colors.purple,
            ),
            Container(
              color: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
