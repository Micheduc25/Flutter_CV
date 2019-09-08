import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            appBar: AppBar(title: Text("My Flutter CV",textAlign: TextAlign.center)),
            body: Container(
                decoration: BoxDecoration(color: Colors.amber),
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: 720,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    decoration: BoxDecoration(color: Colors.blue),
                    child: ListView(children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('./assets/mich.jpg'),
                            radius: 100,
                          ),
                          Text(
                            "Ndjock Michel Junior",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w700),
                          ),
                          _AddrItem(Icons.calendar_today, "21 February 2000"),
                          _AddrItem(Icons.location_on, "Cameroon"),
                          _AddrItem(Icons.home, "Oyomabang, Yaounde"),
                          _AddrItem(Icons.phone, "681757514"),
                          _AddrItem(Icons.email, "ndjockjunior@gmail.com"),
                          _addHeading("Compétences", 150),
                          _genListItem("Critical Thinking Skills"),
                          _genListItem("Algorithm design and problem solving"),
                          _genListItem("Pc, web and mobile development"),
                          Divider(color: Colors.white),
                          _addHeading("Personal Qualities", 100),
                          _genListItem("Good relationships with others"),
                          _genListItem("Always ready to teach learn "),
                          _genListItem("Sense of of leadership  "),
                          _genListItem("Good communication skills "),
                          Divider(color: Colors.white),
                          _addHeading("Languages", 180),
                          _language("French:", 4),
                          _language("English:", 5),
                          _language("German:", 2),
                          Divider(
                            color: Colors.white,
                          ),
                          _addHeading("Interests", 200),
                          _genListItem("Music"),
                          _genListItem("Arts"),
                          _genListItem("Teaching")
                        ],
                      ),
                      Container(
                        decoration:BoxDecoration(color: Colors.white),
                          padding:EdgeInsets.all(10),
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Column(
                            children: <Widget>[
                              Text("Thanks For Visiting My CV", style:TextStyle(fontSize: 30,fontWeight: FontWeight.w700),textAlign: TextAlign.center,)
                            ],


                      )
                      )
                    ]),
                  ),
                ))));
  }
}

Widget _genImage(String name) {
  return Image.asset(
    './assets/${name}.jpg',
    fit: BoxFit.cover,
  );
}

Widget _AddrItem(IconData icon, String value) {
  return Center(
      child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
          padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
          child: Icon(
            icon,
            color: Colors.white,
          )),
      Text(
        value,
        softWrap: true,
        style: TextStyle(fontSize: 16, color: Colors.white),
      )
    ],
  ));
}

Widget _addHeading(String title, double width) {
  return Row(
    children: <Widget>[
      Container(
        padding: EdgeInsets.all(4),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
          decoration: BoxDecoration(color: Colors.white),
          child: SizedBox(
            height: 2,
            width: width,
          ),
        ),
      )
    ],
  );
}

Widget _genListItem(String text) => Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
            padding: EdgeInsets.fromLTRB(10, 0, 4, 0),
            child: Icon(
              Icons.add_circle,
              color: Colors.white,
              size: 20,
            )),
        Text(text, softWrap: true, style: TextStyle(color: Colors.white))
      ],
    );

Widget _language(String name, double rating) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
          padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
          child: Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 18),
          )),
      Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: _genStar(rating))
    ],
  );
}

List<Widget> _genStar(double number) {
  List<Widget> stars = [];
  for (var i = 0; i < 5; i++) {
    if (i < number) {
      stars.add(Icon(
        Icons.star,
        color: Colors.yellow,
      ));
    } else {
      stars.add(Icon(Icons.star_border, color: Colors.white));
    }
  }

  return stars;
}
