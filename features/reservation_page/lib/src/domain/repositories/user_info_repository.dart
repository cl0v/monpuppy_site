import 'package:reservation_page/src/domain/entities/use_info_entity.dart';

abstract class UserInfoRepository {
  Future<void> send(UserInfoEntity userInfo);
}
