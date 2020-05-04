import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learntocount/counter.dart';
import 'package:learntocount/flavor.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);*/
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.red,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarColor: Colors.deepOrange));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<Counter>(
          create: (context) => Counter(),
          child: MyHomePage(title: 'Flutter Demo Home Page')
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var title='Home';
  MyHomePage({Key key, this.title}) : super(key: key);
  bool selected = false;

  @override
  Widget build(BuildContext context) {

    final value = Provider.of<Flavor>(context);
    //final counter = Provider.of<Counter>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(value.toString()),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              width: selected ? 200.0 : 100.0,
              height: selected ? 100.0 : 200.0,
              color: selected ? Colors.red : Colors.blue,
              alignment:
              selected ? Alignment.center : AlignmentDirectional.topCenter,
              duration: Duration(seconds: 2),
              curve: Curves.elasticIn,
              child: FlutterLogo(size: 75),
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Consumer<Counter>(
              builder: (context, counter, child) => Text(
                '${counter.count}',
                style: Theme.of(context).textTheme.display2,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Consumer<Counter>(
        builder: (_, count, __) => FloatingActionButton(
          onPressed: count.increment,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
