import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Pages/raheman.dart';
import '../Pages/sidsriram.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 20,
            title: Text('Music Streaming App'),
            centerTitle: true,
            bottom: TabBar(tabs: [
              Tab(text: 'Sid Sriram', icon: Icon(Icons.radio)),
              Tab(text: 'A R Raheman', icon: Icon(Icons.radio)),
            ]),
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(10))),
            backgroundColor: Colors.transparent,
            elevation: 0.4,
          ),
          body: TabBarView(
            children: [
              SidSriram(),
              Raheman(),
            ],
          ),
        ),
      );
}
