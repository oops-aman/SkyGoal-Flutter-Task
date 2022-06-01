import 'package:flutter/material.dart';
import 'package:skygoal_task/constants.dart';
import 'package:skygoal_task/screens/filter_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              height: 30,
            ),
            TextButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FilterScreen(),
                ),
              ),
              child: Card(
                child: Container(
                  height: 160,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/college.jpeg'),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                        child: Text(
                          'Top Colleges',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.0,
                        ),
                        child: Text(
                          'Search through thousands of accredited\ncolleges and universities online to find\nthe right one for you. Apply in 3 min, and \nconnect with your future.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            Card(
              child: Container(
                height: 160,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/schools.jpg'),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                      child: Text(
                        'Top Schools',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.0,
                      ),
                      child: Text(
                        'Search for the best school for you just\ngot easier! With your advanced school\nSearch, you can easily filter out the\nschools that are fit for you.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            Card(
              child: Container(
                height: 160,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/exam.jpg'),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                      child: Text(
                        'Exams',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.0,
                      ),
                      child: Text(
                        'Find an end to end information about\nthe exams that are happening in India.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
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

  Widget showDrawer() {
    return Drawer(
      width: double.infinity,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          ListTile(
            title: const Text('Bachelor of Technology'),
            leading: const Icon(
              Icons.radio_button_on,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Bachelor of Architecture'),
            leading: const Icon(
              Icons.radio_button_off_rounded,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Pharmacy'),
            leading: const Icon(
              Icons.radio_button_off_rounded,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Law'),
            leading: const Icon(
              Icons.radio_button_off_rounded,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Management'),
            leading: const Icon(
              Icons.radio_button_off_rounded,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
