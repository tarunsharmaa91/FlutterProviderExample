import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'category_view_model.dart';

class CategoryView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CategoryViewModel>.reactive(builder: (context, model, child) => Scaffold(
      body: Center(
        child: Text(''),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => model.navigateToHome(),),
    ), viewModelBuilder: () => CategoryViewModel(),
    );
  }

}