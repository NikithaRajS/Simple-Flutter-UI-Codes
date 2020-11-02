import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget buildappbar() {
    return AppBar(
      title: FlutterLogo(colors: Colors.green, size: 25.0),
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back),
        color: Colors.grey,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.grey,
        )
      ],
    );
  }

  Widget buildCard(String name,String sub,String status,String url) {
    return Card(
      margin: EdgeInsets.only(left: 13,right: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 7.0,
      child: Column(
        children: [
          SizedBox(
            height: 13,
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: NetworkImage(
                        url))),
          ),
          SizedBox(
            height: 13,
          ),
          Text(name, style: TextStyle(fontSize: 15)),
          SizedBox(
            height: 13,
          ),
          Text("Subject :"+ sub),
          SizedBox(
            height: 29,
          ),
          Container(
            width: 200,
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: status=='Available' ? Colors.green:Colors.grey,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Text(
              status,
              style: TextStyle(
                fontSize: 20,
              ),
            ),

          )
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildappbar(),
        body: ListView(
          shrinkWrap: false,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25.0),
                    child: Text(
                      'Get Coaching',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25.0),
                    ),
                  )
                ],
              ),
            ),
            Container(
              //margin is used to enter empty space around the container,
              margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2.0)]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(25.0, 10.0, 5.0, 10.0),
                        child: Text('YOUR CREDITS'),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(25.0, 35.0, 5.0, 10.0),
                        child: Text(
                          '206',
                          style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 70.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Buy More Now',
                      style: TextStyle(color: Colors.green, fontSize: 20.0),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('MY COACHES',
                      style: TextStyle(color: Colors.green, fontSize: 15.0)),
                  Text('VIEW PAST SESSIONS',
                      style: TextStyle(color: Colors.green, fontSize: 15.0))
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              shrinkWrap: true,
              children: [
                buildCard('Jason','Maths','Available','https://uifaces.co/our-content/donated/d5f5cc2a8835d69d6dde70875a793ce6.jpeg'),
                buildCard('Natalie','Biology','Away','https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ3ODE3Mjg1NV5BMl5BanBnXkFtZTcwNzA4ODcxNA@@._V1_UY256_CR9,0,172,256_AL_.jpg'),
                buildCard('Vladimir','Computer Science','Available','https://uifaces.co/our-content/donated/kbW-3WU0.jpeg'),
                buildCard('Dianne','Sociology','Available','https://uifaces.co/our-content/donated/9vLfhK9h.jpg')
              ],
            )
          ],
        ),
      ),
    );
  }
}
