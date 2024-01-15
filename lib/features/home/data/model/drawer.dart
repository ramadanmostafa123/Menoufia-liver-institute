// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DropDownPages {
  final Widget page;
  final String pageName;
  final int? pageId;
  DropDownPages({
   required this.page, 
    required this.pageName,
    this.pageId,
  });
}
