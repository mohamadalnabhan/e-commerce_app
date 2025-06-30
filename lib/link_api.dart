class LinkApi {
  static String server = "https://ecommerce-backend-yflb.onrender.com";

  ////// image
  static String imageStatic = "$server/uploads";
  static String imageCategories = "$imageStatic/categories_up";
  static String imageItems = "$imageStatic/items_up";
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
  ///// home
  static String homePage = "$server/home.php";
}
