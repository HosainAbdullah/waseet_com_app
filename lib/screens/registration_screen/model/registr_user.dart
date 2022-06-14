import 'dart:typed_data';
import 'package:hive/hive.dart';

part 'registr_user.g.dart';

@HiveType(typeId: 0)
class UserModel extends HiveObject {
  @HiveField(0)
  int? userId; // رقم المستخدم
  @HiveField(1)
  String? userName; //  أسم المستخدم
  @HiveField(2)
  String? phoneNumber; // رقم الهاتف
  @HiveField(3)
  String? bankName; // أسم البنك
  @HiveField(4)
  String? numberIp; // رقم البيان
  @HiveField(5)
  Uint8List? imgIdentityHive; // تخزين صوره المستخدم في الهايف
  @HiveField(6)
  String? userPass; // كلمه المرور
  @HiveField(7)
  int? userType; // نوع المستخدم
  @HiveField(8)
  String? imageIdentity; // صوره المستخدم في قاعده البيانات
  UserModel(
      {this.bankName,
      this.imageIdentity,
      this.numberIp,
      this.phoneNumber,
      this.userId,
      this.userName,
      this.userPass,
      this.userType,
      this.imgIdentityHive});

  UserModel.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userName = json['user_name'];
    phoneNumber = json['phone_number'];
    userPass = json['user_pass'];
    bankName = json['bank_name'];
    numberIp = json['number_ip'];
    imageIdentity = json['image_identity'];
    userType = json['user_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    data['user_name'] = userName;
    data['phone_number'] = phoneNumber;
    data['user_pass'] = userPass;
    data['bank_name'] = bankName;
    data['number_ip'] = numberIp;
    data['image_identity'] = imageIdentity;
    data['user_type'] = userType;
    return data;
  }
}
