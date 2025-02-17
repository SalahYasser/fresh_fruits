import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';

abstract class DataBaseService{

  Future<void> addDate({required String path, required Map<String, dynamic> data});

  Future<UserEntity> getDate({required String path, required String uid});
}



