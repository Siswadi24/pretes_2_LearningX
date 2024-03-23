import 'package:get/get.dart';
import 'package:pretest_2/app/data/model/profile_model.dart';
import 'package:pretest_2/app/data/provider/profile_provider.dart';

class HomeController extends GetxController {
  // Membuat Controller Untuk Home Mendapatkan Data Profile Dari API
  Future<ProfileModel> getProfileModel() async {
    final listProfile = await ProfileProvider().getProfileAPI();
    return listProfile;
  }
}
