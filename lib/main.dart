import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  var nameEditingController = TextEditingController();
  var ageEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Welcome To My App",
        style: GoogleFonts.smooch(textStyle: TextStyle(color:Colors.red, fontSize: 32))),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
              child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("This Is Left:"),
                  Text("This Is Right")
                ],

              ),
              SizedBox(height: 10,),
              Image.network("https://pngroyale.com/wp-content/uploads/2021/11/naruto-png-hd.png"),
              Image.asset("images/pic.png"),
              Image.network("https://cdn.imgbin.com/16/12/1/imgbin-monkey-d-luffy-one-piece-treasure-cruise-one-piece-unlimited-world-red-piracy-one-piece-one-piece-monkey-d-luffy-4FcBjnff4CxTGPL9gwasFrzFY.jpg"),
              Text("BIG 3", style: TextStyle(color: Colors.black, fontSize: 32)),
              Text(
                "I Hope You Like It",
                style:TextStyle(color: Colors.blue, fontSize: 20),
              ),
              SizedBox(height:10),
              TextField(
                controller: ageEditingController,
                decoration: InputDecoration(hintText: "How Old Are You?"),),
              SizedBox(height: 10),
              TextField(
                controller:nameEditingController ,
                decoration: InputDecoration(hintText: "What Is Your Name?"),),
              SizedBox(height: 10),
              TextButton(onPressed: (){
                Fluttertoast.showToast(
                    msg: "Hello ${nameEditingController.text} ,you are ${ageEditingController.text} years old.",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              }, child: Text("Press Me")),
              Text("This Is My First Time Making App;)")
            ],
          )),
        ),
      ),
    );
  }
}
