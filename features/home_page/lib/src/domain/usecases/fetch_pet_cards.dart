import 'package:home_page/src/domain/entities/pet_entity.dart';

import '../repositories/pet_repository.dart';

abstract class FetchPetCards {
  Future<List<PetEntity>> call();
}

class FetchPetCardsImpl implements FetchPetCards {
  final PetRepository repository;

  FetchPetCardsImpl(this.repository);
  @override
  Future<List<PetEntity>> call() {
    return repository.fetchPetCard();
  }
}
