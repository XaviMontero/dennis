// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// ignore_for_file: public_member_api_docs

// @dart=2.9

import 'dart:async';
import 'package:dennis_app/screens/my_home_page.dart';
import 'package:dennis_app/util/const.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  String get name => 'Dennis';
  FirebaseOptions get firebaseOptions => const FirebaseOptions(
        appId: '1:445278413518:android:d598e6fc31f4c0bc7d269f',
        apiKey: 'AIzaSyAgUhHU8wSJgO5MVNy95tMT07NEjzMOfz0',
        projectId: 'dennis-app-737e2',
        messagingSenderId: '448618578101',
      );

  Future<void> initializeDefault() async {
    FirebaseApp app = await Firebase.initializeApp();
    assert(app != null);
    print('Initialized default app $app');
  }

  Future<void> initializeSecondary() async {
    FirebaseApp app =
        await Firebase.initializeApp(name: name, options: firebaseOptions);

    assert(app != null);
    print('Initialized $app');
  }

  void apps() {
    final List<FirebaseApp> apps = Firebase.apps;
    print('Currently initialized apps: $apps');
  }

  void options() {
    final FirebaseApp app = Firebase.app(name);
    final FirebaseOptions options = app?.options;
    print('Current options for app $name: $options');
  }

  Future<void> delete() async {
    final FirebaseApp app = Firebase.app(name);
    await app?.delete();
    print('App $name deleted');
  }

  @override
  Widget build(BuildContext context) {
    this.initializeDefault();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.lightTheme,
      darkTheme: Constants.darkTheme,
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => MyHomePage(
              app: null,
            ),
      },
    );
  }
}
