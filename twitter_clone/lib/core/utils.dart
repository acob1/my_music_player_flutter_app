import 'package:flutter/material.dart';

//show snackbar
void showSnackBar(BuildContext context, String content) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}

//get username from email

String getNameFromEmail(String email) {
  return email.split('@')[0];
}
