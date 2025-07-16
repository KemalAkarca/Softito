import 'package:api_alistirma/models/postModel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  late Future<List<PostModel>> postList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    postList = getPostList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        foregroundColor: Colors.black,
        title: Text("Posts"),
      ),
      body: Center(
        child: FutureBuilder<List<PostModel>>(
          future: postList,
          builder: (context, snapShot) {
            if (snapShot.hasData) {
              var myPostList = snapShot.data!;
              return ListView.builder(
                itemCount: myPostList.length,
                itemBuilder: (context, index) {
                  var post = myPostList[index];
                  return ListTile(
                    onTap: () {},
                    title: Text(post.id.toString()),
                    subtitle: Text(post.title),
                    leading: CircleAvatar(
                      radius: 48,
                      child: Text(post.userId.toString()),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  );
                },
              );
            } else if (snapShot.hasError) {
              return Text(snapShot.error.toString());
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  Future<List<PostModel>> getPostList() async {
    try {
      await Future.delayed(Duration(seconds: 1));
      var response = await Dio().get(
        "https://jsonplaceholder.typicode.com/posts",
      );

      List<PostModel> postList = [];

      if (response.statusCode == 200) {
        postList = (response.data as List)
            .map((userMap) => PostModel.fromJson(userMap))
            .toList();
      }
      return postList;
    } on DioException catch (e) {
      return Future.error(e.toString());
    }
  }
}

/*
1)Veri kaynağı bulunur(json)
2)Model oluşturulur. 
  -Veri kaynağındaki ilk süslü parantez dahil alınır. app quicktype sitesine yapıştırılır. null, required ve final seçenekleri seçilir ve model adı yazılır copy code ve model olarak oluşturduğujuz dosyanın içerisine yapıştırılır.

3)Kullanacağınız http request kütüphanesini dahil etmek (dio, http)  

4)Statefull widget olarak bir sayfa oluşturulur. ve build dışında class içinde bir metod oluşturulur.

  a)Metod mutlaka Future olur ve liste döndürür ve async olmak zorundadır.(Future<List<User>>)
  
   Future<List<UserElement>> getUserList() async {}
   b)metodun içindeki işlemler her an hata fırlatabilir çünkü internetten veri çekiyoruz o yüzden try catch kullanılır:

   try {
   çalışan kodlar
   }on DioException catch(e){
    return Future.error(e.toString());
   }

   c)try içine öncelikle veri kaynağından verinin get yapılması gerekiyor ve bu işlem uzun süreceği için başına await yazmalıyız:

      var response = await Dio().get("https://dummyjson.com/users");

   d)Sonra boş bir list oluşturuyoruz. bunu if in dışında oluşturma nedenimiz bu metotta mutlaka her adımda list döndürmek zorunda olduğumuz için metod içinde global yapıyoruz:

   List<UserElement> userList = [];

   e)gelen response verisinin içinde hata kodları var eğer 200 ise başarılı veri gerçekleşmiştir o yüzden şunu yazıyoruz:

     if (response.statusCode == 200) {
     başarılı işlemler
     }
    f)gelen response içinde liste olduğunu kaynaktan bildiğimiz için ona sen listesin diyoruz bunu as keyword ü ile yapıyoruz. 

      userList = (response.data as List)

    g)daha sonra bu bir liste ise bunu userModel sınıfına dönüştürmek için map metodunu kullanmalıyız bu map bize bu verileri döndürecek UserModel.fromJson() metodu da dönüşüm işlemini yapacak:

       userList = (response.data["users"] as List)
            .map((userMap) => UserElement.fromJson(userMap))
            .toList();

    h) sonra bu ifin dışında listeyi return ediyoruz:

            return userList;
    ı)Niye if dışında yaptık çünkü eğer if e girdiyse liste doldu onu döndürecek eğer hata varsa liste boş olacak birşey döndürmeyecek (200 dışındaki bir kod) 

5)Bunun daha performanslı çalışması için futurebuilder a future parametresinde bu metodu vermememiz gerekiyor o yüzden sınıfın en tepesine şu değişkeni atayıp initstate de dolduruyoruz:

late Future<List<UserElement>> userList;

  @override
  void initState() {
    super.initState();
    userList = getUserList(); //
  }

6)Daha sonra futurebuilder da istenen future kısmına bu değişkeni veril build ediyoruz. burda dikkat edilmesi gereken snapshot verisi içinde aslında bizim dondurduğumuz userList var

FutureBuilder<List<UserElement>>(
          future: userList,
          builder: (context, snapshot) {

7)Daha sonra snapshot datasının olup olmadığını kontrol edilerek veriler döndürüyor.          

*/
