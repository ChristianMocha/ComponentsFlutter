import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)) ,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('soy el titulo de esta tarjeta'),
            subtitle: Text(
                'Aqui estamos con la descripcion que queremos observa para ser mostrados'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text('Cancelar')),
              FlatButton(onPressed: () {}, child: Text('OK')),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://photographylife.com/wp-content/uploads/2016/06/Mass.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'), 
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://photographylife.com/wp-content/uploads/2016/06/Mass.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo indea de q poner')
          )
        ],
      )
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0),
          )
        ]
        // color: Colors.red
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,

      ),
    );
  }
}
