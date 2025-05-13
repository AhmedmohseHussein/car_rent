// Based on https://dartpad.dev/?id=d57c6c898dabb8c6fb41018588b8cf73
import 'package:flutter/material.dart';
import 'package:car_rent/core/my_app.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

const messageLimit = 30;

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
  } catch (e, st) {
    print(e);
    print(st);
  }

  // The first step to using Firebase is to configure it so that our code can
  // find the Firebase project on the servers. This is not a security risk, as
  // explained here: https://stackoverflow.com/a/37484053
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // We sign the user in anonymously, meaning they get a user ID without having
  // to provide credentials. While this doesn't allow us to identify the user,
  // this would, for example, still allow us to associate data in the database
  // with each user.
  await FirebaseAuth.instance.signInAnonymously();

  runApp(const MyApp());
}
