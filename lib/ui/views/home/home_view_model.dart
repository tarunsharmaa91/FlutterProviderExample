import 'package:learntocount/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:learntocount/app/router.gr.dart';


class HomeViewModel extends BaseViewModel{

  //This is a variable
  String _title = 'This is my title';
  //This is a  getter property which will return private title value
  String get title => '$_title $_counter';

  int _counter = 0;
  int get counter => _counter;

  void updateCounter()
  {
    _counter++;
    notifyListeners();
  }

  final NavigationService _navigationService = locator<NavigationService>();

  Future navigateToCategory() async{
    await _navigationService.navigateTo(Routes.categoryViewRoute);
  }

}
