
// ignore_for_file: prefer_const_constructors

   import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.lightBlue.shade50,
    appBar: AppBar(iconTheme: const IconThemeData(color: Colors.black),backgroundColor: Colors.white,
    title: Padding(
      padding: const EdgeInsets.only(left:60.0),
      child: Text("Profile",style: TextStyle(color: Colors.black),),
    ),
    actions: [Icon(Icons.more_vert,color: Colors.black,)],
    bottom: PreferredSize(child: Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Column(children: [
        CircleAvatar(backgroundImage: NetworkImage("https://scontent.facc1-1.fna.fbcdn.net/v/t39.30808-6/263115946_100890772449027_7491287731189414412_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeECBSEKydsiMWZAHk3V2h7OOlUEGWJkrXM6VQQZYmStc3IZwbQoxkBHgM3eK2UqKXt0FprschxrFp1ILc80F15F&_nc_ohc=Yfgq__RfEr4AX-6kIyI&_nc_ht=scontent.facc1-1.fna&oh=00_AT-gnrM2QGUhisK_MvWY30VbVBOMPciWpXnXlHHFqGX7kA&oe=61C6240B"),
        radius: 50,),SizedBox(height: 12,),
        Text("Solomon Kwofie",style: TextStyle(fontWeight: FontWeight.bold),),
        Text("Agona-Ahata-West, Ghana",style: TextStyle(color: Colors.yellow),)

      ],),
    ),
     preferredSize: Size.fromHeight(200)),),
    body: ListView(children: [
      Container(child:  ListTile(title: Text("Mobile"),
      subtitle: const Text("+233 557 169 650",),
      trailing: Text("Email:solomonkwofie9338@gmail.com"),
      
      ),)
    ],),
      
    );
  }
}