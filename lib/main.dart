import 'package:flutter/material.dart';
import 'quotes.dart';

Quotes quotes = Quotes();

void main() => runApp(MotivationPage());

class MotivationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Motivation(),
    );
  }
}

class Motivation extends StatefulWidget {
  @override
  _MotivationState createState() => _MotivationState();
}

class _MotivationState extends State<Motivation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/tiger2.jpg'),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Expanded(
                  flex: 10,
                  child: Text(
                    'WAKE THE FUCK UP!',
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        letterSpacing: 4.0),
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.3,
                      child: Center(
                        child: Container(
                          width: 400.0,
                          height: 150.0,
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          quotes.showQuote(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              letterSpacing: 1.5,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  icon: Icon(
                    Icons.read_more,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  tooltip: 'Go to next quote',
                  onPressed: () {
                    setState(() {
                      quotes.nextQuote();
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
