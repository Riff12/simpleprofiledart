import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController names = TextEditingController();
    TextEditingController username = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Stack(children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 80.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Color(0xffeae2b7),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Column(
                children: <Widget>[
                  Container(
                    padding:
                        EdgeInsets.only(top: 80.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          controller: names,
                          decoration: InputDecoration(
                            labelText: 'Nama',
                            prefixIcon: Icon(Icons.person),
                            border: myInputBorder(),
                            enabledBorder: myInputBorder(),
                            focusedBorder: myInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          controller: username,
                          decoration: InputDecoration(
                            labelText: 'username',
                            prefixIcon: Icon(Icons.people),
                            border: myInputBorder(),
                            enabledBorder: myInputBorder(),
                            focusedBorder: myInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          controller: email,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.email),
                            border: myInputBorder(),
                            enabledBorder: myInputBorder(),
                            focusedBorder: myInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          controller: password,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.password),
                            border: myInputBorder(),
                            enabledBorder: myInputBorder(),
                            focusedBorder: myInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Update'),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff003049),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25.0, vertical: 20.0),
                              textStyle: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Stack(children: <Widget>[
                ClipOval(
                  child: Image.asset(
                    'images/aku.png',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 15.5,
                  child: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey, shape: BoxShape.circle),
                      child: Icon(
                        Icons.edit,
                        size: 30.0,
                      )),
                )
              ]),
            ),
          ]),
        ),
      ),
    );
  }

  OutlineInputBorder myInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Color(0xfffcbf49),
          width: 3,
        ));
  }
}
