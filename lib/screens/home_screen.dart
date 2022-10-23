import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hope/config/palette.dart';
import 'package:hope/data/data.dart';
import 'package:hope/models/post_model.dart';
import 'package:hope/widgets/post_container.dart';
import 'package:hope/widgets/widgets.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.white,
            title: Text('CryptoBreakerZD',style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),
            ),
            floating: true,
            actions: [
              CircleButton(
                icon: Icons.attach_money,
                iconSize: 30.0,
                onPressed: () {},
              ),
              CircleButton(
                icon: Icons.send,
                iconSize: 30.0,
                onPressed: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0 ,0.0 , 5.0),
            sliver: SliverToBoxAdapter(child: Currencies(types:types,),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index){
              final Post post =posts[index];
              return PostContainer(post :post);
          },
              childCount: posts.length,
            ),
          )
        ],
      ),
    );
  }
}
