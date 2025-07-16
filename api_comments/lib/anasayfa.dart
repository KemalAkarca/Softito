import 'package:api_comments/model/comment_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  late Future<List<CommentModel>> commentList;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    commentList=getCommentList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: FutureBuilder<List<CommentModel>>(future: commentList, builder: (context,snapshot){
          if(snapshot.hasData){
            var myCommentList=snapshot.data!;
            return ListView.builder(
              itemCount: myCommentList.length,
              itemBuilder: (context,index){
                  var comm=myCommentList[index];
                  return ListTile(
                    title: Text(comm.comments),
                  );
              });
          }
        }),
      ),
    );
  }

  Future<List<CommentModel>> getCommentList() async{
    
    try{var response  = await Dio().get("https://dummyjson.com/comments");

    List<CommentModel> commentList=[]; 

    if(response.statusCode==200){
      commentList =(response.data as List).map((userMap)=>CommentModel.fromJson(userMap)).toList();
    }
    return commentList;
    } on DioException catch(e){
       return Future.error(e.toString());
    }
    
    
  }
}