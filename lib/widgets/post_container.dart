
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hope/config/palette.dart';
import 'package:hope/models/post_model.dart';
import 'package:hope/widgets/currencies_avatar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PostContainer extends StatelessWidget {
  const PostContainer({Key? key, required this.post}) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
        color : Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _PostHeader(post :post),
                const SizedBox(height: 4.0,),
                Text(post.caption),
                post.imageUrl!=null
                    ? const SizedBox.shrink()
                    : const SizedBox(height: 6.0,),
              ],
            ),
          ),
          post.imageUrl !=null
              ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CachedNetworkImage(imageUrl: post.imageUrl,),
              )
              : const SizedBox.shrink(),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: _PostStats(post :post),
          )
        ],
      )
    );
  }
}


class _PostHeader extends StatelessWidget {
  const _PostHeader({Key? key, required this.post}) : super(key: key);
  final Post post;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Avatar(imageUrl: post.user.imageUrl,),
      const SizedBox( width: 8.0,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(post.user.name, style: const TextStyle(fontWeight: FontWeight.w600),),
            Row(children: [
              Text('${post.timeAgo} ', style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12.0,
              ),
              ),
              /*Icon(
                  Icons.public,
                color: Colors.grey[500],
                size: 12.0,            )*/

            ],)
          ],
        ),
      ),
      IconButton(
        icon: const Icon(Icons.more_horiz),
        onPressed: ()=> print('More'),
      )
    ],
    );
  }
}

class _PostStats extends StatelessWidget {
  const _PostStats({Key? key, required this.post}) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.thumb_up,size: 10.0, color: Colors.white,)
            ),
            const SizedBox(width: 2.0,),
            Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Colors.pink,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.favorite, size: 10.0, color:Colors.white,)
            ),
            const SizedBox(width: 4.0,),
            Expanded(
              child: Text('${post.likes}',style: TextStyle(
                color: Colors.grey[600],
              ),
              ),
            ),
            Text('${post.comments} Comments',style: TextStyle(
              color: Colors.grey[600],
            ),
            ),
          ],
        ),
        const Divider(),
        Row(children: [
          _PostButton(
            icon: Icon(
              MdiIcons.thumbUpOutline,
              color: Colors.grey[600],
              size:20.0,
          ),
            label:'Like',
            onTap: ()=> print('Like'),
          ),
          //const SizedBox(width: 150.0,),
          _PostButton(
            icon: Icon(
              MdiIcons.commentOutline,
              color: Colors.grey[600],
              size:20.0,
            ),
            label:'Comment',
            onTap: ()=> print('Comment'),
          ),
        ],),
      ],
    );
  }
}


class _PostButton extends StatelessWidget {
  const _PostButton({Key? key, required this.icon, required this.label, required this.onTap}) : super(key: key);
  final Icon icon;
  final String label;
  final Function onTap;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            height: 25.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              icon,
              const SizedBox(width: 4.0,),
              Text(label),
            ],)
          ),

        ),
      ),
    );

  }
}
