import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      home: MyHomePage(title: 'Instagram'),
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
  List<String> post = [
    "https://images.unsplash.com/photo-1596176375062-9baebbd5a6b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1596240019118-feefa72db0d7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=914&q=80",
    "https://images.unsplash.com/photo-1572854874971-d16697d62e24?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEwMDE0M30&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1572854875120-d65c8b0a6fbe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1595971138828-ec548f80982a?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1596276553750-6ba3a3b3b627?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  ];

  List<String> avatars = [
    "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
    "https://images.unsplash.com/photo-1586297135537-94bc9ba060aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80",
    "https://images.unsplash.com/photo-1537815749002-de6a533c64db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=845&q=80",
    "https://images.unsplash.com/photo-1564923630403-2284b87c0041?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80",
    "https://images.unsplash.com/photo-1567336273898-ebbf9eb3c3bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=786&q=80",
  ];

  Widget instaPost(String avatar, String username, String post) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(avatar),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(username)
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Image.network(post),
          SizedBox(
            height: 0.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 0.0,
            ),
            child: (Container(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ButtonBar(
                    children: <Widget>[
                      MaterialButton(
                        onPressed: () {},
                        child: IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: IconButton(
                          icon: Icon(
                            Icons.mode_comment,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: IconButton(
                          icon: Icon(
                            Icons.send,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: IconButton(
                          icon: Icon(
                            Icons.bookmark_border,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.camera_alt),
              color: Colors.black,
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 110,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 12.0,
                      ),
                      child: Text(
                        'Stories',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                    ),
                    Container(
                      height: 60.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: CircleAvatar(
                              radius: 40.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(avatars[0]),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: CircleAvatar(
                              radius: 40.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(avatars[1]),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: CircleAvatar(
                              radius: 40.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(avatars[2]),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: CircleAvatar(
                              radius: 40.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(avatars[3]),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: CircleAvatar(
                              radius: 40.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(avatars[4]),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: CircleAvatar(
                              radius: 40.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(avatars[5]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    instaPost(avatars[0], "username", post[0]),
                    instaPost(avatars[1], "username", post[1]),
                    instaPost(avatars[2], "username", post[2]),
                    instaPost(avatars[3], "username", post[3]),
                    instaPost(avatars[4], "username", post[4]),
                    instaPost(avatars[5], "username", post[5]),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: (Container(
            height: 70,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(
                      Icons.camera_alt,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
