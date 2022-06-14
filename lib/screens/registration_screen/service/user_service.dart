import 'dart:io';
import 'package:dio/dio.dart';
import 'package:waseet_com_app/screens/registration_screen/model/registr_user.dart';

class DataApiDatabase {
  late final Dio dio;

  DataApiDatabase()
      : dio = Dio(BaseOptions(baseUrl: 'http://192.168.1.106:50721/empdb/'));

  Future<List<UserModel>?> fetchData() async {
    try {
      final response = await dio.get('employee');

      if (response.statusCode == HttpStatus.ok) {
        final dataReturn = response.data['emps'];

        if (dataReturn is List) {
          return dataReturn.map((e) => UserModel.fromJson(e)).toList();
        }
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
    return null;
  }

  Future<bool> createData(UserModel model) async {
    try {
      final response = await dio.post('employee', data: model.toJson());

      return response.statusCode == HttpStatus.ok;
      // print('True');
      // print('false');
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
    return false;
  }

  Future<bool> updateData(UserModel model, int id) async {
    try {
      final response = await dio.put('employee/${id}', data: model.toJson());
      return response.statusCode == HttpStatus.ok;
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
    return false;
  }

  Future<bool> deleteData(int id) async {
    try {
      final response = await dio.delete('employee/${id}');
      return response.statusCode == HttpStatus.ok;
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
    return false;
  }
}
