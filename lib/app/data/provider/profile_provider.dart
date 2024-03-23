import 'package:get/get.dart';
import 'package:pretest_2/app/data/model/profile_model.dart';

class ProfileProvider extends GetConnect {
  //Mendapatkan mengambil data profile dari API
  static const _apiUrlProfile = 'https://randomuser.me/api/';
  Future<ProfileModel> getProfileAPI() async {
    final response = await get(_apiUrlProfile);
    if (response.statusCode == 200) {
      return ProfileModel.fromMap(response.body as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load profile');
    }
  }
}
