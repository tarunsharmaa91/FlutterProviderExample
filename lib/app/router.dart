import 'package:auto_route/auto_route_annotations.dart';
import 'package:learntocount/ui/views/category/category_view.dart';
import 'package:learntocount/ui/views/home/home_view.dart';

@MaterialAutoRouter()
class $Router{

  @initial
  HomeView homeViewRoute;
  CategoryView categoryViewRoute;
}

// flutter pub run build_runner build