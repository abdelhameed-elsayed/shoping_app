import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


class AccountSettings extends StatefulWidget {
  @override
  _AccountSettingsState createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Acount Settings",
          style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 18),
        ),
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back_ios_sharp, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Card(
                    elevation: 1,
                    child: ListTile(
                      title: Text(
                        "My Brands",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.7), fontSize: 18),
                      ),
                      leading: 
                        const Icon(
                          Icons.padding,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Card(
                    elevation: 1,
                    child: ListTile(
                      title: Text(
                        "My Information",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.7), fontSize: 18),
                      ),
                      leading:  const Icon(
                          Icons.padding,
                          color: Colors.white,
                          size: 20,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Card(
                    elevation: 1,
                    child: ListTile(
                      title: Text(
                        "Address",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.7), fontSize: 18),
                      ),
                      leading:  const Icon(
                          Icons.map_sharp,
                          color: Colors.white,
                          size: 20,
                        ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Card(
                    elevation: 1,
                    child: ListTile(
                      title: Text(
                        "Credit Cards",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.7), fontSize: 18),
                      ),
                      leading: const Icon(
                          Icons.credit_card,
                          color: Colors.white,
                          size: 20,
                        ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Card(
                    elevation: 1,
                    child: ListTile(
                      title: Text(
                        "Change Password",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.7), fontSize: 18),
                      ),
                      leading: const Icon(
                          Icons.lock,
                          color: Colors.white,
                          size: 20,
                        ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                },
                child: Container(
                  child: Card(
                    elevation: 1,
                    child: ListTile(
                      title: Text(
                        "Exit",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.7), fontSize: 18),
                      ),
                      leading: const Icon(
                          Icons.logout,
                          color: Colors.white,
                          size: 20,
                        ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
