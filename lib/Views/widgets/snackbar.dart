
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

void snackbarsuccess(context) {
  final snackBar = SnackBar(
    width: MediaQuery.of(context).size.width,

    /// need to set following properties for best effect of awesome_snackbar_content
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'Congratulations!',
      message: 'Your note added successfully.',
      // change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
      contentType: ContentType.success,
    ),
  );

  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(snackBar);
}

void editsnackbarsuccess(context) {
  final snackBar = SnackBar(
    width: MediaQuery.of(context).size.width,

    /// need to set following properties for best effect of awesome_snackbar_content
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'Congratulations!',
      message: 'Your note edited successfully.',
      // change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
      contentType: ContentType.success,
    ),
  );

  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(snackBar);
}

void snackbarfailure(context) {
  final snackBar = SnackBar(
    width: MediaQuery.of(context).size.width,

    /// need to set following properties for best effect of awesome_snackbar_content
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'Ooops!',
      message: 'Your note don\'t added successfully,Please try again.',
      // change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
      contentType: ContentType.failure,
    ),
  );

  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(snackBar);
}
