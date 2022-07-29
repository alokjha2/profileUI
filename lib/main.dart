import 'package:flutter/material.dart';

import 'package:simple_animations/simple_animations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final detail = "Hey! You are amazing, Alok jha aka Peckish Human is the creator of this design/ profile page. The reason behind this design is that he took the challenge for creating 30-60 designs in next 30 days and fill up his library with it. He can create design like whatsapp and youtube , those simple designs but he wanted to learn how to create designs like spotify , means neon designs so he come up with this profile page designs. Yesterday he created design of chat app, now design of profile page and next time with plant app or money management app or something similar like this. You can review this design to him at alokj4702@gmail.com, he will happy to see your review and he has a software called chirkut, if you want to support him then go & checkout chirkut";  
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   leading: 
        // title: Text(""),
      // ),
      body: Stack(children: [
        CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: Icon(Icons.arrow_back_ios_new_sharp, ),
              expandedHeight: 450,
              backgroundColor: Colors.black,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/myimage.jpg"),
                fit: BoxFit.cover,
                )),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
            begin: Alignment.bottomRight,
                      colors: [
                  Colors.black,
                  Colors.black.withOpacity(.3)
                ]
                )
                ),
                child: Padding(padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Alok Jha", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),
                    // SizedBox(height: 10,),
                    Row(children: [
                      Text("60 Videos", style: TextStyle(fontSize: 16, color: Colors.grey),),
                      // const Spacer(flex: 2,),
                    SizedBox(width: 50,),
                      Text("340k followers", style: TextStyle(fontSize: 16, color: Colors.grey),),

                    ],)
                  ],
                ),
                ),
                ),
              )),
            ),
            SliverList(delegate: SliverChildListDelegate([
              Padding(padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(detail, style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 40,),
                  Text("Born", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                  // SizedBox(height: 4,),
                  Text("March, 26th 2005, Meerut, India", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500,),),

                  SizedBox(height: 20,),
                  Text("Nationality", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                  // SizedBox(height: 10,),
                  Text("India", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500,),),
                  SizedBox(height: 50,),
              ]),
              )
            ]))
          ],
        ),

        Positioned.fill(
          bottom: 15,
          child: Container(child: Align(alignment: Alignment.bottomCenter,child: Container(margin: EdgeInsets.symmetric(horizontal: 30),height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.lightBlue),child: Align(child: Text("Follow", style: TextStyle(color: Colors.white),)),),))
     ) ]),
    );
  }
}
