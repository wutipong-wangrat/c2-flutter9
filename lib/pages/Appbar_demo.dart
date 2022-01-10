import 'dart:html';

import 'package:flutter/material.dart';

class AppbarDemo extends StatefulWidget {
  const AppbarDemo({Key? key}) : super(key: key);

  @override
  State<AppbarDemo> createState() => _AppbarDemo();
}

class _AppbarDemo extends State<AppbarDemo> {
  int count = 0;
  String message = 'Hi';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Phalakorn University',style: TextStyle(color: Colors.white),),
        // toolbarHeight: 100,
        // toolbarOpacity: 0.8,
        // toolbarTextStyle: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),
        backgroundColor: Colors.orange,
        elevation: 15.0,
        shadowColor: Colors.red,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  message = 'Hi 2022';
                  count = count + 1;
                });
              },
              icon: Icon(Icons.add_alert)),
          IconButton(
              onPressed: () => setState(() {
                    message = 'Thank you';
                    count = count - 1;
                  }),
              icon: Icon(Icons.delete_forever_sharp)),
          IconButton(onPressed: (){
            setState(() {
              message = '2022';
              count = 0;
            });
          }, icon: Icon(Icons.settings_power))
        ],
      ),
      body: Center(
        child: Text('$count : $message',
        style: TextStyle(fontSize: 90,fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() => {count = count + 1, print("count:$count")});
        },
        child: Icon(Icons.add),
        tooltip: 'เพิ่มค่า',
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
