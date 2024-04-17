import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var lang = ['Hindi', 'English', 'Marathi'];
  var originLanguage = 'From';
  var destinationLanguage = 'To';
  var outPut = '';
  TextEditingController langController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber
              ), child: Center(
                child: Text(
                  'WELCOME JOTHAM! ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.black26
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey
                ),
              ),
              onTap: () {
                
              },
            ),
             ListTile(
              title: Text(
                'User Profile',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey
                ),
              ),
              onTap: () {
                
              },
            ),
             ListTile(
              title: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey
                ),
              ),
              onTap: () {
                
              },
            ),
             ListTile(
              title: Text(
                'Help?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey
                ),
              ),
              onTap: () {
                
              },
            ),
             ListTile(
              title: Text(
                'Sign Out',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey
                ),
              ),
              onTap: () {
                
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Language Translator',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700
          )
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton(
                    focusColor: Colors.white,
                    iconDisabledColor: Colors.white,
                    iconEnabledColor: Colors.white,
                    hint: Text(
                      originLanguage,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    dropdownColor: Colors.white,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: lang.map(String dropDow),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}