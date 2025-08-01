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
  static String resendCode = "$server/auth/resend.php";
  //================ forget password

  static String resetPassword = "$server/forgetpassword/resetpassword.php";
  static String checkEmail = "$server/forgetpassword/checkemail.php";
  static String verifyCodeForgetPassword =
      "$server/forgetpassword/verifycode.php";
  ///// home
  static String homePage = "$server/home.php";
  static String itemsPage = "$server/items/items.php";

  /////// favorite
  static String favAdd = "$server/favorite/add.php";
  static String favDelete = "$server/favorite/delete.php";
  static String favView = "$server/favorite/view_fav.php";
  static String favPageDelete = "$server/favorite/deletefromfav.php";


  //////// cart
  ///
  ///
   static String cartView = "$server/cart/view.php";
  static String cartAdd = "$server/cart/add.php";
  static String cartDelete = "$server/cart/delete.php";
  static String cartCountItems = "$server/cart/get_count_items.php";
}
