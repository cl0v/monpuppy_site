import 'package:home_page/src/domain/entities/pet_entity.dart';

import '../../domain/repositories/pet_repository.dart';
import '../datasources/fetch_pet_datasource.dart';

class PetRepositoryImpl implements PetRepository {
  final FetchPetDataSource dataSource;

  PetRepositoryImpl(this.dataSource);
  @override
  Future<List<PetEntity>> fetchPetCard() {
    return dataSource.fetchPetCards();
  }
  
  @override
  Future<List<PetEntity>> fetchPetCarroulsel() {
    return dataSource.fetchPetCarroulsel();
  }
}
