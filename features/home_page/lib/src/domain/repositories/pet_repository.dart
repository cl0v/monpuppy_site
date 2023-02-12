import 'package:home_page/src/domain/entities/pet_entity.dart';

abstract class PetRepository {
  Future<List<PetEntity>> fetchPetCard();
  Future<List<PetEntity>> fetchPetCarroulsel();
}
