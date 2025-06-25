import 'package:flutter/material.dart';
import 'package:list_view_examples/models/user.dart';

class Ornek4 extends StatelessWidget {
  const Ornek4({super.key});

  @override
  Widget build(BuildContext context) {
    String mainUrl = "resimler";
    User u1 = User(
      name: "Kemal Akarca",
      imgUrl: "$mainUrl/2.png",
      tel: 5462345167,
    );
    User u2 = User(
      name: "Sena Pekdemir",
      imgUrl: "$mainUrl/1.png",
      tel: 5462762516,
    );
    User u3 = User(
      name: "Selin Demiratar",
      imgUrl: "$mainUrl/3.png",
      tel: 5260345167,
    );
    User u4 = User(
      name: "Osman Gümüş",
      imgUrl: "$mainUrl/8.png",
      tel: 5566345167,
    );
    User u5 = User(
      name: "Şermin Uygar",
      imgUrl: "$mainUrl/5.png",
      tel: 535345167,
    );
    List<User> users = [u1, u2, u3, u4, u5];
    return Scaffold(
      appBar: AppBar(title: Text("Rehberim"), backgroundColor: Colors.amber),
      body: MyUserList(users: users),
    );
  }
}

class MyUserList extends StatefulWidget {
  final List<User> users;
  const MyUserList({required this.users});

  @override
  State<MyUserList> createState() => _MyUserListState();
}

class _MyUserListState extends State<MyUserList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.users.length,
      itemBuilder: (context, index) {
        return UserCard(user: widget.users[index]);
      },
    );
  }
}

class UserCard extends StatefulWidget {
  final User user;
  const UserCard({required this.user});

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        alignment: Alignment.center,
        height: 85,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(widget.user.imgUrl),
          ),
          title: Text(widget.user.name),
          subtitle: Text(widget.user.tel.toString()),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
      ),
    );
  }
}