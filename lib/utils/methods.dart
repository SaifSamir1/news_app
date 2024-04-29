




import '../servics/hive_service.dart';
import 'constant.dart';

void isDarkOrLight1() {
  if (isDarkOrLight == 'true')
  {
    myBox!.put('theme', 'Light');
    myBox!.put("isDark", "true");
  }else
  {
    myBox!.put('theme', 'Dark');
    myBox!.put("isDark", "false");
  }
}