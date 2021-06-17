import 'package:http/http.dart';

class RestAPI {
  Future<Response> getDashboardData() async {
    Response response = await post(
      Uri.parse(
          "http://api.exchangeratesapi.io/v1/latest?access_key=94ebf454d8c7a0e640fdde082d387f03"),
    );

    return response;
  }
}
