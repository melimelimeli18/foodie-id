import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
        title: Text(
          "Foodie.id",
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.orange[500],
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Hello world"),
              Text("Lorem Ipsum",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                  )),
              Text("Untar"),
              Image(image: AssetImage('assets/tree.jpg'))
            ],
          ),
        ),
      ),
      // bottomNavigationBar: NavigationBar(),
    );
  }
}
