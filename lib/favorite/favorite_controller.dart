import 'package:get/get.dart';

class FavoriteController extends GetxController {
  RxList<String> sports = [
    'Cricket',
    'Football',
    'Badminton',
    'Hockey',
    'Basketball',
    'Volleyball',
    'Golf',
    'Tennis',
    'Squash',
    'Baseball'
  ].obs;

  // RxList<dynamic> selectedSports = [].obs;
  RxList selectedSports = [].obs;

  addToFavorites(String sport) => selectedSports.add(sport);

  removeFromFavorites(String sport) => selectedSports.remove(sport);
}
