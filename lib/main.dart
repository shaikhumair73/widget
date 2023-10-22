import 'package:flutter/material.dart';
import 'package:whatsapp_ui3/status.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePage extends StatelessWidget{
  List<Map<String,dynamic>> listdata=[
    {
      "name":"umair",
      "subtitle": "hello",
      "color":Colors.white38,
      "img":"assets/icons/avatar.png",
      "time":"12:30 am",
      "unread": "5",
    },
    {
      "name":"umair",
      "subtitle": "hello",
      "color":Colors.white38,
      "img":"assets/icons/avatar.png",
      "time":"12:30 am",
      "unread": "7",
    },
    {
      "name":"umair",
      "subtitle": "hello",
      "color":Colors.white38,
      "img":"assets/icons/bussiness-man.png",
      "time":"12:30 am",
      "unread": "8",
    },
    {
      "name":"umair",
      "subtitle": "hello",
      "color":Colors.white38,
      "img":"assets/icons/man.png",
      "time":"12:30 am",
      "unread": "4",
    },
    {
      "name":"umair",
      "subtitle": "hello",
      "color":Colors.white38,
      "img":"assets/icons/profile.png",
      "time":"12:30 am",
      "unread": "3",
    },
    {
      "name":"umair",
      "subtitle": "hello",
      "color":Colors.white38,
      "img":"assets/icons/man.png",
      "time":"12:30 am",
      "unread": "6",
    },
    {
      "name":"umair",
      "subtitle": "hello",
      "color":Colors.white38,
      "img":"assets/icons/bussiness-man.png",
      "time":"12:30 am",
      "unread": "3",
    },
    {
      "name":"umair",
      "subtitle": "hello",
      "color":Colors.white38,
      "img":"assets/icons/bussiness-man.png",
      "time":"12:30 am",
      "unread": "3",
    },
    {
      "name":"umair",
      "subtitle": "hello",
      "color":Colors.white38,
      "img":"assets/icons/bussiness-man.png",
      "time":"12:30 am",
      "unread": "3",
    },
    {
      "name":"umair",
      "subtitle": "hello",
      "color":Colors.white38,
      "img":"assets/icons/bussiness-man.png",
      "time":"12:30 am",
      "unread": "3",
    },

  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.green,

          title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text("Whatsapp",style: TextStyle(fontSize: 30),),
            ),
            
            SizedBox(
              width: double.infinity,

              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 20,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
               // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.camera_alt,size: 20,),
                  Text("CHATS",style:TextStyle(fontSize: 15),),
                  Text("STATUS",style: TextStyle(fontSize: 15),),
                  Text(("CALLS"),style: TextStyle(fontSize: 15),),
                ],

              ),


            ),

          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8,bottom: 30),
            child: Icon(Icons.camera_alt),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0,bottom: 30),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0,bottom: 30),
            child: Icon(Icons.more_vert),
          ),


        ],
          ),
      body: ListView.builder(
        itemCount:listdata.length ,
        itemBuilder: (context,index){
          return ListTile(
            leading: Image.asset(listdata[index]["img"],width: 30,height: 30,),
            title: Text("${listdata[index]["name"]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text("${listdata[index]["subtitle"]}"),
            trailing: Column(
              children: [
                Text("${listdata[index]["time"]}",style: TextStyle(color: Colors.green),),
                Container(
                  width: 25,
                  height: 25,
                  child: Center(child: Text("${listdata[index]["unread"]}",style:TextStyle(color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                )
              ],
            ),

          );


        }
      ),
    );

  }
}
//
