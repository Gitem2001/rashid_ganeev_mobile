import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ganeev_app_example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Registration'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String FirstName = '';
  String LastName =  '';
  void update_first_name(first_name) {
    FirstName = first_name;
  }
  void update_last_name(last_name) {
    LastName = last_name;
  }
  String click_final_button() {
    return FirstName + ' ' + LastName;
  }

  void update_image(){
    LastName = 'B';
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
