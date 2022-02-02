import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  static const String _title = 'Radio buttons';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: MyStatefulWidget(),
      ),
    );
  }
}

enum card { Visa, PayPal }

class MyStatefulWidget extends StatefulWidget {
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  card _card = card.Visa;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: Text(
              "Card Type",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  title: const Text('Visa'),
                  leading: Radio<card>(
                    value: card.Visa,
                    groupValue: _card,
                    onChanged: (card? value) {
                      setState(() {
                        _card = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('PayPal'),
                  leading: Radio<card>(
                    value: card.PayPal,
                    groupValue: _card,
                    onChanged: (card? value) {
                      setState(
                        () {
                          _card = value!;
                        },
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: "Card Number*",
                          floatingLabelStyle: TextStyle(
                            color: Colors.red,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          fillColor: Colors.black12,
                          filled: true,
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // height: 100,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Expiration Month*",
                            floatingLabelStyle: TextStyle(
                              color: Colors.red,
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            fillColor: Colors.black12,
                            filled: true,
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Expiration Year*",
                            floatingLabelStyle: TextStyle(
                              color: Colors.red,
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            fillColor: Colors.black12,
                            filled: true,
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            width: 150,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "CVN*",
                      floatingLabelStyle: TextStyle(
                        color: Colors.red,
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      fillColor: Colors.black12,
                      filled: true,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: Text(
              "Your Order",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: "Total amount*",
                    floatingLabelStyle: TextStyle(
                      color: Colors.red,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    fillColor: Colors.black12,
                    filled: true,
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  color: Colors.grey,
                  onPressed: () {},
                  child: Text(
                    "Cancel",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                MaterialButton(
                  color: Colors.green,
                  onPressed: () {},
                  child: Text(
                    "Pay",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
