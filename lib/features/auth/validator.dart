
import 'authMessages.dart';

validInput(String val, int min,int max){

  if(val.isEmpty){
    return "$messageInputEmpty";
  }
  else if(val.length > max){
    return "$messageInputMax  $max";
  }
  else if(val.length < min){
    return "$messageInputMin  $min";
  }


}