import 'package:flutter/material.dart';

void main() {
  runApp(const Elearning());
}

class Elearning extends StatelessWidget {
  const Elearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String img =
      'https://miro.medium.com/max/1200/1*7kgnb2JKfA0hZ896X8W2Tw.png';
  List txt = [
    'Merah',
    'Biru',
    'Kuning',
  ];
  List clr = [
    Colors.red,
    Colors.blue,
    Colors.yellow,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.red,
        ),
        actions: [
          Icon(
            Icons.flag,
            color: Colors.red,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'English',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.person,
              ),
            ),
            title: Text(
              'Nandar Rustandar',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text('191011450423'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 18),
            child: Text(
              'Welcome back!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 200,
            margin: EdgeInsets.symmetric(horizontal: 18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: .2,
                  blurRadius: 50,
                  offset: Offset(0, 10), // changes position of shadow
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Image.network(img),
                  ),
                  right: 0,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Intermediate'),
                      Spacer(),
                      Text(
                        'Todays Challange',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'German Meals',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Text('Take this lesson to earn a new milestone'),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(
              'Your courses',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: 160,
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  width: 160,
                  height: 160,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: clr[index],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      txt[index],
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}