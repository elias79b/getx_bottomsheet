import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("GetX snackbar"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.bottomSheet(Container(
                      width: Get.width,
                      height: 100,
                      color: Colors.greenAccent,
                      child: Wrap(
                        children: [
                          ListTile(
                            leading: Icon(Icons.wb_incandescent),
                            title: Text("Light them"),
                            onTap: (){
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.wb_incandescent_outlined),
                            title: Text("dark them"),
                            onTap: (){
                              Get.changeTheme(ThemeData.dark());
                            },
                          )
                        ],
                      ),
                    ));
                  },
                  child: Text("snack bar"))
            ],
          ),
        ),
      ),
    );
  }
}
