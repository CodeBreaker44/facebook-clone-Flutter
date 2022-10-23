import 'package:flutter/material.dart';
import 'package:hope/data/data.dart';
import 'package:hope/models/user_model.dart';
import 'package:hope/widgets/currencies_avatar.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({Key? key, required this.currentUser}) : super(key: key);
  final User currentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0,8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(children: [
        Row(
          children: [
            Avatar(imageUrl: currentUser.imageUrl,),
          const SizedBox(width: 8.0),
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(hintText: "What do you want to trade in today?"),
              ),
            )
          ],
        ),
        const Divider(height: 10.0, thickness: 0.5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(onPressed: ()=> print('trade',),
              icon: Icon(Icons.import_export),
              label: Text('Trade'),
            ),
           const VerticalDivider(width: 7.0),
           TextButton.icon(onPressed: ()=> print('trade'),
           icon: Icon(
             Icons.sell,
           ),
           label: Text('Sell',),
           ),
            const VerticalDivider(width: 7.0),
            TextButton.icon(onPressed: ()=> print('trade'),
            icon: Icon(Icons.help,),
            label: Text('help',),
            )
          ],
        )
      ],),
    );
  }
}
