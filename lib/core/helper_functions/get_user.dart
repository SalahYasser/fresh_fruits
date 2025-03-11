import 'dart:convert';

import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruits_hub/features/auth/data/models/user_model.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';

UserEntity getUser() {

  var jsonString = Prefs.getString(kUserData);

  var userEntity = UserModel.fromJson(jsonDecode(jsonString));

  return userEntity;
}

// UserEntity? getUser() {
//   // Return nullable UserEntity
//   final jsonString = Prefs.getString(kUserData);
//
//   if (jsonString != null && jsonString.isNotEmpty) {
//     // Check for null and empty
//     try {
//       final json = jsonDecode(jsonString);
//       return UserModel.fromJson(json);
//     } catch (e) {
//       // Handle JSON parsing errors (e.g., corrupted data)
//       log('Error decoding user name and his user name is $e right now');
//       // You might want to clear the corrupted data here:
//       Prefs.setString(kUserData, ''); // or null
//       return null; // Or return a default UserEntity
//     }
//   }
//   return null; // Return null if no data is found
// }

// UserEntity? getUser() {
//   var jsonString = Prefs.getString(kUserData);
//   print('JSON String: $jsonString'); // Debugging log
//
//   if (jsonString == null || jsonString.isEmpty) {
//     print('No user data found.');
//     return null; // Handle the absence of data
//   }
//
//   try {
//     var userEntity = UserModel.fromJson(jsonDecode(jsonString));
//     return userEntity;
//   } catch (e) {
//     print('Error decoding JSON: $e');
//     return null; // Handle JSON decoding error
//   }
// }