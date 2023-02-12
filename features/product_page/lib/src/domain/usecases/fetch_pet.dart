import 'package:product_page/src/domain/entities/pet.dart';
import 'package:product_page/src/domain/repositories/pet_repository.dart';

abstract class FetchPetUseCase {
  Future<PetEntity> call(String path);
}

class FetchPetUseCaseImpl implements FetchPetUseCase {
  final PetRepository repository;

  FetchPetUseCaseImpl(this.repository);
  @override
  Future<PetEntity> call(String path) {
    return repository.fetch(path);
  }
}
