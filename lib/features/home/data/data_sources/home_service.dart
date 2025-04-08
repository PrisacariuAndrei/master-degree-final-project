import 'package:chopper/chopper.dart';

part 'home_service.chopper.dart';

@ChopperApi()
abstract class HomeService extends ChopperService {
  static HomeService create([ChopperClient? client]) => _$HomeService(client);

  @GET(path: 'volumes')
  Future<Response> getBooks({@Query('q') required String category});

  @GET(path: 'volumes/{id}')
  Future<Response> getBookDetails({@Path('id') required String id});
}
