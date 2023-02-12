import 'package:reservation_page/src/domain/entities/use_info_entity.dart';

import '../../domain/repositories/user_info_repository.dart';
import '../datasources/user_info_datasource.dart';

class UserInfoRepositoryImpl implements UserInfoRepository {
  final UserInfoDataSource dataSource;

  UserInfoRepositoryImpl(this.dataSource);

  @override
  Future<void> send(UserInfoEntity userInfo) {
    return dataSource.send(userInfo);
  }
}
