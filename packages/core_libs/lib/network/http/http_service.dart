abstract class HttpService {

  final String url;

  HttpService(this.url);

  Future<dynamic> get(String path);
  Future<dynamic> delete(String path);
  Future<dynamic> post(String path, dynamic data);
  Future<dynamic> put(String path, dynamic data);
  Future<dynamic> patch(String path, dynamic data);
}