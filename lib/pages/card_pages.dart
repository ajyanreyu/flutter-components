import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTypeOne(),
          SizedBox(height: 30.0),
          _cardTypeTwo()
        ],
      ),
    );
  }

  Widget _cardTypeOne() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('I am a title'),
            subtitle: Text('This is a subtitle'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('OK'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTypeTwo() {
    return Card(
        elevation: 10.0,
        clipBehavior: Clip.antiAlias,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            FadeInImage(
                image: NetworkImage(
                    'https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
                placeholder: AssetImage('assets/images/jar-loading.gif'),
                fadeInDuration: Duration(milliseconds: 200),
                height: 300.0,
                fit: BoxFit.cover),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Text('this is a text my friend'))
          ],
        ));
  }
}
