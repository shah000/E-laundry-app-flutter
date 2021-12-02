import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eLaundry',
      
     
      home: Center(child: MyHomePage(title: 'Welcome to eLaundry')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  


  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
      
        title: Center(child: Text(widget.title,style: TextStyle(color: Colors.lightBlue, fontSize:18),)),
      ),

      body: Center(
        child: Row(
          children: [
            Container(
              width: 90,
              height: 100,
              child: Card(
                
                child: Column(
                children: [
                  Text("data")
                ],
              ),),
            )
          ],
        ),
      
      
      
      ),
       bottomNavigationBar: BottomNavigationBar(
         backgroundColor: Colors.white,
         
       currentIndex: 0, // this will be set when a new tab is tapped
       items: [
         BottomNavigationBarItem(
          
           icon: Icon(Icons.home,color: Colors.black,),
           label: 'home',
         ),
         BottomNavigationBarItem(
          
           icon: new Icon(Icons.notifications,color: Colors.black,),
           label: 'blueGrey',
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.code,color: Colors.black,),
            label: 'blueGrey',
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person_add_rounded,color: Colors.black,),
           label: 'blueGrey',
         ),
         
         
       ],
     ),

      
    );
  }
}
