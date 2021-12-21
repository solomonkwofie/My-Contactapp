import 'package:contactapp/Profile_view.dart';

import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  Contacts({Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title:const Text(
            "My Contacts",
            style: TextStyle(color: Colors.black),
          ),
          actions:const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1542123000-53b05f943818?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
              ),
            )
          ],
          bottom: PreferredSize(
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    prefixIcon:const Icon(Icons.search_rounded),
                    hintText: "Search by name or number"),
              ),
              preferredSize: const Size.fromHeight(90)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
              controller: _scrollController,
              shrinkWrap: true,
              children:const  [
                Text("Recents"),
                NewWidget(
                  image: "https://images.unsplash.com/photo-1599834562135-b6fc90e642ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                  name: "De'Don",
                  number: "+233 555 134 785",
                ),
                Divider(
                  indent: 25,
                  thickness: 1.2,
                ),
                NewWidget(
                  image: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                  name: "Emma",
                  number: "+233 50 234 560",
                ),
                Divider(
                  indent: 25,
                  thickness: 1.2,
                ),
                NewWidget(
                  image: "https://images.unsplash.com/photo-1516914943479-89db7d9ae7f2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                  name: "keen",
                  number: "+233 054 174 456 ",
                ),
                Text("Contacts"),
                NewWidget(
                   image: "https://media.istockphoto.com/photos/closeup-studio-portrait-of-a-40-year-old-blonde-woman-picture-id1185751950?s=2048x2048",
                  name: "Yaaba",
                  number: "+233 546 123 567",
                ),
                Divider(
                  indent: 25,
                  thickness: 1.2,
                ),
                NewWidget(
                  image: "https://media.istockphoto.com/photos/one-beautiful-woman-looking-at-the-camera-in-profile-picture-id1303539316?s=2048x2048",
                  name: "Mommy",
                  number: "+233 544 896 678",
                ),
                Divider(
                  indent: 25,
                  thickness: 1.2,
                ),
                NewWidget(
                   image: "https://media.istockphoto.com/photos/close-up-profile-of-handsome-young-black-man-against-isolated-white-picture-id1142003969?b=1&k=20&m=1142003969&s=170667a&w=0&h=iBN0L6Q9L5oVWQixH0-zP2fdzRjcCg8zjpVBJbGoVH0=",
                  name: "Amos",
                  number: "+233 202 693 914",
                ),
                Divider(
                  indent: 25,
                  thickness: 1.2,
                ),
                  NewWidget(
                   image: "https://media.istockphoto.com/photos/millennial-male-team-leader-organize-virtual-workshop-with-employees-picture-id1300972574?b=1&k=20&m=1300972574&s=170667a&w=0&h=2nBGC7tr0kWIU8zRQ3dMg-C5JLo9H2sNUuDjQ5mlYfo=",
                  name: "Francis",
                  number: "+233 241 167 343",
                ),
                Divider(
                  indent: 25,
                  thickness: 1.2,
                ),
                NewWidget(
                   image: "https://media.istockphoto.com/photos/headshot-portrait-of-successful-indian-businesswoman-smile-looks-at-picture-id1256907186?s=2048x2048",
                  name: "Ruth",
                  number: "+233 054 000 900",
                ),
              ])),
        floatingActionButton: FloatingActionButton(onPressed:(){ Navigator.push(context,
         MaterialPageRoute(builder:(context)=> const Profile()));
        },
        child: Icon(Icons.add),
        )
        );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.image,
    required this.name,
    required this.number
  }) : super(key: key);
  final String image;
  final String name;
  final String number;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(image),
        ),
        title: Text(name),
        subtitle: Text(number),
        trailing:const Icon(Icons.more_horiz));
  }
}
