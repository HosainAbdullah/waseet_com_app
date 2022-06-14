// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registr_user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final int typeId = 0;

  @override
  UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModel(
      bankName: fields[3] as String?,
      imageIdentity: fields[8] as String?,
      numberIp: fields[4] as String?,
      phoneNumber: fields[2] as String?,
      userId: fields[0] as int?,
      userName: fields[1] as String?,
      userPass: fields[6] as String?,
      userType: fields[7] as int?,
      imgIdentityHive: fields[5] as Uint8List?,
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.userName)
      ..writeByte(2)
      ..write(obj.phoneNumber)
      ..writeByte(3)
      ..write(obj.bankName)
      ..writeByte(4)
      ..write(obj.numberIp)
      ..writeByte(5)
      ..write(obj.imgIdentityHive)
      ..writeByte(6)
      ..write(obj.userPass)
      ..writeByte(7)
      ..write(obj.userType)
      ..writeByte(8)
      ..write(obj.imageIdentity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
