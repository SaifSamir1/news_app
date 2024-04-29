import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import '../utils/constant.dart';

class HttpService{
  Future<Either<Exception,http.Response?>> getRequest({required String url1}) async {
    final url = Uri.parse(
        '$url1=$apiKey');
    try {
      final response = await http.get(url);
      return Right(response);
    }on SocketException catch (e) {
      log('Socket Exception: $e');
      throw Exception('Failed to connect to server.'); // Re-throw a more generic exception
    } on HttpException catch (e) {
      log('HTTP Exception: $e');
      throw Exception('Error fetching data: Status code ${e.message}'); // Re-throw with details
    } catch (e) {
      log('General Exception: $e');
      throw Exception('An unexpected error occurred.'); // Re-throw a generic exception
    }
  }
}
