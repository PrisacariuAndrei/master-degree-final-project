// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$HomeService extends HomeService {
  _$HomeService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = HomeService;

  @override
  Future<Response<dynamic>> getBooks({required String category}) {
    final Uri $url = Uri.parse('volumes');
    final Map<String, dynamic> $params = <String, dynamic>{'q': category};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getBookDetails({required String id}) {
    final Uri $url = Uri.parse('volumes/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
