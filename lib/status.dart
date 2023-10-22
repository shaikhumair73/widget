import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  List<Map<String,dynamic>> mydata=[
    {
      "name":"michael",
      "subtitle": "hello",
      "color":Colors.white38,
      "img":"assets/icons/avatar.png",
      "time":"6:30 pm",
      "unread": "5",
    },
    {
      "name":"abrar bhai",
      "subtitle": "hello",
      "color":Colors.white38,
      "img":"assets/icons/avatar.png",
      "time":"10:35 am",
      "unread": "7",
    },
    {
      "name":"lavesh bhai",
      "subtitle": "hello",
      "color":Colors.white38,
      "img":"assets/icons/bussiness-man.png",
      "time":"8:40 pm",
      "unread": "8",
    },
    {
      "name":"sonu bhai",
      "subtitle": "hello",
      "color":Colors.white38,
      "img":"assets/icons/man.png",
      "time":"6:30 pm",
      "unread": "4",
    },
    {
      "name":"nikhil bhai",
      "subtitle": "hello",
      "color":Colors.white38,
      "img":"assets/icons/profile.png",
      "time":"12:30 am",
      "unread": "3",
    },
    {
      "name":"Anu",
      "subtitle": "hello",
      "color":Colors.white38,
      "img":"assets/icons/man.png",
      "time":"12:49 am",
      "unread": "6",
    },
    {
      "name":"anil bhai",
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
 // const MyPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(

        children: [
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0,right: 10),
                        child: Text("Whatsapp",style: TextStyle(color: Colors.white,fontSize: 25),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0,left: 180),
                        child: Icon(Icons.camera_alt),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0,left: 10),
                        child: Icon(Icons.search),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0,left: 10),
                        child: Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.contacts),
                      Text("chats",style: TextStyle(fontSize: 17),),
                      Text("updates",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      Text("calls",style: TextStyle(fontSize: 17),),
                    ],

                  )
                ],
                
              ),
           
              color: Colors.green,

            ),
          ),
          SizedBox(
            height: 10,

          ),
          Expanded(
            flex: 3,
            child: Container(


              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text("Status",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(
                    height: 10,

                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    color: Colors.white,
                    child: Row(
                     // mainAxisAlignment: MainAxisAlignment.,
                      children: [
                       Container(
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           color: Colors.green
                           
                         ),
                         child: Padding(
                           padding: const EdgeInsets.only(left: 10.0),
                           child: Image.asset("assets/icons/avatar.png",width: 40,),
                         ),
                         
                       ),
                        
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("My Status",style: TextStyle(fontSize: 20),),
                        ),
                      ],
                    ),

                  ),
                ],
              ),

            ),
          ),
          SizedBox(

            child: Padding(
              padding: const EdgeInsets.only(right: 270.0,top: 10),
              child: Text("recent updates",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            ),


          ),
          Expanded(
            flex: 14,
            child: ListView.builder(
              itemCount: mydata.length,

              itemBuilder: (context,index){
                return ListTile(
                  title: Text(mydata[index]["name"],style: TextStyle(fontSize: 20),),
                  subtitle: Text(mydata[index]["time"]),
                  leading: Container(
                    child: Image.asset(mydata[index]["img"],width: 40,),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green
                    )
                  ),


                );

              },
            ),
          ),
        ],
      ),


    );

   // return const Placeholder();
  }
}
