import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learntocount/app/locator.dart';
import 'package:learntocount/flavor.dart';
import 'package:provider/provider.dart';
import 'my_app.dart';

/*void main() => runApp(Provider<Flavor>.value(
    value: Flavor.production,
    child: MyApp()));*/

void main()
{
  setupLocator();
  runApp(MyApp());
}

