
import 'package:flutter_application_1/core/class/status_request.dart';

dataHandling(response){
if(response is StatusRequest){
  return response ;
/////it will return L anyways
}else{
return StatusRequest.success ;
}
}