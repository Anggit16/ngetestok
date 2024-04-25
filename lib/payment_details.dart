import 'package:flutter/material.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({super.key});

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Payment Detail'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            width: 400,
            height: 460,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey
                      .withOpacity(0.5), //warna dan opasitas bayangan
                  spreadRadius: 5, //radius penyebaran bayangan
                  blurRadius: 7, //radius blur bayangan
                  offset: Offset(0, 3) //posisi bayangan (horizontal/vertikal)
                  )
            ]),
            child: Column(
              children: [
                Text(
                  'PAYMENT DETAIL',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 104, 186, 253)),
                    labelText: 'NAME ON CARD',
                    hintText: 'Name',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey, width: double.infinity)),
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 104, 186, 253)),
                    labelText: 'CARD NUMBER',
                    hintText: 'Card Number',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2.0)),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 104, 186, 253)),
                          labelText: 'CW',
                          hintText: 'Cw',
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.0)),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 104, 186, 253)),
                          labelText: 'VALID TROUGHT',
                          hintText: 'Valid Trought',
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
