import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

class Api {
  Dio dio = Dio();
  void postData() async {
    try {
      Response response = await dio.post("url", data: {
        "name": "Divyanshu Singh",
        "company": "Antino",
        "joining date": "05/06/2024"
      });
      if (response.statusCode == 200) {
        log("Data is Successfully added to the database");
      } else {
        log("Request is failed due to the ${response.statusCode}");
      }
    } catch (e) {
      log("Somethings went wrong $e");
    }
  }

  void getData() async {
    try {
      Response response = await dio.get("url");
      if (response.statusCode == 200) {
        log("Data Fetched successfully");
      } else if (response.statusCode == 404) {
        log("Data not found");
      } else if (response.statusCode == 500) {
        log("Internal Server Error");
      } else {
        log("Something went wrong this is the status code ${response.statusCode}");
      }
    } catch (e) {
      log("something went wrong $e");
    }
  }

  void deleteData(String id) async {
    try {
      Response response = await dio.delete("url/$id");
      if (response.statusCode == 200) {
        log("Data is deleted successfully");
      }
    } catch (e) {
      log("something went wrong $e");
    }
  }

  void updateData(String id) async {
    Map<String, dynamic> data = {
      "name": "navin Singh",
    };
    try {
      Response response = await dio.patch("url/$id", data: data);
      if (response.statusCode == 200) {
        log("Data item is successfully updated");
      }
    } catch (e) {
      log("Something went wrong $e");
    }
  }

  void searchData(String fieldName, String fieldvalue) async {
    Map<String, dynamic> queryParameter = {fieldName: fieldvalue};
    try {
      Response response = await dio.get("url", queryParameters: queryParameter);
      if (response.statusCode == 200) {
        log("The Search result is");
      }
    } catch (e) {
      log("Something went wrong $e");
    }
  }

//Dio also provides interceptors, which allow you to modify
//requests and responses before they are sent or received.
  void addInterceptor() async {
    try {
      dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
        options.headers['Authentication'] = "authentication token";
        return handler.next(options);
      }));
    } catch (e) {
      log("something went wrong $e");
    }
  }

  void tokenCancellation() async {
    //Dio also provides cancellation tokens that allow you to cancel requests that are no longer needed.
    // This can be useful in situations where you need to abort a request that is taking too long or is no longer relevant.
    try {
      CancelToken cancelToken = CancelToken();
      Response response = await dio.get("url", cancelToken: cancelToken);
      if (response.statusCode == 200) {
        log("Successfully fetched the data");
      }
      cancelToken.cancel();
    } catch (e) {
      log("Something went wrong $e");
    }
  }

  void erroHandling() async {
    // there are 5 way to handel the error in dio
    // try catch
    try {
      Response response = await dio.get("url");
      if (response.statusCode == 200) {
        log("fetched ");
      }
    } catch (e) {
      log(e.toString());
    }
    // using interceptors
    dio.interceptors
        .add(InterceptorsWrapper(onError: (DioException e, handler) {
      return handler.next(e); // to propogate the error
    }));
    // using https status code
    Response response = await dio.get("url");
    if (response.statusCode == 200) {
      log("Successfully fetched data");
    } else if (response.statusCode == 404) {
      log("Data not found");
    } else if (response.statusCode == 500) {
      log("internal server error");
    } else {
      log("Something went wrong with this status code ${response.statusCode}");
    }
    // useing cancellation
    // if(CancelToken.isCancel()){
    //   print("Request is canceled");
    // }
    // else{
    //   //handel other error
    // }
    try {
      // Make a GET request
      Response response = await dio.get('https://api.example.com/data');

      // Check if the request was successful (HTTP status code in the 2xx range)
      if (response.statusCode == 200 && response.statusCode == 300) {
        // Request was successful
        log('GET request successful!');
        log('Response: ${response.data}');
      } else {
        // Handle server errors
        log('GET request failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      // Handle errors
      if (e is DioException) {
        if (e.error is SocketException) {
          log('Network error: ${e.error}');
        } else if (e.type == DioExceptionType.receiveTimeout) {
          log('Server error: ${e.response?.statusCode}');
        } else if (CancelToken.isCancel(e)) {
          log('Request was cancelled');
        } else {
          log('Other Dio error: $e');
        }
      } else {
        log('Other error: $e');
      }
    }
  }
}
