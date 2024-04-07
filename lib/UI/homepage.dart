import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String FirstName = '';
  String LastName  = '';
  void update_first_name(first_name) {
    FirstName = first_name;
  }
  void update_last_name(last_name) {
    LastName = last_name;
  }
  void click_final_button() {
    if ((FirstName.isNotEmpty) & (LastName.isNotEmpty)){
      _showDialog('Welcome: ' + FirstName + ' ' + LastName, 'next');
    }
    else{
      return _showDialog('Fill your First Name and Last Name', 'okay');
    }
  }

  void update_image(){

  }
  void _showDialog(text_input, state_input) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Meow"),
          content: new Text(text_input),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FloatingActionButton(
              child: new Text(state_input),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(onPressed: update_image,
                icon: CircleAvatar(
                    radius: 80,
                    backgroundImage:AssetImage('images/logo.png')
                )
            ),
            const Text(
              'Set new photo',
            ),
            TextFormField(
              onChanged: (text) {
                update_first_name(text);
              },
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'First Name',
              ),
            ),
            TextFormField(
              onChanged: (text) {
                update_last_name(text);
              },
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Last Name',
              ),
            ),
            const Text('Enter your name and add an optional profile photo'),
            TextFormField(

              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Bio',
              ),
            ),
            const Text('Add a few lines about yourself for your future friends'),
            FloatingActionButton(
              onPressed: click_final_button,
              tooltip: 'Next step to your journey',
              child: Icon(Icons.done),
            ),

          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
