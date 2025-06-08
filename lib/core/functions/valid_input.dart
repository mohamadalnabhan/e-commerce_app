
import 'package:get/get.dart';

validInput(String val ,int min ,int max , String type){

  if(type =="username"){
    if(!GetUtils.isUsername(val)){
       return "not valid username";
    }
  }
  if(type == "email"){
    if(!GetUtils.isEmail(val))
    return " the email you entered is not valid";
  }
  if(type == "phone"){
    if(!GetUtils.isPhoneNumber(val)){
      return "the number is not valid";

    }
  }
  if(val.isEmpty){
    return "you can not continue with empty values";
  }
  if(val.length < min){
    return "enter a value more than ${min} letters";
  }
  if(val.length > max){
    return "enter a value less than ${max} letters ";
  }
}