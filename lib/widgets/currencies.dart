import 'package:flutter/material.dart';
import 'package:hope/models/user_model.dart';
import 'package:hope/widgets/currencies_avatar.dart';

class Currencies extends StatelessWidget {
  const Currencies({Key? key, required this.types}) : super(key: key);
  final List<User> types;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 4.0,
        ),
        itemCount: types.length,
          itemBuilder: (BuildContext context, int index){
          final User user= types[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Avatar(imageUrl: user.imageUrl,),
          );
          }
      ),
    );
  }
}
