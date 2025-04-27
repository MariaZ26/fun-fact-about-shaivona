import 'package:flutter/material.dart';

void main()
{
  runApp(FunFactsApp());
}

class FunFactsApp extends StatelessWidget {
  const FunFactsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Here Are Some Fun Facts About Shivona',
      home: FunFactsHome(),
    );
  }

}
class FunFactsHome extends StatefulWidget {
  const FunFactsHome ({super.key});

  @override
  State<FunFactsHome> createState() => FunFactsHomeState();


}
class FunFactsHomeState extends State<FunFactsHome> {
  int _counter = 0;
  String _fact = "Tap the button to reveal a fun fact";

  final List <String> _facts = [
"shivona is my neice",
    "I really like her",
    "She has two elder brothers",
    "her 1st elder brother's name is Zavdial Marvic ",
    "And 2nd brother's name is Zack Shailar",
  ];

  void _showFact() {
    setState(()
    {
      _fact = _facts[_counter % _facts.length];
      _counter ++;
    });

  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar:AppBar(
        title: Text("Here Are Some Fun Facts About Shivona",
        ),
        backgroundColor: Colors.purpleAccent,

      ) ,
      body: Center(
        child: Padding(
            padding: EdgeInsets.all(16.0),
           child: Column(
             mainAxisAlignment:MainAxisAlignment.center,
             children: [
               CircleAvatar(
                 radius: 80,
                 backgroundImage: NetworkImage('https://wallpapercave.com/wp/wp4539707.jpg'),

               ),
               SizedBox(height: 28,),
               Text(
               "Hi, its about Shaivona!",
                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
               ),
               SizedBox(height: 20,),
               Text(_fact,
               style: TextStyle(fontSize: 18),
               textAlign: TextAlign.center,
               ),
               SizedBox(height: 20,
               ),
               ElevatedButton(onPressed: _showFact, child:const Text("Show Fun Fact"),
               )
             ],
           ),
        ),
      ),
    );
  }
}






