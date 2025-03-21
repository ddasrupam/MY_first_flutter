import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Card_Widget(),
    );
  }
}

class Card_Widget extends StatefulWidget {
  const Card_Widget({super.key});

  @override
  State<Card_Widget> createState() => _Card_WidgetState();
}

class _Card_WidgetState extends State<Card_Widget> {
  @override
  Widget build(BuildContext context) {
    final List<String> labels = ["Home", "Camera", "Alarm", "Call"];
    return Scaffold(
      drawerScrimColor: Colors.black,
      // backgroundColor: Colors.brown,
      drawer: Drawer(
        child: Text("Hello"),
        backgroundColor: Colors.cyan,
        shape: OutlineInputBorder(),
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          Fluttertoast.showToast(
            msg: "Tapped on item  ${labels[index]}",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.SNACKBAR,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.lightGreen,
            textColor: Colors.white,
            fontSize: 20,
          );
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo_outlined),
            label: "Camera",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarms_sharp),
            label: "Alarm",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add_call), label: "Call"),
        ],
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.blue,
        type:
            BottomNavigationBarType
                .fixed, // this is mandatory to display the color of the navigationbar
      ),
      appBar: AppBar(
        title: Text(
          "Hello how are you, i am Rupam",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'Bytesized',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            border: Border.all(
              color: Colors.amber,
              width: 10,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 40,
                color: Colors.pink,
                // offset: Offset(0, 20),
              ),
            ],
          ),

          // child: Card(
          //   // color: Colors.cyan,
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(100),
          //   ),
          // child: Image.asset('assets/images/img.png', fit: BoxFit.cover),
          child: ElevatedButton(
            onPressed: () {
              Fluttertoast.showToast(
                msg: "This is Center Short Toast",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.SNACKBAR,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0,
              );
            },

            child: Text("Toast"),
          ),
          // ),
        ),
      ),
    );
  }
}
