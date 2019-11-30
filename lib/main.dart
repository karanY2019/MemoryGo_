import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  Future navigateToMyMap(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyMap()));
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MemoryGO'),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(

          children: <Widget>[
            Container(
              color: Colors.grey,
              width: 3500.0,
              height: 200.0,
              child: Image.asset(
                'assets/main.jpg',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 30.0),
            ClipOval(
              child: Image.asset(
                'assets/profile.jpg',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 30.0),
            //Text('Explore '),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
              textColor: Colors.white,
              color: Colors.deepPurple,
                 child: Text('My Map'),
                        onPressed: () {
                        navigateToMyMap(context);
                // TODO
              },
            ),

                SizedBox(width: 40.0),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.purple[200],
                  child: Text('Friends'),
                     onPressed: () {
                      navigateToMyMap(context);
                    // TODO
                  },
                )
          ],
      ),
    ],
    ),
    ),
    );
  }
}

class SubPage extends StatelessWidget {
  Future navigateToNotification(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Notification()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Food Map'),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.red,
              width: 450.0,
              height: 450.0,
              child: Image.asset(
                'assets/italy.jpg',

                fit: BoxFit.fill,
              ),
            ),

            Text('Rating : *****  /Description....'),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.redAccent[200],
              child: Text('Share'),
              onPressed: () {
                navigateToNotification(context);
                //Navigator.pop(context)// TODO
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //onPressed: (),
        //tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comm
    );
  }
}
class MyMap extends StatefulWidget{
  Future navigateSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
  }
  @override
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {

  int _selectedIndex = 0;
  List<IconData> _icons =[
    FontAwesomeIcons.plane,
    FontAwesomeIcons.cocktail,
    FontAwesomeIcons.church,
  ];
  Widget _buildIcon(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedIndex = index;
        });
        print(_selectedIndex);
      },
          child: Container(


        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).accentColor
              : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(_icons[index],size: 25.0,
          color:_selectedIndex == index
            ? Theme.of(context).highlightColor
              : Color(0xFFB4C1C4) ,
        ),
          ),
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('My Memory Map'),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'Explore',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _buildIcon(0),
                _buildIcon(1),
                _buildIcon(2),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('Travel'),
                Text('Food'),
                Text('Events'),
              ],
            ),
            SizedBox(height: 20.0),
            Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Top ratings',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                    ),
                    Text(
                      'See ALL',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.0,
                      ),
                    ),

                  ],
            ),
                ),
            ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    color: Colors.red,
                    width: 120.0,
                    height: 120.0,
                    child: Image.asset(
                      'assets/image_01.png',
                      fit: BoxFit.fill,
                    ),
                ),
                Container(
                  color: Colors.grey,
                  width: 120.0,
                  height: 120.0,
                  child: Image.asset(
                    'assets/image_02.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  color: Colors.red,
                  width: 120.0,
                  height: 120.0,
                  child: Image.asset(
                    'assets/image_03.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'Recent',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              color: Colors.red,
              width: 200.0,
              height: 120.0,
              child: Image.asset(
                'assets/fuji.jpg',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 15.0),
            FloatingActionButton(
                elevation: 0.0,
                child: new Icon(Icons.add_a_photo),
                backgroundColor: new Color(0xFFE57373),
                onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SubPage()),
    );}     ),
          ],
    ),
      ),
      );
  }
}

class Notification extends StatelessWidget {
  Future navigateToChat(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Chat()));}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications: '),
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //SizedBox(height: 40.0),
            RaisedButton(
              textColor: Colors.black87,
              color: Colors.white70,
              child: Row(
                children: <Widget>[
              ClipOval(
              child: Image.asset(
                'assets/sharifi.jpg',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
              ),
                  SizedBox(width: 20.0),
              Text('Ariana just explored your Peru Food Map ! '),
          ],),
              onPressed: () {
                navigateToChat(context);
              },
            ),
            RaisedButton(
              textColor: Colors.black87,
              color: Colors.white70,
              child: Row(
                children: <Widget>[
                  ClipOval(
                    child: Image.asset(
                      'assets/hsu.jpg',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Text('Can someone share a food map in NYC ? '),
                ],),
              onPressed: () {
                //navigateToMyMap(context);
                // TODO
              },
            ),
            RaisedButton(
              textColor: Colors.black87,
              color: Colors.white70,
              child: Row(
                children: <Widget>[
                  ClipOval(
                    child: Image.asset(
                      'assets/lin.jpg',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Text('Starving in SOHO - what is good around? '),
                ],),
              onPressed: () {
                //navigateToMyMap(context);
                // TODO
              },
            ),
          ],
            ),
        ),
    );
  }
}
class Chat extends StatelessWidget {
  //Future navigateToChat(context) async {
    //Navigator.push(context, MaterialPageRoute(builder: (context) => Chat()));}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Memory Explored by Ariana:  '),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: 40.0),
            Text('Ariana went to Maya based on your map suggestion'),
            Text('Address: Lima, Peru '),
            SizedBox(height: 20),
            Image.asset(
              'assets/f1.png',
              height: 300,
              width: 300,
              fit: BoxFit.cover,
            ),
                ],),
            ),

      );
  }
}