import 'package:learntocount/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:learntocount/app/router.gr.dart';


class  CategoryViewModel extends BaseViewModel{

  final NavigationService _navigationService = locator<NavigationService>();

  Future navigateToHome() async{
    await _navigationService.navigateTo(Routes.homeViewRoute);
  }

}
