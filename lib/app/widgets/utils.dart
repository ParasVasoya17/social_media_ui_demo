import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

RichText convertHashtag(String text) {
  List<String> split = text.split(RegExp("#"));
  List<String> hashtags = split.getRange(1, split.length).fold([], (t, e) {
    var texts = e.split(" ");
    if (texts.length > 1) {
      return List.from(t)..addAll(["#${texts.first}", (e.substring(texts.first.length))]);
    }
    return List.from(t)..add("#${texts.first}");
  });
  return RichText(
    text: TextSpan(
      style: TextStyle(color: Colors.black, fontSize: 15.sp),
      children: [
        TextSpan(text: split.first),
        ...hashtags
            .map((text) => text.contains("#")
                ? TextSpan(text: text, style: TextStyle(color: Colors.blue, fontSize: 16.sp))
                : TextSpan(text: text, style: TextStyle(color: Colors.black, fontSize: 15.sp)))
            .toList()
      ],
    ),
  );
}
