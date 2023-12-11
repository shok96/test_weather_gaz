import 'package:testweathergaz/extensions/num_extansions.dart';

class DateUtilsProject {
  static int currentDate(int unixTime) {
    final now = DateTime.now();
    final unix = DateTime.fromMillisecondsSinceEpoch(unixTime * 1000);
    if(now.day <= unix.day && now.month <= unix.month && now.year <= unix.year){
      return (now.millisecondsSinceEpoch ~/ 1000);
    }
    else{
      return (unix.millisecondsSinceEpoch ~/ 1000);
    }
  }
}
