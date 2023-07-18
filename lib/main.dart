import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: const Color(0xff453574),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Builder(
              builder: (BuildContext context) {
                return InkWell(
                  child: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 60,
                  ),
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),
            const Text(
              'HOME',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Container(
              width: 55,
              height: 55,
              child: const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/photo_2023-07-19_01-53-03.jpg',
                ),
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xff453574),
        child: Container(
            width: 100,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(45.0),
                  topLeft: Radius.circular(45.0),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Services',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Card(
                              child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                                'assets/images/photo_2023-07-19_01-53-00.jpg'),
                          )),
                          Text('Text')
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                  'assets/images/photo_2023-07-19_01-53-00.jpg'),
                            ),
                          ),
                          Text('Text')
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                              child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                                'assets/images/photo_2023-07-19_01-53-00.jpg'),
                          )),
                          const Text('Text')
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: SvgPicture.asset(
                                  'assets/images/sdfpsdfp.svg',
                                  color: Colors.brown,
                                )),
                          ),
                          Text('Text'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Services',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 340,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(12)),
                            width: double.infinity,
                            height: 145,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 180),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text('Diana Mcminn'),
                                  const Text('Hair Castle'),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('4.7'),
                                      Icon(Icons.stacked_bar_chart)
                                    ],
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: Text('View Profile'))
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          right: 5,
                          top: 60,
                          child: Image(
                            image: AssetImage(
                              ('assets/images/photo_2023-07-19_01-53-14.jpg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
      bottomNavigationBar: Container(
        width: 460,
        height: 80,
        child: Card(
          color: const Color(0xff453574),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 50,
              ),
              Icon(
                Icons.notifications_outlined,
                color: Colors.white,
                size: 50,
              ),
              Icon(
                Icons.calendar_month_outlined,
                color: Colors.white,
                size: 50,
              ),
              Icon(
                Icons.settings_outlined,
                color: Colors.white,
                size: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
