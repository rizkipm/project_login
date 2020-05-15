import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
  };
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/' : (context) => LoginPage(),
        RegisterPage.routeName : (context) => RegisterPage(),
        HomePage.routeName : (context) => HomePage(),
      },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Halaman Login'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/logo.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
                ),
              ),
              SizedBox(height: 30,),
              MaterialButton(
                onPressed: (){
                  Navigator.pushNamed(context, HomePage.routeName);
                },
                child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 20),),
                color: Colors.teal,
              ),
              SizedBox(height: 30,),
              Text('Belum punya akun?, Registrasi dibawah!', style: TextStyle(fontSize: 15),),
              SizedBox(height: 20,),
              MaterialButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, RegisterPage.routeName);
                },
                child: Text('Register', style: TextStyle(color: Colors.white, fontSize: 20),),
                color: Colors.teal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  static const String routeName = "/registerPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Halaman Register'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/logo.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'No BP',
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
                ),
              ),
              SizedBox(height: 30,),
              MaterialButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Register', style: TextStyle(color: Colors.white, fontSize: 20),),
                color: Colors.teal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  static const String routeName = "/homePage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Home'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: Image.asset('assets/ane.jpg',
                      width: 250,
                      height: 250,
                      fit: BoxFit.cover),
                ),

                SizedBox(height: 30,),
                Text('Ahlan Wa Sahlan',
                  style: TextStyle(fontSize: 28,),
                ),
                SizedBox(height: 30,),
                Text('Assalamualaikum, Uda. Nama saya Febri Zummiati (1701081002). Saya merupakan mahasiswi di Politeknik Negeri Padang jurusan Teknologi Informasi program studi Teknik Komputer kelas 3B.',
                  style: TextStyle(fontSize: 16,),
                ),
              ]
          ),
        ),
      ),
    );
  }
}