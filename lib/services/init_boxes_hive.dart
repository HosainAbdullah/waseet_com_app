import 'package:waseet_com_app/screens/registration_screen/model/registr_user.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<UserModel> getBoxUsers() => Hive.box('userModel');
}
