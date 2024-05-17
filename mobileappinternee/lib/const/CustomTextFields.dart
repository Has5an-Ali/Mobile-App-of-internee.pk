import 'package:mobileappinternee/const/const.dart';
import 'package:mobileappinternee/const/fontstyle.dart';

Widget CustomtextFields({String? hint, String? title}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.fontFamily(semibold).color(textcolor).make(),
      TextField(
        decoration: InputDecoration(
          isDense: true,
          labelText: hint,
          labelStyle: const TextStyle(
            fontFamily: semibold,
            fontSize: 16,
            color: maincolor,
          ),
          fillColor: textcolor,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: textcolor, width: 2),
              borderRadius: BorderRadius.zero),
        ),
      ).box.roundedSM.make()
    ],
  );
}
