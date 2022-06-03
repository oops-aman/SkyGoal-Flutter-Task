import 'package:flutter/material.dart';
import 'package:skygoal_task/constants.dart';

class CollegeScreen extends StatefulWidget {
  const CollegeScreen({Key? key}) : super(key: key);

  @override
  State<CollegeScreen> createState() => _CollegeScreenState();
}

class _CollegeScreenState extends State<CollegeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(50),
                ),
                color: appColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 42,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 35,
                          right: 20,
                        ),
                        child: Text(
                          'Find your own way',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications_active),
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 35,
                        ),
                        child: Text(
                          'Search in 600 colleges around!',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 18,
                        ),
                        child: SizedBox(
                          height: 45,
                          width: 225,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Search for colleges, schools.....',
                              hintStyle: TextStyle(
                                fontSize: 13,
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 45,
                        width: 45,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(Icons.mic),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(
                    left: 18,
                  ),
                  child: Card(
                    child: SizedBox(
                      height: 20,
                      width: 150,
                      child: Text(
                        'MVSH Engineering College',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Card(
                  child: SizedBox(
                    height: 20,
                    width: 150,
                    child: Text(
                      'GHJK Engineering College',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Card(
                child: Container(
                  height: 130,
                  width: 300,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/college_1.jpg'),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(4, 6, 0, 0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: const CircleBorder(),
                                  padding: const EdgeInsets.all(3)),
                              child: const Icon(
                                Icons.share,
                                size: 19,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(160, 6, 8, 0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(3),
                              ),
                              child: const Icon(
                                Icons.bookmark,
                                size: 19,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 2, 0, 0),
              child: SizedBox(
                width: 300,
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'GHJK Engineering College',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton.icon(onPressed: () {}, icon: const Icon(Icons.star), label: const Text('4.3')),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: appColor,
        selectedItemColor: Colors.white,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
