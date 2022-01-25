import 'package:flutter/material.dart';

class BusinessCardScreen extends StatelessWidget {

  BusinessCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Stack')),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Material(color: Colors.teal),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 48, // Image radius
                backgroundImage: AssetImage("assets/images/sloth.jpg"),
              ),
              Text(
                "Raphaël Renaud",
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
              Text(
                "Flutter student",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal.shade100,
                  letterSpacing: 2.5
                ),
              ),
              Container(
                width: 200,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                      '+33 661 252 555',
                      style: TextStyle(
                        color: Colors.grey,
                      )
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                      'raphael@kinoki.fr',
                      style: TextStyle(
                        color: Colors.grey,
                      )
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}