import 'package:home_page/src/domain/entities/pet_entity.dart';

abstract class FetchPetDataSource {
  Future<List<PetEntity>> fetchPetCarroulsel();
  Future<List<PetEntity>> fetchPetCards();
}
