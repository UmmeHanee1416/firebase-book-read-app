import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.amber[200],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 30.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Genre",
                            style: TextStyle(color: Colors.black87),
                          ),
                          style: ButtonStyle(
                              elevation: MaterialStatePropertyAll(5.0),
                              surfaceTintColor:
                                  MaterialStatePropertyAll(Colors.white)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Top Selling",
                            style: TextStyle(color: Colors.black87),
                          ),
                          style: ButtonStyle(
                              elevation: MaterialStatePropertyAll(5.0),
                              surfaceTintColor:
                                  MaterialStatePropertyAll(Colors.white)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "New Releases",
                            style: TextStyle(color: Colors.black87),
                          ),
                          style: ButtonStyle(
                              elevation: MaterialStatePropertyAll(5.0),
                              surfaceTintColor:
                                  MaterialStatePropertyAll(Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0,right: 35.0),
                      child: Container(
                        child: Text(
                          "Recommended For You",
                          style: TextStyle(
                              fontFamily: "medium-bold",
                              fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.topLeft,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Container(
                        child: Text("Based on Your Reading History"),
                        alignment: Alignment.topLeft,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 120.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/becoming.jpg",
                              height: 150.0,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Becoming",
                            )
                          ],
                        ),
                        surfaceTintColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/educated.jpeg",
                              height: 150.0,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Educated",
                            )
                          ],
                        ),
                        surfaceTintColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/girl_stop_apologizing.jpg",
                              height: 150.0,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Girl, Stop \nApologizing",
                              style: TextStyle(),
                            )
                          ],
                        ),
                        surfaceTintColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/atomic_habit.png",
                              height: 150.0,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Atomic Habit",
                            )
                          ],
                        ),
                        surfaceTintColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/powerof_now.jpg",
                              height: 150.0,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Power of now",
                            )
                          ],
                        ),
                        surfaceTintColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 20.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Text(
                        "New Release",
                        style: TextStyle(
                            fontFamily: "medium-bold",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 240.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  alignment: Alignment.topRight,
                ),
              ],
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/becoming.jpg",
                              height: 150.0,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Becoming",
                            )
                          ],
                        ),
                        surfaceTintColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/educated.jpeg",
                              height: 150.0,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Educated",
                            )
                          ],
                        ),
                        surfaceTintColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/thinkand_grow_rich.jpg",
                              height: 150.0,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Think and Grow \nRich",
                              style: TextStyle(),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        surfaceTintColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/atomic_habit.png",
                              height: 150.0,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Atomic Habit",
                            )
                          ],
                        ),
                        surfaceTintColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/powerof_now.jpg",
                              height: 150.0,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Power of now",
                            )
                          ],
                        ),
                        surfaceTintColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 20.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Text(
                        "Autobiograhpy",
                        style: TextStyle(
                            fontFamily: "medium-bold",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 220.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  alignment: Alignment.topRight,
                ),
              ],
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/autobiography_of_malcomX.jpg",
                              height: 150.0,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "The Autobiography \nof Malcom X",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        surfaceTintColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/diary_of_a_young_girl.jpg",
                              height: 150.0,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Diary of A \nYoung Girl",
                            )
                          ],
                        ),
                        surfaceTintColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/spare.jpg",
                              height: 150.0,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Spare",
                              style: TextStyle(),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        surfaceTintColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Card(
                        surfaceTintColor: Colors.white,
                        child: Column(
                          children: [
                            Image.asset(
                              "images/the_autobiography_of_benjamin_franklin.jpg",
                              height: 150.0,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "The Autobiography \nof Benjamin \nFranklin",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/why_the_caged_bird_sings.jpg",
                              height: 150.0,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "I Know Why \nThe Caged bird \nSings",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        surfaceTintColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
