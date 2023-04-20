// this is a snack bar which is globally called in the app

// static member means they are created only once and does'nt
// require an object of class for acessing
// void cuz nothing is returned
// calling build context for snackbar and a message to show
import 'package:flutter/material.dart';

class Dialogs {
  static showSnackbar(
    BuildContext context,
    String msg1,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              height: 90,
              width: 400,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    msg1,
                    style: const TextStyle(fontSize: 17, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }

  static void showProgressBar(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => const Center(child: CircularProgressIndicator()));
  }
}
