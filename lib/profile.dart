import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.amber[200],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 10.0,),
            Container(
              height: 200.0,
              child: Center(
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage("images/salman.png"),
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Text("Your Name",style: TextStyle(fontSize: 25.0,fontFamily: "josefinslab",fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 60.0,
                child: Card(
                  color: Colors.amber[50],
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          "My Books",
                          style: TextStyle(
                              fontFamily: "medium-bold",
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 230.0),
                          child: Container(
                            child: Icon(Icons.book,color: Colors.green[300],),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  surfaceTintColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 60.0,
                child: Card(
                  color: Colors.amber[50],
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          "favourites",
                          style: TextStyle(
                              fontFamily: "medium-bold",
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 220.0),
                          child: Container(
                            child: Icon(Icons.favorite,color: Colors.green[300],),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  surfaceTintColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 60.0,
                child: Card(
                  color: Colors.amber[50],
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          "Setting",
                          style: TextStyle(
                              fontFamily: "medium-bold",
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 250.0),
                          child: Container(
                            child: Icon(Icons.settings,color: Colors.green[300],),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  surfaceTintColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
