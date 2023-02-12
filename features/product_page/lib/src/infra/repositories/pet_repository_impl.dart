import 'package:product_page/src/domain/entities/pet.dart';

import '../../domain/repositories/pet_repository.dart';
import '../datasources/pet_data_source.dart';

class PetRepositoryImpl implements PetRepository {
  final PetDataSource dataSource;

  PetRepositoryImpl(this.dataSource);

  @override
  Future<PetEntity> fetch(String path) async {
    return dataSource.fetch(path);
  }
}
