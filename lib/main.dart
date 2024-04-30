import 'package:firebase_core/firebase_core.dart';
import 'package:firebasebookapp/firebase_options.dart';
import 'package:firebasebookapp/home.dart';
import 'package:firebasebookapp/profile.dart';
import 'package:flutter/material.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentState = 0;
  final pages = [
    home(),
    profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        backgroundColor: Colors.amber[100],
        title: Text(
          "BOOK READ",
          style: TextStyle(fontFamily: "black", fontSize: 30.0),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.width_full)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
        toolbarHeight: 80.0,
      ),
      drawer: Container(),
      body: pages[_currentState],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting, // Shifting
        currentIndex: _currentState,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
            backgroundColor: Color.fromARGB(255, 99, 4, 4),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person),
            backgroundColor: Colors.teal[900],
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentState = index;
          });
        },
      ),
    ));
  }
}
