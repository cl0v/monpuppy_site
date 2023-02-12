import 'package:reservation_page/src/domain/entities/use_info_entity.dart';

import '../repositories/user_info_repository.dart';

abstract class SendUserInfoUseCase {
  Future<void> call(UserInfoEntity userInfo);
}

class SendUserInfoUseCaseImpl implements SendUserInfoUseCase {
  final UserInfoRepository repository;

  SendUserInfoUseCaseImpl(this.repository);
  @override
  Future<void> call(UserInfoEntity userInfo) {
    return repository.send(userInfo);
  }
}
