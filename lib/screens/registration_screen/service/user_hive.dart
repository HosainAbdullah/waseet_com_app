import 'package:hive/hive.dart';
import 'package:waseet_com_app/screens/registration_screen/model/registr_user.dart';
import 'package:waseet_com_app/services/init_boxes_hive.dart';

class OpHiveUser {
  final box = Boxes.getBoxUsers();

  void savaDataUser(UserModel userModel) {
    box.add(userModel);
    print(box.values);
  }

  deleteUser(UserModel userModel) {
    box.delete(userModel.key);
  }
}
