import 'package:mobx/mobx.dart';

part 'pet_banner_carroulsel_controller.g.dart';

class PetBannerCarroulselController = PetBannerCarroulselControllerBase
    with _$PetBannerCarroulselController;

abstract class PetBannerCarroulselControllerBase with Store {
  PetBannerCarroulselControllerBase({required this.maxIndex});

  int maxIndex;

  @observable
  int imageIndex = 0;

  @action
  void onGoToPage(int pageIndex) {
    imageIndex = pageIndex;
  }

  @action
  void onNextIndexPressed() {
    if (imageIndex == maxIndex) {
      imageIndex = 0;
    } else {
      imageIndex++;
    }
  }

  @action
  onPreviousIndexPressed() {
    if (imageIndex == 0) {
      imageIndex = maxIndex;
    } else {
      imageIndex--;
    }
  }
}
