import 'package:flutter/cupertino.dart';

img(String img,BoxFit fit){
  return Image.asset(img,
    width: 300,
    height: 300,
    fit: fit,
  );
}