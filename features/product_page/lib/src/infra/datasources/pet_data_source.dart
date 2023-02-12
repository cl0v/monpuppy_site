import 'package:product_page/src/infra/models/pet_model.dart';

abstract class PetDataSource {
  Future<PetModel> fetch(String path);
}
