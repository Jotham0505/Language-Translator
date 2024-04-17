import 'package:flutter/material.dart';
import 'package:translator/translator.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var lang = ['Hindi', 'English', 'Arabic', 'Tamil', 'Malayalam', 'Kannada', 'Telugu',];
  var originLanguage = 'From';
  var destinationLanguage = 'To';
  var outPut = '';
  TextEditingController langController = TextEditingController();

  void Translate(String src, String dest, String input)async{
    GoogleTranslator translator = new GoogleTranslator();
    var translation = await translator.translate(input,from: src,to: dest);
    setState(() {
      outPut = translation.text.toString();
    });

    if (src == '--') {
      setState(() {
        outPut = 'Failed to translate';
      });
    }else if(dest == '--'){
      outPut = 'Failed to translate';
    }
  }

  String getLanguageCode(String language){
    if (language == 'English') {
      return 'en';
    }else if(language == 'Hindi'){
      return 'hi';
    }else if(language == 'Arabic'){
      return 'ar';
    }else if(language == 'Tamil'){
      return 'ta';
    }else if(language == 'Malayalam'){
      return 'ma';
    }else if(language == 'Kannada'){
      return 'ka';
    }else if(language == 'Telugu'){
      return 'te';
    }
    return '--';
  }

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
                    items: lang.map((String dropDownStringItem) {
                      return DropdownMenuItem(child: Text(dropDownStringItem),value: dropDownStringItem,);
                    }).toList(),
                    onChanged: (String? value){
                      setState(() {
                        originLanguage = value!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.arrow_right_alt_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  DropdownButton(
                    focusColor: Colors.white,
                    iconDisabledColor: Colors.white,
                    iconEnabledColor: Colors.white,
                    hint: Text(
                      destinationLanguage,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    dropdownColor: Colors.white,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: lang.map((String dropDownStringItem) {
                      return DropdownMenuItem(child: Text(dropDownStringItem),value: dropDownStringItem,);
                    }).toList(),
                    onChanged: (String? value){
                      setState(() {
                        destinationLanguage = value!;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextFormField(
                  cursorColor: Colors.white,
                  autofocus: false,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Please enter the Text',
                    labelStyle: TextStyle(fontSize: 15,color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                      enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1),
                    ),
                    errorStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 15
                    )
                  ),
                  controller: langController,
                  validator: (value) {
                    if (value == null || value.isNotEmpty) {
                      return 'Please re-enter the text again';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: ElevatedButton(
                  onPressed: () {
                    Translate(getLanguageCode(originLanguage), getLanguageCode(destinationLanguage), langController.text.toString());
                  },
                  child: Text('Translate',),
                  style: ElevatedButton.styleFrom(primary: Color(0xff2b3c5a)),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                height: 180,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white, 
                    style: BorderStyle.solid,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent
                ),
                child: Center(
                  child: Text(
                    '\n$outPut',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}