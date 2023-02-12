import '../entities/pet_entity.dart';
import '../repositories/pet_repository.dart';

abstract class FetchPetCarroulsel {
  Future<List<PetEntity>> call();
}

class FetchPetCarroulselImpl implements FetchPetCarroulsel {
  final PetRepository repository;

  FetchPetCarroulselImpl(this.repository);
  @override
  Future<List<PetEntity>> call() {
    return repository.fetchPetCarroulsel();
  }
}
