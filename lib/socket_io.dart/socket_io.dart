import 'dart:developer';

import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketConnection {
  late IO.Socket socket;
  void establishedConnection() {
    socket = IO.io("Socket Url", <String, dynamic>{
      "autoConnect": false,
      "transports": ['WebSocket']
    });
    socket.connect();
    socket.onConnect((_) {
      log("Connection Established successfully");
    });
    socket.onConnectError((e) {
      log("something went wrong during established the connction $e");
    });
    socket.onDisconnect((_) {
      log("Disconnect to the server");
    });
    socket.onError((_) {
      log("error");
      ;
    });
  }

  void sendMessage() {
    String message = "how are you?";
    if (message.isEmpty) return;
    Map<String, dynamic> messageMap = {
      "message": message,
      "receiverId": "",
      "senderId": "",
      "time": DateTime.now().microsecondsSinceEpoch
    };
    // to send the data we used (emit) function
    socket.emit("sendData", messageMap);
  }

  void getMessage() {
    // to get the date we used (on) function
    socket.on("getMessage", (newMessage) {
      // messageList.add(MessageModel.fromJson(data));
    });
  }

  void disposeConnection() {
    socket.disconnect();
    socket.dispose();
  }
}
