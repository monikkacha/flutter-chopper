import 'package:chopper/chopper.dart';
import 'package:chopper_posts/utils/constants/api_endpoints.dart';

part 'post_api_service.chopper.dart';

@ChopperApi(baseUrl: ApiEndpoints.BASE_URL)
abstract class PostApiService extends ChopperService {
  @Get()
  Future<Response> getPosts();

  @Get(path: '/{id}')
  Future<Response> getPost(@Path('id') int id);

  @Post()
  Future<Response> postPost(
    @Body() Map<String, dynamic> body
  );
}