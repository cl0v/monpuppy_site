import 'package:product_page/src/domain/entities/pet.dart';

abstract class PetRepository {
  Future<PetEntity> fetch(String path);
}
