class LinkApi {
  static String server = "https://ecommerce-backend-yflb.onrender.com";
  static String test = "$server/mail/test.php";
  // ================ auth
  static String Signup = "$server/auth/signup.php";
  static String verifyCodeSignup = "$server/auth/verifycode.php";
  static String Login = "$server/auth/login.php";
  //================ forget password

  static String resetPassword = "$server/forgetpassword/resetpassword.php";
  static String checkEmail = "$server/forgetpassword/checkemail.php";
  static String verifyCodeForgetPassword =
      "$server/forgetpassword/verifycode.php";
}
