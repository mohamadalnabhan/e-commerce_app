import 'package:flutter_application_1/core/class/crud.dart';
import 'package:flutter_application_1/link_api.dart';

class VerifyCodeSignupData {
  Crud crud;

VerifyCodeSignupData(this.crud) ; 
  postData(String email, String verifyCode) async {
    try {
      var response = await crud.postRequest(LinkApi.verifyCodeSignup, {
        "email": email,
        "verifycode": verifyCode,
      });
      return response.fold((l) => l, (r) => r);
    } catch (e) {
      print("$e");
    }
  }
}
//linksignup 



// Define the API endpoint
// – Specify the URL of the server or backend where the request will be sent.

// Create an HTTP request handler
// – Make a reusable class (like Crud) to handle HTTP requests such as POST or GET.

// Build a data service class
// – Create a class (like SignupData) that takes the input data and sends it using the HTTP handler.

// Send the request with the required data
// – Collect data (like username, email, etc.) and pass it to the function that sends the request.

// Handle the response
// – Process the response returned from the server (e.g., success or error message).

// Use try-catch for error handling
// – Catch exceptions that might happen during the network call and handle them properly.

// Call the function from your UI or controller
// – Trigger the request (e.g., when a button is pressed) by calling the method from the data class.

// Optionally show loading and success/error messages
// – Display a loading indicator while the request is in progress, and show feedback based on the result.