import 'package:dio/dio.dart';
class DioService{
  final dio=Dio();
  Future<void> getSampleData() async{
    final response = await dio.get('https://jsonplaceholder.typicode.com/todos/1');
    print(response);
  }
}

