import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:project2/halaman.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue[200]),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
//coba listview MyArticle
  Container MyArticles(String imageVal, String heading, String subHeading) {
    return Container(
      width: 160.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.network(imageVal),
            ListTile(
              title: Text(heading),
              subtitle: Text(subHeading),
            ),
          ],
        ),
      ),
    );
  }

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 120,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  title: Text('MountainApp',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  background: Image.network(
                    'https://steamcdn-a.akamaihd.net/steam/apps/281640/ss_ad21ad36e682d8f7cdfe95440ec64aaf0ffae092.1920x1080.jpg?t=1570040762',
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: Container(
          child: new ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              new Container(
                  padding: EdgeInsets.only(
                      left: 0.0, right: .0, top: 15.0, bottom: 10.0),
                  child: new Column(
                    children: <Widget>[
                      iconAtas(),
                      iconAtas2(),
                    ],
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                              child: new Container(
                    padding: EdgeInsets.only(
                        left: 0.0, right: .0, top: 15.0, bottom: 10.0),
                    child: new Row(
                      children: <Widget>[
                        

                        MyArticles(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTSAf6ErNfq-tcGjPN5P61KeJ215Tgh9wYR1UPQVBHChWs4bNVO",
                            "heading",
                            "subHeading"),
                        MyArticles(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTSAf6ErNfq-tcGjPN5P61KeJ215Tgh9wYR1UPQVBHChWs4bNVO",
                            "heading",
                            "subHeading"),
                            MyArticles(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTSAf6ErNfq-tcGjPN5P61KeJ215Tgh9wYR1UPQVBHChWs4bNVO",
                            "heading",
                            "subHeading"),
                            MyArticles(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTSAf6ErNfq-tcGjPN5P61KeJ215Tgh9wYR1UPQVBHChWs4bNVO",
                            "heading",
                            "subHeading")
                        //cobaList(),

                        //carous(),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget iconAtas() {
    return new Container(
      padding: EdgeInsets.only(left: 0.0, right: .0, top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              ClipOval(
                child: Material(
                  color: Colors.blue[100], // button color
                  child: InkWell(
                    splashColor: Colors.red, // inkwell color
                    child: SizedBox(
                        width: 40, height: 40, child: Icon(Icons.menu)),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HalK1()));
                    },
                  ),
                ),
              ),
              Text("K1"),
            ],
          ),
          Column(
            children: [
              ClipOval(
                child: Material(
                  color: Colors.blue[100], // button color
                  child: InkWell(
                    splashColor: Colors.red, // inkwell color
                    child: SizedBox(
                        width: 40, height: 40, child: Icon(Icons.access_alarm)),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HalK2()));
                    },
                  ),
                ),
              ),
              Text("K2"),
            ],
          ),
          Column(
            children: [
              ClipOval(
                child: Material(
                  color: Colors.blue[100], // button color
                  child: InkWell(
                    splashColor: Colors.red, // inkwell color
                    child: SizedBox(
                        width: 40, height: 40, child: Icon(Icons.access_time)),
                    onTap: () {},
                  ),
                ),
              ),
              Text("K3"),
            ],
          ),
          Column(
            children: [
              ClipOval(
                child: Material(
                  color: Colors.blue[100], // button color
                  child: InkWell(
                    splashColor: Colors.red, // inkwell color
                    child: SizedBox(
                        width: 40, height: 40, child: Icon(Icons.add_location)),
                    onTap: () {},
                  ),
                ),
              ),
              Text("K4"),
            ],
          ),
          Column(
            children: [
              ClipOval(
                child: Material(
                  color: Colors.blue[100], // button color
                  child: InkWell(
                    splashColor: Colors.red, // inkwell color
                    child: SizedBox(
                        width: 40, height: 40, child: Icon(Icons.add_box)),
                    onTap: () {},
                  ),
                ),
              ),
              Text("K5"),
            ],
          ),
        ],
      ),
    );
  }

  Widget iconAtas2() {
    return new Container(
      padding: EdgeInsets.only(left: 0.0, right: .0, top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              ClipOval(
                child: Material(
                  color: Colors.blue[100], // button color
                  child: InkWell(
                    splashColor: Colors.red, // inkwell color
                    child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Icon(Icons.add_to_home_screen)),
                    onTap: () {},
                  ),
                ),
              ),
              Text("K6"),
            ],
          ),
          Column(
            children: [
              ClipOval(
                child: Material(
                  color: Colors.blue[100], // button color
                  child: InkWell(
                    splashColor: Colors.red, // inkwell color
                    child: SizedBox(
                        width: 40, height: 40, child: Icon(Icons.adjust)),
                    onTap: () {},
                  ),
                ),
              ),
              Text("K7"),
            ],
          ),
          Column(
            children: [
              ClipOval(
                child: Material(
                  color: Colors.blue[100], // button color
                  child: InkWell(
                    splashColor: Colors.red, // inkwell color
                    child: SizedBox(
                        width: 40, height: 40, child: Icon(Icons.album)),
                    onTap: () {},
                  ),
                ),
              ),
              Text("K8"),
            ],
          ),
          Column(
            children: [
              ClipOval(
                child: Material(
                  color: Colors.blue[100], // button color
                  child: InkWell(
                    splashColor: Colors.red, // inkwell color
                    child: SizedBox(
                        width: 40, height: 40, child: Icon(Icons.archive)),
                    onTap: () {},
                  ),
                ),
              ),
              Text("K9"),
            ],
          ),
          Column(
            children: [
              ClipOval(
                child: Material(
                  color: Colors.blue[100], // button color
                  child: InkWell(
                    splashColor: Colors.red, // inkwell color
                    child: SizedBox(
                        width: 40, height: 40, child: Icon(Icons.audiotrack)),
                    onTap: () {},
                  ),
                ),
              ),
              Text("K10"),
            ],
          ),
        ],
      ),
    );
  }
}
