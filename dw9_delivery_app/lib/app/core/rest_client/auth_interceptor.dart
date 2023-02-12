import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final sp = await SharedPreferences.getInstance();
    final accessToken = sp.getString('accessToken');

    options.headers['Authorization'] = 'Bearer $accessToken';

    //ação da requisição se vai para próxima ou é interceptada
    handler.next(options);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      //Redirecionar o usuário para a tela de home
      final sp = await SharedPreferences.getInstance();
      sp.clear(); //para não ficar em loop
      handler.next(err);
    } else {
      handler.next(err);
    }
  }
}
