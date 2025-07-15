import 'package:get/get.dart';

abstract class FavoriteController extends GetxController {
  setFavorite(id, val);
}

class FavoriteControllerImp extends FavoriteController {
  Map isFav = {};

  @override
  setFavorite(id, val) {
    isFav[id] = val;
    update();
  }
}
