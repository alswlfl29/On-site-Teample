import 'package:get/get_connect.dart';
import 'package:moviesns/shared/global.dart';

class MovieRepository extends GetConnect {
  @override
  void onInit() {
    allowAutoSignedCert = true;
    httpClient.baseUrl = Global.API_ROOT;
    httpClient.addRequestModifier<void>((request) {
      request.headers['Accept'] = 'application/json';
      return request;
    });
    super.onInit();
  }

  Future<List?> movieIndex() async {
    Response response = await get(
      '/api/movie',
    );
    return (response.statusCode == 401) ? null : response.body;
  }
}
