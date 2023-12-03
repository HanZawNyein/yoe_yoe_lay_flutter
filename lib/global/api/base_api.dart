import 'package:yoe_yoe_lay/global/api/auth_api.dart';

class BaseAPI {
  // HTTPS
  // https://e334-2a09-bac1-4b00-00-1f1-1c3.ngrok-free.app/web/login
  // static final String base = "e334-2a09-bac1-4b00-00-1f1-1c3.ngrok-free.app";
  // static final String baseURL = "https://$base";
  // static final String websocketURL = "wss://$base/websocket";

  // HTTP
  static final String base = "192.168.1.18:8069";
  static final String baseURL = "http://$base";
  static final String websocketURL = "ws://$base/websocket";

  static final AuthAPI authAPI = AuthAPI(baseURL: baseURL);
}
