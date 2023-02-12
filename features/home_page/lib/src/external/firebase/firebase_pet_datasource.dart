import 'package:home_page/src/domain/entities/pet_entity.dart';

import '../../constants/dogs.dart';
import '../../infra/datasources/fetch_pet_datasource.dart';

class FirebasePetDataSource implements FetchPetDataSource {
  @override
  Future<List<PetEntity>> fetchPetCards() async {
    return [
      PetEntity(
          title: 'Cane Corso',
          path: 'cane_corso',
          colorHex: 0xFFDAAAFF,
          imageUrl:
              "https://firebasestorage.googleapis.com/v0/b/monpuppy-f70cd.appspot.com/o/pets%2Fcane_corso%2FCANE%20CORSO.png?alt=media&token=0ff4934c-39c5-40fb-ba9b-e052dc63381c"),
    ];
  }

  @override
  Future<List<PetEntity>> fetchPetCarroulsel() async {
    return [
      PetEntity(
        title: 'Pit bull',
        path: 'pit_bull',
        colorHex: 0xFFF2F2F2,
        imageUrl: pitbull_asset,
      ),
      PetEntity(
        title: 'Cane Corso',
        path: 'cane_corso',
        colorHex: 0xFFDAAAFF,
        imageUrl: cane_corso_asset,
      ),
      PetEntity(
        title: 'Rotweiller',
        path: 'rotweiller',
        colorHex: 0xFFFFBF71,
        imageUrl: rotweiller_asset,
      ),
    ];
  }
}
