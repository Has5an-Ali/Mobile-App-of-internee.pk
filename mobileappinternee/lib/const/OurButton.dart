import 'package:mobileappinternee/const/const.dart';
import 'package:mobileappinternee/const/fontstyle.dart';

Widget ourbutton({String? title, onPress, color, Textcolor}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.all(12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
      onPressed: onPress,
      child: title!.text.color(Textcolor).fontFamily(semibold).make());
}
